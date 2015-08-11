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
	
	@RequestMapping(value = "/mobile/home", method = RequestMethod.GET)
	public String mobileHome(Locale locale, Model model) {
		
		SiteLogoVM siteLogo = clientService.getLogoData();
		SiteContentVM siteContent = clientService.getSitContent();
		List<String> vehicleListMake = clientService.getAllVehicleMakes();
		List<String> vehicleListModel = clientService.getAllVehicleModel();
		List<String> vehicleListYear = clientService.getAllVehicleYear();
		
		model.addAttribute("siteLogo",siteLogo);
		model.addAttribute("siteContent", siteContent);
		model.addAttribute("vehicleListYear", vehicleListYear);
		model.addAttribute("vehicleListMake", vehicleListMake);
		model.addAttribute("vehicleListModel", vehicleListModel);
		
		return "autolinx/mobile/mobileIndex";
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
	
	@RequestMapping(value = "/mobile/inventory", method = RequestMethod.GET)
	public String mobileInventory(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData();
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/mobile/mobileInventory";
	}
	
	@RequestMapping(value = "/aboutUs", method = RequestMethod.GET)
	public String aboutUs(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData();
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/about-us";
	}
	
	@RequestMapping(value = "/contactUs", method = RequestMethod.GET)
	public String contactUs(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData();
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/contactUs";
	}
	
	@RequestMapping(value = "/mobile/aboutUs", method = RequestMethod.GET)
	public String mobileAboutUs(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData();
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/mobile/mobileAboutUs";
	}
	
	@RequestMapping(value = "/warranty", method = RequestMethod.GET)
	public String warranty(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData();
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/warranty";
	}
	
	@RequestMapping(value = "/blog", method = RequestMethod.GET)
	public String blog(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData();
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/blog";
	}
	
	@RequestMapping(value = "/getVehicleInfo", method = RequestMethod.GET)
	@ResponseBody
	public Map getVehicleInfo(Locale locale, Model model,@RequestParam("start") Integer start,@RequestParam("year") String year,@RequestParam("make") String make,@RequestParam("model") String models,@RequestParam("bodyStyle") String bodyStyle,@RequestParam("fuel") String fuel,@RequestParam("mileage") String mileage,@RequestParam("price") String price,@RequestParam("alphbet") String alphbet) {
		
		Map vehicleList = clientService.getVehicles(start, year, make, models, bodyStyle, fuel, mileage, price, alphbet);
		
		
		return vehicleList;
	}
	
	@RequestMapping(value = "/getMobileVehicleInfo", method = RequestMethod.GET)
	@ResponseBody
	public Map getMobileVehicleInfo(Locale locale, Model model,@RequestParam("start") Integer start,@RequestParam("year") String year,@RequestParam("make") String make,@RequestParam("model") String models,@RequestParam("bodyStyle") String bodyStyle,@RequestParam("fuel") String fuel,@RequestParam("mileage") String mileage,@RequestParam("price") String price,@RequestParam("alphbet") String alphbet) {
		
		Map vehicleList = clientService.getMobileVehicles(start, year, make, models, bodyStyle, fuel, mileage, price, alphbet);
		
		
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
	
	@RequestMapping(value = "/mobile/viewDetails/{vin}", method = RequestMethod.GET)
	public String viewMobileVehicle(Locale locale, Model model,@PathVariable("vin") String vin) {
		
		VehicleVM vehicleVM = clientService.getVehicleDetails(vin);
		List<VehicleVM> similarVehicleVm = clientService.getSimilarVehicleDetails(vin);
		SiteContentVM siteContent = clientService.getSitContent();
		SiteLogoVM siteLogo = clientService.getLogoData();
		
		model.addAttribute("siteContent", siteContent);
		model.addAttribute("similarVehicle",similarVehicleVm);
		model.addAttribute("vehicle",vehicleVM);
		model.addAttribute("hostname", hostUrl);
		model.addAttribute("siteLogo",siteLogo);
		return "autolinx/mobile/mobileViewDetails";
	}
	
   @RequestMapping(value="/requestMore",method=RequestMethod.POST)
	public String requestMore(Locale locale, Model model,HttpServletRequest request) {
		
		String requestVm = clientService.getRequestMore(request, hostUrl);
		return "redirect:" + "/vehicleDetails/"+requestVm;
		
	}
   
   @RequestMapping(value="/mobile/requestMore",method=RequestMethod.POST)
	public String requestMoreMobile(Locale locale, Model model,HttpServletRequest request) {
		
		String requestVm = clientService.getRequestMore(request, hostUrl);
		return "redirect:" + "/mobile/viewDetails/"+requestVm;
		
	}
   
   @RequestMapping(value="/scheduleTest",method=RequestMethod.POST)
  	public String scheduleTest(Locale locale, Model model,HttpServletRequest request) {
  		
	   String scheduleVm = clientService.getScheduleTest(request, hostUrl);
  		return "redirect:" + "/vehicleDetails/"+scheduleVm;
  		
  	}
   
   @RequestMapping(value="/mobile/scheduleTest",method=RequestMethod.POST)
 	public String scheduleTestMobile(Locale locale, Model model,HttpServletRequest request) {
 		
	   String scheduleVm = clientService.getScheduleTest(request, hostUrl);
 		return "redirect:" + "/mobile/viewDetails/"+scheduleVm;
 		
 	}
   
   
   @RequestMapping(value="/otherInfo",method=RequestMethod.POST)
 	public String otherInfo(Locale locale, Model model,HttpServletRequest request) {
 		
	   String otherInfoVm = clientService.getOtherInfo(request, hostUrl);
 		return "redirect:" + "/vehicleDetails/"+otherInfoVm;
 		
 	}
   
   @RequestMapping(value="/mobile/otherInfo",method=RequestMethod.POST)
	public String otherInfoMobile(Locale locale, Model model,HttpServletRequest request) {
		
	   String otherInfoVm = clientService.getOtherInfo(request, hostUrl);
		return "redirect:" + "/mobile/viewDetails/"+otherInfoVm;
		
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
	
	@RequestMapping(value="/mobile/findVehicle",method=RequestMethod.POST)
	public String findVehiclemobile(Locale locale, Model model,HttpServletRequest request) {
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
		return "autolinx/mobile/mobileInventory";
	}
	
	@RequestMapping(value = "/getRecentVehicles", method = RequestMethod.GET)
	@ResponseBody
	public List<VehicleVM> getRecentVehicles(Locale locale, Model model) {
		
		List<VehicleVM> vehicleList = clientService.getRecentVehicles();
		
		return vehicleList;
	}
	
	@RequestMapping(value = "/getAllBlogs", method = RequestMethod.GET)
	@ResponseBody
	public Map getAllBlogs(Locale locale, Model model,@RequestParam("start") Integer start) {
		
		Map blogList = clientService.getBlogsOfUser(start);
		
		return blogList;
	}
	
	@RequestMapping(value = "/mobile/getMobileRecentVehicles", method = RequestMethod.GET)
	@ResponseBody
	public Map getMobileRecentVehicles(Locale locale, Model model,@RequestParam("start") Integer start,@RequestParam("year") String year,@RequestParam("alphabet") String alphabet) {
		
		Map vehicleList = clientService.getRecentMobileVehicles(start,year,alphabet);
		
		return vehicleList;
	}
	
	@RequestMapping(value = "/mobile/newArrivals", method = RequestMethod.GET)
	public String mobileNewArrivals(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData();
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/mobile/mobileNewArrivals";
	}
	
}
