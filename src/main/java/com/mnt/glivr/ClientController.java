package com.mnt.glivr;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mnt.views.FeaturedVM;
import com.mnt.views.SiteContentVM;
import com.mnt.views.SiteLogoVM;
import com.mnt.views.SliderVM;
import com.mnt.views.VehicleVM;

/**
 * Handles requests for the application home page.
 */
@Controller
@PropertySource("classpath:conf/db.properties")
public class ClientController {
	
	@Value("${hostname}")
	String hostUrl;
	private static final Logger logger = LoggerFactory.getLogger(ClientController.class);
	
	@Autowired
	ClientService clientService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		List<SliderVM> sliderImages = clientService.getSliderImages();
		List<FeaturedVM> featuredImages = clientService.getFeaturedImages();
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		
		List<String> vehicleListMake = clientService.getAllVehicleMakes();
		List<String> vehicleListModel = clientService.getAllVehicleModel();
		List<String> vehicleListYear = clientService.getAllVehicleYear();
		SiteContentVM siteContent = clientService.getSitContent();
		SiteLogoVM siteLogo = clientService.getLogoData();
		model.addAttribute("siteContent", siteContent);
		model.addAttribute("vehicleListYear", vehicleListYear);
		model.addAttribute("vehicleListMake", vehicleListMake);
		model.addAttribute("vehicleListModel", vehicleListModel);
		model.addAttribute("serverTime", formattedDate);
		model.addAttribute("sliderImages",sliderImages);
		model.addAttribute("featuredImages",featuredImages);
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/index";
	}
	
	@RequestMapping(value = "/inventory", method = RequestMethod.GET)
	public String inventory(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData();
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/inventory";
	}
	
	@RequestMapping(value = "/getVehicleInfo", method = RequestMethod.GET)
	@ResponseBody
	public Map getVehicleInfo(Locale locale, Model model,@RequestParam("start") Integer start,@RequestParam("year") String year,@RequestParam("make") String make,@RequestParam("model") String models,@RequestParam("bodyStyle") String bodyStyle,@RequestParam("fuel") String fuel,@RequestParam("mileage") String mileage,@RequestParam("price") String price,@RequestParam("alphbet") String alphbet) {
		
		Map vehicleList = clientService.getVehicles(start, year, make, models, bodyStyle, fuel, mileage, price, alphbet);
		
		
		return vehicleList;
	}
	
	
	@RequestMapping(value = "/getAllMakes", method = RequestMethod.GET)
	@ResponseBody
	public Map getAllMakes(Locale locale, Model model) {
		
		Map vehicleList = clientService.getAllMakes();
		
		
		return vehicleList;
	}
	
	@RequestMapping(value = "/vehicleDetails/{vin}", method = RequestMethod.GET)
	public String viewVehicle(Locale locale, Model model,@PathVariable("vin") String vin) {
		
		VehicleVM vehicleVM = clientService.getVehicleDetails(vin);
		List<VehicleVM> similarVehicleVm = clientService.getSimilarVehicleDetails(vin);
		SiteContentVM siteContent = clientService.getSitContent();
		SiteLogoVM siteLogo = clientService.getLogoData();
		
		model.addAttribute("siteContent", siteContent);
		model.addAttribute("similarVehicle",similarVehicleVm);
		model.addAttribute("vehicle",vehicleVM);
		model.addAttribute("hostname", hostUrl);
		model.addAttribute("siteLogo",siteLogo);
		return "autolinx/vehicleDetails";
	}
	
   @RequestMapping(value="/requestMore",method=RequestMethod.POST)
	public String requestMore(Locale locale, Model model,HttpServletRequest request) {
		
		String requestVm = clientService.getRequestMore(request, hostUrl);
		return "redirect:" + "/vehicleDetails/"+requestVm;
		
	}
   
   @RequestMapping(value="/scheduleTest",method=RequestMethod.POST)
  	public String scheduleTest(Locale locale, Model model,HttpServletRequest request) {
  		
	   String scheduleVm = clientService.getScheduleTest(request);
  		return "redirect:" + "/vehicleDetails/"+scheduleVm;
  		
  	}
   
   
   @RequestMapping(value="/otherInfo",method=RequestMethod.POST)
 	public String otherInfo(Locale locale, Model model,HttpServletRequest request) {
 		
	   String otherInfoVm = clientService.getOtherInfo(request, hostUrl);
 		return "redirect:" + "/vehicleDetails/"+otherInfoVm;
 		
 	}
   
   @RequestMapping(value="/tradeInApp",method=RequestMethod.POST)
 	public String tradeInApp(Locale locale, Model model,HttpServletRequest request) {
 		
	   String scheduleVm = clientService.getTradeInApp(request, hostUrl);
	   
	   return "redirect:" + "/vehicleDetails/"+request.getParameter("vin");
 		
 	}
   
   
	
	@RequestMapping(value="/findVehicles",method=RequestMethod.GET)
	public String findVehicles(Locale locale, Model model,HttpServletRequest request) {
		VehicleVM vehicleVM = clientService.getVehicleInfo(request);
		List<String> vehicleListMake = clientService.getAllVehicleMakes();
		List<String> vehicleListModel = clientService.getAllVehicleModel();
		List<String> vehicleListYear = clientService.getAllVehicleYear();
		SiteLogoVM siteLogo = clientService.getLogoData();
		
		model.addAttribute("vehicleListYear", vehicleListYear);
		model.addAttribute("vehicleListMake", vehicleListMake );
		model.addAttribute("vehicleListModel", vehicleListModel );
		model.addAttribute("vehicle",vehicleVM);
		model.addAttribute("siteLogo",siteLogo);
		return "autolinx/inventory";
	}
	@RequestMapping(value="/findVehicle",method=RequestMethod.POST)
	public String findVehicle(Locale locale, Model model,HttpServletRequest request) {
		VehicleVM vehicleVM = clientService.getVehicleInfo(request);
		List<String> vehicleListMake = clientService.getAllVehicleMakes();
		List<String> vehicleListModel = clientService.getAllVehicleModel();
		List<String> vehicleListYear = clientService.getAllVehicleYear();
		SiteLogoVM siteLogo = clientService.getLogoData();
		
		model.addAttribute("vehicleListYear", vehicleListYear);
		model.addAttribute("vehicleListMake", vehicleListMake );
		model.addAttribute("vehicleListModel", vehicleListModel );
		model.addAttribute("vehicle",vehicleVM);
		model.addAttribute("siteLogo",siteLogo);
		return "autolinx/inventory";
	}
	
	
	@RequestMapping(value = "/getRecentVehicles", method = RequestMethod.GET)
	@ResponseBody
	public List<VehicleVM> getRecentVehicles(Locale locale, Model model) {
		
		List<VehicleVM> vehicleList = clientService.getRecentVehicles();
		
		return vehicleList;
	}
		
}
