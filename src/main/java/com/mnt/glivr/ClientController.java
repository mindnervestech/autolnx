package com.mnt.glivr;

import java.io.File;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mnt.views.BrandVM;
import com.mnt.views.CharacterVM;
import com.mnt.views.ContactVM;
import com.mnt.views.FeaturedVM;
import com.mnt.views.FriendVM;
import com.mnt.views.MyProfileVM;
import com.mnt.views.RequestMore;
import com.mnt.views.ScheduleTestVM;
import com.mnt.views.SiteContentVM;
import com.mnt.views.SiteLogoVM;
import com.mnt.views.SliderVM;
import com.mnt.views.Trade_InVM;
import com.mnt.views.VehicleVM;
import com.mnt.views.pdfInfoVM;

/**
 * Handles requests for the application home page.
 */
@Controller
@PropertySource("classpath:conf/db.properties")
public class ClientController {
	
	static long locationIdGol;
	
	@Value("${hostname}")
	String hostUrl;
	@Value("${hostnameimg}")
	String hostnameimg;
	@Value("${pdfRootDir}")
	String pdfRootDir;
	
	
	private static final Logger logger = LoggerFactory.getLogger(ClientController.class);
	
	@Autowired
	ClientService clientService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request,Locale locale, Model model) {
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		
		logger.info("Welcome home! The client locale is {}.", locale);
		List<SliderVM> sliderImages = clientService.getSliderImages(locationId);
		List<FeaturedVM> featuredImages = clientService.getFeaturedImages(locationId);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		List<String> vehicleListMake = clientService.getAllVehicleMakes(locationId);
		List<String> vehicleListModel = clientService.getAllVehicleModel(locationId);
		List<String> vehicleListYear = clientService.getAllVehicleYear(locationId);
		SiteContentVM siteContent = clientService.getSitContent(locationId);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		model.addAttribute("myprofile",profile);
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
	public Long findLocation(HttpServletRequest request){
		
		String location = request.getParameter("locationId");
		Long locationId = 0L;
		if(location != null){
			locationId = clientService.getfindByLocationName(location);
			
		}else{
			locationId = 16L;
		}
		//Long locationId = clientService.getfindByLocationName(location);
		return locationId;
		
	}
	
	@RequestMapping(value = "/mobile/home", method = RequestMethod.GET)
	public String mobileHome(HttpServletRequest request, Locale locale, Model model) {
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		SiteContentVM siteContent = clientService.getSitContent(locationId);
		List<String> vehicleListMake = clientService.getAllVehicleMakes(locationId);
		List<String> vehicleListModel = clientService.getAllVehicleModel(locationId);
		List<String> vehicleListYear = clientService.getAllVehicleYear(locationId);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		model.addAttribute("myprofile",profile);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		
		
		model.addAttribute("siteLogo",siteLogo);
		model.addAttribute("siteContent", siteContent);
		model.addAttribute("vehicleListYear", vehicleListYear);
		model.addAttribute("vehicleListMake", vehicleListMake);
		model.addAttribute("vehicleListModel", vehicleListModel);
		
		return "autolinx/mobile/mobileIndex";
	}
	
	@RequestMapping(value = "/inventory", method = RequestMethod.GET)
	public String inventory(HttpServletRequest request, Locale locale, Model model) {
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/inventory";
	}
	
	@RequestMapping(value = "/mobile/inventory", method = RequestMethod.GET)
	public String mobileInventory(HttpServletRequest request ,Locale locale, Model model) {
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		String formattedDate = dateFormat.format(date);
		List<String> vehicleListYear = clientService.getAllVehicleYear(locationId);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		model.addAttribute("myprofile",profile);
		List<BrandVM> brandList = clientService.getCarBrands(locationId);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		
		model.addAttribute("vehicleListYear", vehicleListYear);
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		model.addAttribute("brandList",brandList);
		
		return "autolinx/mobile/mobileInventory";
	}
	
	@RequestMapping(value = "/getCarBrands", method = RequestMethod.GET)
	@ResponseBody
	public Map getCarBrands(Locale locale, Model model) {
		
		Long locationId = locationIdGol;
		List<CharacterVM> alphabets = clientService.getCharacters(locationId);
		Map<String,Object> map = new HashMap();
		map.put("alphabates", alphabets);
		return map;
	}
	
	@RequestMapping(value = "/aboutUs", method = RequestMethod.GET)
	public String aboutUs(HttpServletRequest request, Locale locale, Model model) {
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		String formattedDate = dateFormat.format(date);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		model.addAttribute("myprofile",profile);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/about-us";
	}
	
	@RequestMapping(value = "/contactUs", method = RequestMethod.GET)
	public String contactUs(HttpServletRequest request, Locale locale, Model model) {
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		String formattedDate = dateFormat.format(date);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		model.addAttribute("myprofile",profile);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/contactUs";
	}
	
	@RequestMapping(value = "/mobile/contactUs", method = RequestMethod.GET)
	public String mobileAboutUs(HttpServletRequest request, Locale locale, Model model) {
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		String formattedDate = dateFormat.format(date);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		model.addAttribute("myprofile",profile);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/mobile/mobileAboutUs";
	}
	
	@RequestMapping(value = "/warranty", method = RequestMethod.GET)
	public String warranty(HttpServletRequest request, Locale locale, Model model) {
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		String formattedDate = dateFormat.format(date);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		model.addAttribute("myprofile",profile);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/warranty";
	}
	
	@RequestMapping(value = "/blog", method = RequestMethod.GET)
	public String blog(HttpServletRequest request, Locale locale, Model model) {
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		String formattedDate = dateFormat.format(date);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		model.addAttribute("myprofile",profile);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/blog";
	}
	
	@RequestMapping(value = "/getVehicleInfo", method = RequestMethod.GET)
	@ResponseBody
	public Map getVehicleInfo(HttpServletRequest request, Locale locale, Model model,@RequestParam("start") Integer start,@RequestParam("year") String year,@RequestParam("make") String make,@RequestParam("model") String models,@RequestParam("bodyStyle") String bodyStyle,@RequestParam("fuel") String fuel,@RequestParam("mileage") String mileage,@RequestParam("price") String price,@RequestParam("alphbet") String alphbet,@RequestParam("vtype") String vtype) {
		Long locationId = locationIdGol;
		Map vehicleList = clientService.getVehicles(start, year, make, models, bodyStyle, fuel, mileage, price, alphbet, vtype,locationId);
		
		
		return vehicleList;
	}
	
	@RequestMapping(value = "/getMobileVehicleInfo", method = RequestMethod.GET)
	@ResponseBody
	public Map getMobileVehicleInfo(Locale locale, Model model,@RequestParam("start") Integer start,@RequestParam("year") String year,@RequestParam("make") String make,@RequestParam("model") String models,@RequestParam("bodyStyle") String bodyStyle,@RequestParam("fuel") String fuel,@RequestParam("mileage") String mileage,@RequestParam("price") String price,@RequestParam("alphbet") String alphbet) {
		Long locationId = locationIdGol;
		Map vehicleList = clientService.getMobileVehicles(start, year, make, models, bodyStyle, fuel, mileage, price, alphbet, locationId);
		
		
		return vehicleList;
	}
	
	@RequestMapping(value = "/getAllMakes", method = RequestMethod.GET)
	@ResponseBody
	public Map getAllMakes(Locale locale, Model model) {
		Long locationId = locationIdGol;
		Map vehicleList = clientService.getAllMakes(locationId);
		
		
		return vehicleList;
	}
	
	@RequestMapping(value = "/vehicleDetails/{vin}", method = RequestMethod.GET)
	public String viewVehicle(HttpServletRequest request, Locale locale, Model model,@PathVariable("vin") String vin) {
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		
		
		VehicleVM vehicleVM = clientService.getVehicleDetails(vin);
		List<VehicleVM> similarVehicleVm = clientService.getSimilarVehicleDetails(vin, locationId);
		SiteContentVM siteContent = clientService.getSitContent(locationId);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		model.addAttribute("myprofile",profile);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		
		model.addAttribute("siteContent", siteContent);
		model.addAttribute("similarVehicle",similarVehicleVm);
		model.addAttribute("vehicle",vehicleVM);
		model.addAttribute("hostname", hostUrl);
		model.addAttribute("pdfRootDir", pdfRootDir);
		model.addAttribute("pdfRootPath", hostnameimg);
		model.addAttribute("siteLogo",siteLogo);
		System.out.println("?????????????????");
		System.out.println(pdfRootDir);
		return "autolinx/vehicleDetails";
	}
	
	@RequestMapping(value = "/mobile/viewDetails/{vin}", method = RequestMethod.GET)
	public String viewMobileVehicle(HttpServletRequest request, Locale locale, Model model,@PathVariable("vin") String vin) {
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		VehicleVM vehicleVM = clientService.getVehicleDetails(vin);
		List<VehicleVM> similarVehicleVm = clientService.getSimilarVehicleDetails(vin, locationId);
		SiteContentVM siteContent = clientService.getSitContent(locationId);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		model.addAttribute("myprofile",profile);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		model.addAttribute("siteContent", siteContent);
		model.addAttribute("similarVehicle",similarVehicleVm);
		model.addAttribute("vehicle",vehicleVM);
		model.addAttribute("hostname", hostUrl);
		model.addAttribute("siteLogo",siteLogo);
		return "autolinx/mobile/mobileViewDetails";
	}
	
   @RequestMapping(value="/saveContact",method=RequestMethod.POST)
   @ResponseBody
   public void contactUs(Locale locale, Model model,HttpServletRequest request,@RequestBody ContactVM contactVM) {
	   Long locationId = locationIdGol;
		String requestVm = clientService.contactUs(contactVM, hostUrl, locationId);
		
	}
   
   
   @RequestMapping(value = "/pdfDataSave", method = RequestMethod.POST)
   @ResponseBody
	public void pdfDataSave(@RequestBody pdfInfoVM model){
	 System.out.println("yyyyyyyyyy ");
	   System.out.println(model.name);
	   System.out.println(model.pdfPath);
	    clientService.savePdafData(model);
   } 
   
   @RequestMapping(value = "/requestMore", method = RequestMethod.POST)
   @ResponseBody
	public void requestMore(@RequestBody RequestMore model){
	   Long locationId = locationIdGol;
	    clientService.getRequestMore(model, hostUrl, locationId);
   } 
   
   
   @RequestMapping(value = "/savePriceAlert", method = RequestMethod.POST)
   @ResponseBody
	public void savePriceAlert(@RequestBody RequestMore model){
	   Long locationId = locationIdGol;
	    clientService.saveAlertEmail(model, locationId);
   } 
   
   @RequestMapping(value = "/saveFollowBrand", method = RequestMethod.POST)
   @ResponseBody
	public void saveFollowBrand(@RequestBody RequestMore model){
	   Long locationId = locationIdGol;
	    clientService.saveCarModel(model, locationId);
   }
   
   @RequestMapping(value="/mobile/requestMore",method=RequestMethod.POST)
   @ResponseBody
	public void requestMoreMobile(Locale locale,@RequestBody RequestMore req) {
	   Long locationId = locationIdGol;
	   clientService.getRequestMore(req, hostUrl, locationId);
		
	}
   
    
   @RequestMapping(value = "/scheduleTest", method = RequestMethod.POST)
   @ResponseBody
	public void scheduleTest(@RequestBody ScheduleTestVM model){
	   Long locationId = locationIdGol;
	    clientService.getScheduleTest(model, hostUrl, locationId);
   } 
   
   @RequestMapping(value="/mobile/scheduleTest",method=RequestMethod.POST)
   @ResponseBody
 	public void scheduleTestMobile(Locale locale,@RequestBody ScheduleTestVM model) {
	   Long locationId = locationIdGol;
	   clientService.getScheduleTest(model, hostUrl, locationId);
 	}
   
   
   
   @RequestMapping(value = "/otherInfo", method = RequestMethod.POST)
   @ResponseBody
	public void otherInfo(@RequestBody FriendVM model){
	   Long locationId = locationIdGol;
	    clientService.getOtherInfo(model, hostUrl, locationId);
   } 
   
   @RequestMapping(value="/mobile/otherInfo",method=RequestMethod.POST)
   @ResponseBody
	public void otherInfoMobile(Locale locale, @RequestBody FriendVM model) {
	   Long locationId = locationIdGol;
	   clientService.getOtherInfo(model, hostUrl, locationId);
	}
   
     
   @RequestMapping(value = "/tradeInApp", method = RequestMethod.POST)
   @ResponseBody
	public void tradeInApp(@RequestBody Trade_InVM model){
	   Long locationId = locationIdGol;
	    clientService.getTradeInApp(model, hostUrl, locationId);
   } 
   
	
	@RequestMapping(value="/findVehicles",method=RequestMethod.GET)
	public String findVehicles(Locale locale, Model model,HttpServletRequest request) {
		
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		//Long locationId = 16L;
		
		VehicleVM vehicleVM = clientService.getVehicleInfo(request);
		VehicleVM vehicleVM1 = clientService.getVehicleInfoNotNull(request);
		List<String> vehicleListMake = clientService.getAllVehicleMakes(locationId);
		List<String> vehicleListModel = clientService.getAllVehicleModel(locationId);
		List<String> vehicleListYear = clientService.getAllVehicleYear(locationId);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		model.addAttribute("myprofile",profile);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		
		model.addAttribute("vehicleListYear", vehicleListYear);
		model.addAttribute("vehicleListMake", vehicleListMake );
		model.addAttribute("vehicleListModel", vehicleListModel );
		model.addAttribute("vehicle",vehicleVM);
		model.addAttribute("vehicle1",vehicleVM1);
		model.addAttribute("siteLogo",siteLogo);
		model.addAttribute("flag",0);
		return "autolinx/inventory";
	}
	@RequestMapping(value="/findVehicle",method=RequestMethod.POST)
	public String findVehicle(Locale locale, Model model,HttpServletRequest request) {
		
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		
		VehicleVM vehicleVM = clientService.getVehicleInfo(request);
		VehicleVM vehicleVM1 = clientService.getVehicleInfoNotNull(request);
		List<String> vehicleListMake = clientService.getAllVehicleMakes(locationId);
		List<String> vehicleListModel = clientService.getAllVehicleModel(locationId);
		List<String> vehicleListYear = clientService.getAllVehicleYear(locationId);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		model.addAttribute("myprofile",profile);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		model.addAttribute("vehicleListYear", vehicleListYear);
		model.addAttribute("vehicleListMake", vehicleListMake );
		model.addAttribute("vehicleListModel", vehicleListModel );
		model.addAttribute("vehicle",vehicleVM);
		model.addAttribute("vehicle1",vehicleVM1);
		model.addAttribute("siteLogo",siteLogo);
		model.addAttribute("flag",1);
		return "autolinx/inventory";
	}
	
	@RequestMapping(value="/mobile/findVehicle",method=RequestMethod.POST)
	public String findVehiclemobile(Locale locale, Model model,HttpServletRequest request) {
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		
		VehicleVM vehicleVM = clientService.getVehicleInfo(request);
		List<String> vehicleListMake = clientService.getAllVehicleMakes(locationId);
		List<String> vehicleListModel = clientService.getAllVehicleModel(locationId);
		List<String> vehicleListYear = clientService.getAllVehicleYear(locationId);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		
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
		Long locationId = locationIdGol;
		List<VehicleVM> vehicleList = clientService.getRecentVehicles(locationId);
		
		return vehicleList;
	}
	
	@RequestMapping(value = "/getAllBlogs", method = RequestMethod.GET)
	@ResponseBody
	public Map getAllBlogs(Locale locale, Model model,@RequestParam("start") Integer start) {
		Long locationId = locationIdGol;
		Map blogList = clientService.getBlogsOfUser(start, locationId);
		
		return blogList;
	}
	
	@RequestMapping(value = "/mobile/getMobileRecentVehicles", method = RequestMethod.GET)
	@ResponseBody
	public Map getMobileRecentVehicles(Locale locale, Model model,@RequestParam("start") Integer start,@RequestParam("year") String year,@RequestParam("alphabet") String alphabet) {
		Long locationId = locationIdGol;
		Map vehicleList = clientService.getRecentMobileVehicles(start,year,alphabet,locationId);
		
		return vehicleList;
	}
	
	@RequestMapping(value = "/mobile/newArrivals", method = RequestMethod.GET)
	public String mobileNewArrivals(HttpServletRequest request, Locale locale, Model model) {
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		String formattedDate = dateFormat.format(date);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		model.addAttribute("myprofile",profile);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		
		return "autolinx/mobile/mobileNewArrivals";
	}

	
}
