package com.mnt.glivr;

import java.io.File;
import java.text.DateFormat;
import java.util.ArrayList;
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

import com.mnt.views.AboutUsVM;
import com.mnt.views.BrandVM;
import com.mnt.views.CharacterVM;
import com.mnt.views.ContactVM;
import com.mnt.views.CountVM;
import com.mnt.views.FeaturedVM;
import com.mnt.views.FriendVM;
import com.mnt.views.HoursOperationVM;
import com.mnt.views.InventoryDataVM;
import com.mnt.views.MyProfileVM;
import com.mnt.views.RequestMore;
import com.mnt.views.ScheduleTestVM;
import com.mnt.views.SiteContentVM;
import com.mnt.views.SiteLogoVM;
import com.mnt.views.SliderVM;
import com.mnt.views.TestimonialsVM;
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
		List<TestimonialsVM> testmonial = clientService.getAllTestimoniale(locationId);
		SiteContentVM siteContent = clientService.getSitContent(locationId);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		List<VehicleVM> vehicleList = clientService.getRecentVehicles(locationId);
		String ph =clientService.getPhoneno(locationId);
		AboutUsVM warHeader=clientService.getWarrantyHeader(locationId);
		model.addAttribute("warHeader",warHeader);
		List<HoursOperationVM> saleList = clientService.getHoursForSales();
		List<HoursOperationVM> serviceList = clientService.getHoursForService();
		List<HoursOperationVM> partList = clientService.getHoursForParts();
		model.addAttribute("saleList2",partList);
		model.addAttribute("saleList",saleList);
		model.addAttribute("saleList1",serviceList);
		System.out.println("inside index serviceList");
		Integer newCount = clientService.getVehicleInfoNewUsed("a_z","New",locationId);
		Integer usedCount = clientService.getVehicleInfoNewUsed("a_z","Used",locationId);
		Integer comingSoonCount = clientService.getVehicleInfoNewUsed("a_z",locationId);
		model.addAttribute("comingSoonCount",comingSoonCount);
		model.addAttribute("newCount",newCount);
		model.addAttribute("usedCount",usedCount);
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
		model.addAttribute("recentVehicles",vehicleList);
		model.addAttribute("hostnameimg",hostnameimg);
		model.addAttribute("testimonial",testmonial);
		
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
		List<SliderVM> sliderImages = clientService.getSliderImages(locationId);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		model.addAttribute("myprofile",profile);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		
		
		model.addAttribute("siteLogo",siteLogo);
		model.addAttribute("sliderImages",sliderImages);
		model.addAttribute("siteContent", siteContent);
		model.addAttribute("vehicleListYear", vehicleListYear);
		model.addAttribute("vehicleListMake", vehicleListMake);
		model.addAttribute("vehicleListModel", vehicleListModel);
		model.addAttribute("hostnameimg",hostnameimg);
		
		return "autolinx/mobile/mobileIndex";
	}
	
	@RequestMapping(value = "/compare2", method = RequestMethod.GET)
	public String compare2(HttpServletRequest request,Locale locale, Model model) {
		Long locationId = findLocation(request);
		List<String> vinList = new ArrayList<String>();
		
		if(request.getParameter("1") != null){
			vinList.add(request.getParameter("1"));
		}
		if(request.getParameter("2") != null){
			vinList.add(request.getParameter("2"));
		}
		if(request.getParameter("3") != null){
			vinList.add(request.getParameter("3"));
		}
		if(request.getParameter("4") != null){
			vinList.add(request.getParameter("4"));
		}
		int i=0;
		for(String vin:vinList){
			i++;
		}
		
		MyProfileVM profile = clientService.getProfileModel(locationId);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		List<VehicleVM> vehicleList = clientService.getVehiclesComparison(vinList, locationId);
		AboutUsVM compareHeader = clientService.getCompareHeader(locationId);
		AboutUsVM warHeader=clientService.getWarrantyHeader(locationId);
		model.addAttribute("warHeader",warHeader);
		model.addAttribute("vehicles",vehicleList);
		model.addAttribute("siteLogo",siteLogo);
		model.addAttribute("myprofile",profile);
		model.addAttribute("hostnameimg",hostnameimg);
		model.addAttribute("compareHeader",compareHeader);
		
		if(i >= 4){
			return "autolinx/inventory4comparison";
		}else if(i >= 3){
			return "autolinx/inventory3comparison";
		}else if(i >= 2){
			return "autolinx/inventory2comparison";
		}
		return null;
	}
	
	
	
	
	@RequestMapping(value = "/inventory", method = RequestMethod.GET)
	public String inventory(HttpServletRequest request, Locale locale, Model model) {
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		String formattedDate = dateFormat.format(date);
		Integer newCount = clientService.getVehicleInfoNewUsed("a_z","New",locationId);
		Integer usedCount = clientService.getVehicleInfoNewUsed("a_z","Used",locationId);
		Integer comingSoonCount = clientService.getVehicleInfoNewUsed("a_z",locationId);
		
		model.addAttribute("comingSoonCount",comingSoonCount);
		model.addAttribute("newCount",newCount);
		model.addAttribute("usedCount",usedCount);
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		model.addAttribute("hostnameimg",hostnameimg);
		InventoryDataVM inDataVM = clientService.getVehicleInventory(locationId,"New");
		model.addAttribute("inventoryData",inDataVM);
		
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
		model.addAttribute("hostnameimg",hostnameimg);
		
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
		AboutUsVM aUsVM = clientService.getAboutUsData(locationId);
		List<CountVM> countCar = clientService.getcarCount(locationId);
		
		
		int start = 0;
		Map blogList = clientService.getBlogsOfUser1(start, locationId);
		List<TestimonialsVM> testmonial = clientService.getAllTestimoniale(locationId);
		AboutUsVM getAboutUsHeader=clientService.getAboutUsHeader(locationId);
		model.addAttribute("getAboutUsHeader",getAboutUsHeader);
		AboutUsVM warHeader=clientService.getWarrantyHeader(locationId);
		model.addAttribute("warHeader",warHeader);
		String headerTitle=getAboutUsHeader.headerTitle;
		String subtitle=getAboutUsHeader.subTitle;
		model.addAttribute("myprofile",profile);
		model.addAttribute("subtitle",subtitle);
		model.addAttribute("headerTitle",headerTitle);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		Integer newCount = clientService.getVehicleInfoNewUsed("a_z","New",locationId);
		Integer usedCount = clientService.getVehicleInfoNewUsed("a_z","Used",locationId);
		model.addAttribute("newCount",newCount);
		model.addAttribute("usedCount",usedCount);
		Integer comingSoonCount = clientService.getVehicleInfoNewUsed("a_z",locationId);
		model.addAttribute("comingSoonCount",comingSoonCount);
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		model.addAttribute("hostnameimg",hostnameimg);
		model.addAttribute("aboutUsVM",aUsVM);
		model.addAttribute("testimonial",testmonial);
		model.addAttribute("blogLists",blogList);
		model.addAttribute("countCar",countCar);
		
		
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
		AboutUsVM contactHeader=clientService.getContactUsHeader(locationId);
		model.addAttribute("contactHeader",contactHeader);
		List<HoursOperationVM> saleList = clientService.getHoursForSales();
		List<HoursOperationVM> serviceList = clientService.getHoursForService();
		List<HoursOperationVM> partList = clientService.getHoursForParts();
		AboutUsVM warHeader=clientService.getWarrantyHeader(locationId);
		model.addAttribute("warHeader",warHeader);
		model.addAttribute("saleList2",partList);
		model.addAttribute("saleList",saleList);
		model.addAttribute("saleList1",serviceList);
		Integer newCount = clientService.getVehicleInfoNewUsed("a_z","New",locationId);
		Integer usedCount = clientService.getVehicleInfoNewUsed("a_z","Used",locationId);
		Integer comingSoonCount = clientService.getVehicleInfoNewUsed("a_z",locationId);
		model.addAttribute("comingSoonCount",comingSoonCount);
		model.addAttribute("newCount",newCount);
		model.addAttribute("usedCount",usedCount);
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		model.addAttribute("hostnameimg",hostnameimg);
		
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
		model.addAttribute("hostnameimg",hostnameimg);
		
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
		model.addAttribute("hostnameimg",hostnameimg);
		Integer newCount = clientService.getVehicleInfoNewUsed("a_z","New",locationId);
		Integer usedCount = clientService.getVehicleInfoNewUsed("a_z","Used",locationId);
		Integer comingSoonCount = clientService.getVehicleInfoNewUsed("a_z",locationId);
		AboutUsVM warHeader=clientService.getWarrantyHeader(locationId);
		model.addAttribute("warHeader",warHeader);
		model.addAttribute("comingSoonCount",comingSoonCount);
		model.addAttribute("newCount",newCount);
		model.addAttribute("usedCount",usedCount);
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
		model.addAttribute("hostnameimg",hostnameimg);
		AboutUsVM blogHeader=clientService.getBlogHeader(locationId);
		AboutUsVM warHeader=clientService.getWarrantyHeader(locationId);
		model.addAttribute("warHeader",warHeader);
		model.addAttribute("blogHeader",blogHeader);
		System.out.println(">>>>"+blogHeader.headerTitle);
		Integer newCount = clientService.getVehicleInfoNewUsed("a_z","New",locationId);
		Integer usedCount = clientService.getVehicleInfoNewUsed("a_z","Used",locationId);
		Integer comingSoonCount = clientService.getVehicleInfoNewUsed("a_z",locationId);
		model.addAttribute("comingSoonCount",comingSoonCount);
		model.addAttribute("newCount",newCount);
		model.addAttribute("usedCount",usedCount);
		return "autolinx/blog";
	}
	
	@RequestMapping(value = "/getAllModelByMake", method = RequestMethod.GET)
	@ResponseBody
	public List<String> getAllModelByMake(HttpServletRequest request, Locale locale, Model model,@RequestParam("make") String make) {
		Long locationId = locationIdGol;
		List<String> modelList = clientService.getAllModelByMake(make,locationId);
		return modelList;
	}
	@RequestMapping(value = "/getAllYearByModel", method = RequestMethod.GET)
	@ResponseBody
	public List<String> getAllYearByModel(HttpServletRequest request, Locale locale, Model model,@RequestParam("vtype") String vtype,@RequestParam("make") String make,@RequestParam("year") String year,@RequestParam("fuel") String fuel,@RequestParam("bodyStyle") String bodyStyle,@RequestParam("category") String category) {
		Long locationId = locationIdGol;
		List<String> modelList = clientService.getAllYearByModel(vtype,make,year,fuel,bodyStyle,category,locationId);
		return modelList;
	}
	@RequestMapping(value = "/getAllFuelTypeYear", method = RequestMethod.GET)
	@ResponseBody
	public List<String> getAllFuelTypeYear(HttpServletRequest request, Locale locale, Model model,@RequestParam("vtype") String vtype,@RequestParam("make") String make,@RequestParam("year") String year,@RequestParam("fuel") String fuel,@RequestParam("bodyStyle") String bodyStyle,@RequestParam("category") String category) {
		Long locationId = locationIdGol;
		List<String> modelList = clientService.getAllFuelTypeYear(vtype,make,year,fuel,bodyStyle,category,locationId);
		return modelList;
	}
	@RequestMapping(value = "/getAllBodyStyleByFuelType", method = RequestMethod.GET)
	@ResponseBody
	public List<String> getAllBodyStyleByFuelType(HttpServletRequest request, Locale locale, Model model,@RequestParam("vtype") String vtype,@RequestParam("make") String make,@RequestParam("year") String year,@RequestParam("fuel") String fuel,@RequestParam("bodyStyle") String bodyStyle,@RequestParam("category") String category) {
		Long locationId = locationIdGol;
		List<String> modelList = clientService.getAllBodyStyleByFuelType(vtype,make,year,fuel,bodyStyle,category,locationId);
		return modelList;
	}
	@RequestMapping(value = "/getAllCategory", method = RequestMethod.GET)
	@ResponseBody
	public List<String> getAllCategory(HttpServletRequest request, Locale locale, Model model,@RequestParam("vtype") String vtype,@RequestParam("make") String make,@RequestParam("year") String year,@RequestParam("fuel") String fuel,@RequestParam("bodyStyle") String bodyStyle,@RequestParam("category") String category) {
		Long locationId = locationIdGol;
		List<String> modelList = clientService.getAllCategory(vtype,make,year,fuel,bodyStyle,category,locationId);
		return modelList;
	}
	@RequestMapping(value = "/getVehicleInfo", method = RequestMethod.GET)
	@ResponseBody
	public Map getVehicleInfo(HttpServletRequest request, Locale locale, Model model,@RequestParam("start") Integer start,@RequestParam("year") String year,@RequestParam("make") String make,@RequestParam("model") String models,@RequestParam("bodyStyle") String bodyStyle,@RequestParam("fuel") String fuel,@RequestParam("mileage") String mileage,@RequestParam("price") String price,@RequestParam("alphbet") String alphbet,@RequestParam("vtype") String vtype,@RequestParam("vehicleType") String vehicleType) {
		Long locationId = locationIdGol;
		Map vehicleList = clientService.getVehicles(start, year, make, models, bodyStyle, fuel, mileage, price, alphbet, vtype,vehicleType,locationId);
		return vehicleList;
	}
	
	@RequestMapping(value = "/getVehicleInfoNewUsed", method = RequestMethod.GET)
	@ResponseBody
	public Integer getVehicleInfoNewUsed(HttpServletRequest request, Locale locale, Model model,@RequestParam("alphbet") String alphbet,@RequestParam("type") String type) {
		Long locationId = locationIdGol;
		Integer count = clientService.getVehicleInfoNewUsed(alphbet,type,locationId);
		return count;
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
	public Map getAllMakes(Locale locale, Model model,@RequestParam("vtype") String vtype,@RequestParam("make") String make,@RequestParam("year") String year,@RequestParam("fuel") String fuel,@RequestParam("bodyStyle") String bodyStyle,@RequestParam("category") String category) {
		Long locationId = locationIdGol;
		Map vehicleList = clientService.getAllMakes(vtype,make,year,fuel,bodyStyle,category,locationId);
		return vehicleList;
	}
	
	@RequestMapping(value = "/getAllMake", method = RequestMethod.GET)
	@ResponseBody
	public Map getAllMake(Locale locale, Model model) {
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
		AboutUsVM warHeader=clientService.getWarrantyHeader(locationId);
		AboutUsVM vehHeader=clientService.getvehicleHeader(locationId,vin);
		
		model.addAttribute("vehHeader",vehHeader);
		model.addAttribute("warHeader",warHeader);
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
		model.addAttribute("hostnameimg",hostnameimg);
		System.out.println(pdfRootDir);
		Integer newCount = clientService.getVehicleInfoNewUsed("a_z","New",locationId);
		Integer usedCount = clientService.getVehicleInfoNewUsed("a_z","Used",locationId);
		Integer comingSoonCount = clientService.getVehicleInfoNewUsed("a_z",locationId);
		model.addAttribute("comingSoonCount",comingSoonCount);
		model.addAttribute("newCount",newCount);
		model.addAttribute("usedCount",usedCount);
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
		model.addAttribute("hostnameimg",hostnameimg);
		
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
   
   @RequestMapping(value="/findVehicles/{type}",method=RequestMethod.GET)
	public String findVehiclesType(Locale locale, Model model,HttpServletRequest request, @PathVariable("type") String type) {
		System.out.println(type);
		Long locationId = findLocation(request);
		locationIdGol = locationId;
		//Long locationId = 16L;
		
		VehicleVM vehicleVM = clientService.getVehicleInfo(request);
		VehicleVM vehicleVM1 = clientService.getVehicleInfoNotNull(request);
		List<String> vehicleListMake = clientService.getAllVehicleMakes(locationId);
		List<String> vehicleListModel = clientService.getAllVehicleModel(locationId);
		List<String> vehicleListYear = clientService.getAllVehicleYear(locationId);
		List<String> vehicleListFuel = clientService.getAllVehicleFuel(locationId);
		List<String> vehicleListBodyStyle = clientService.getAllVehicleBodyStyle(locationId);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		InventoryDataVM inDataVM = clientService.getVehicleInventory(locationId,type);
		AboutUsVM compareHeader = clientService.getCompareHeader(locationId);
		AboutUsVM warHeader=clientService.getWarrantyHeader(locationId);
		model.addAttribute("warHeader",warHeader);
		model.addAttribute("compareHeader",compareHeader);
		model.addAttribute("inventoryData",inDataVM);
		model.addAttribute("myprofile",profile);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		model.addAttribute("type", type);
		model.addAttribute("vehicleListYear", vehicleListYear);
		model.addAttribute("vehicleListMake", vehicleListMake );
		model.addAttribute("vehicleListModel", vehicleListModel );
		model.addAttribute("vehicleListFuel", vehicleListFuel);
		model.addAttribute("vehicleListBodyStyle", vehicleListBodyStyle);
		model.addAttribute("vehicle",vehicleVM);
		model.addAttribute("vehicle1",vehicleVM1);
		model.addAttribute("siteLogo",siteLogo);
		model.addAttribute("flag",0);
		model.addAttribute("hostnameimg",hostnameimg);
		Integer newCount = clientService.getVehicleInfoNewUsed("a_z","New",locationId);
		Integer usedCount = clientService.getVehicleInfoNewUsed("a_z","Used",locationId);
		Integer comingSoonCount = clientService.getVehicleInfoNewUsed("a_z",locationId);
		model.addAttribute("newCount",newCount);
		model.addAttribute("usedCount",usedCount);
		model.addAttribute("comingSoonCount",comingSoonCount);
		return "autolinx/inventory";
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
		List<String> vehicleListFuel = clientService.getAllVehicleFuel(locationId);
		List<String> vehicleListBodyStyle = clientService.getAllVehicleBodyStyle(locationId);
		SiteLogoVM siteLogo = clientService.getLogoData(locationId);
		MyProfileVM profile = clientService.getProfileModel(locationId);
		model.addAttribute("myprofile",profile);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		AboutUsVM compareHeader = clientService.getCompareHeader(locationId);
		AboutUsVM warHeader=clientService.getWarrantyHeader(locationId);
		model.addAttribute("warHeader",warHeader);
		model.addAttribute("compareHeader",compareHeader);
		model.addAttribute("vehicleListYear", vehicleListYear);
		model.addAttribute("vehicleListMake", vehicleListMake );
		model.addAttribute("vehicleListModel", vehicleListModel );
		model.addAttribute("vehicleListFuel", vehicleListFuel);
		model.addAttribute("vehicleListBodyStyle", vehicleListBodyStyle);
		model.addAttribute("vehicle",vehicleVM);
		model.addAttribute("vehicle1",vehicleVM1);
		model.addAttribute("siteLogo",siteLogo);
		model.addAttribute("flag",0);
		model.addAttribute("hostnameimg",hostnameimg);
		Integer newCount = clientService.getVehicleInfoNewUsed("a_z","New",locationId);
		Integer usedCount = clientService.getVehicleInfoNewUsed("a_z","Used",locationId);
		Integer comingSoonCount = clientService.getVehicleInfoNewUsed("a_z",locationId);
		model.addAttribute("comingSoonCount",comingSoonCount);
		model.addAttribute("newCount",newCount);
		model.addAttribute("usedCount",usedCount);
		
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
		AboutUsVM compareHeader = clientService.getCompareHeader(locationId);
		AboutUsVM warHeader=clientService.getWarrantyHeader(locationId);
		model.addAttribute("warHeader",warHeader);
		model.addAttribute("compareHeader",compareHeader);
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
		model.addAttribute("hostnameimg",hostnameimg);
		Integer newCount = clientService.getVehicleInfoNewUsed("a_z","New",locationId);
		Integer usedCount = clientService.getVehicleInfoNewUsed("a_z","Used",locationId);
		Integer comingSoonCount = clientService.getVehicleInfoNewUsed("a_z",locationId);
		model.addAttribute("comingSoonCount",comingSoonCount);
		model.addAttribute("newCount",newCount);
		model.addAttribute("usedCount",usedCount);
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
		AboutUsVM compareHeader = clientService.getCompareHeader(locationId);
		model.addAttribute("compareHeader",compareHeader);
		AboutUsVM warHeader=clientService.getWarrantyHeader(locationId);
		model.addAttribute("warHeader",warHeader);
		model.addAttribute("vehicleListYear", vehicleListYear);
		model.addAttribute("vehicleListMake", vehicleListMake );
		model.addAttribute("vehicleListModel", vehicleListModel );
		model.addAttribute("vehicle",vehicleVM);
		model.addAttribute("siteLogo",siteLogo);
		model.addAttribute("hostnameimg",hostnameimg);
		
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
	
	@RequestMapping(value = "/mobile/getMobileRecentVehiclesByMake", method = RequestMethod.GET)
	@ResponseBody
	public Map getMobileRecentVehiclesByMake(Locale locale, Model model,@RequestParam("start") Integer start,@RequestParam("year") String year,@RequestParam("alphabet") String alphabet,@RequestParam("make") String make) {
		Long locationId = locationIdGol;
		Map vehicleList = clientService.getRecentMobileVehiclesByMake(start,year,alphabet,make,locationId);
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
		List<String> vehicleListYear = clientService.getAllVehicleYear(locationId);
		List<BrandVM> brandList = clientService.getCarBrands(locationId);
		model.addAttribute("myprofile",profile);
		String ph =clientService.getPhoneno(locationId);
		model.addAttribute("myphone",ph);
		model.addAttribute("vehicleListYear", vehicleListYear);
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("siteLogo",siteLogo);
		model.addAttribute("brandList",brandList);
		model.addAttribute("hostnameimg",hostnameimg);
		
		return "autolinx/mobile/mobileNewArrivals";
	}

	
}
