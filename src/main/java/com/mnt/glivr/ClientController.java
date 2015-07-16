package com.mnt.glivr;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mnt.views.VehicleVM;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ClientController {
	
	private static final Logger logger = LoggerFactory.getLogger(ClientController.class);
	
	@Autowired
	ClientService clientService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		List<String> sliderImages = clientService.getSliderImages();
		List<String> featuredImages = clientService.getFeaturedImages();
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("sliderImages",sliderImages);
		model.addAttribute("featuredImages",featuredImages);
		
		return "autolinx/index";
	}
	
	@RequestMapping(value = "/inventory", method = RequestMethod.GET)
	public String inventory(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "autolinx/inventory";
	}
	
	@RequestMapping(value = "/getVehicleInfo", method = RequestMethod.GET)
	@ResponseBody
	public List<VehicleVM> getVehicleInfo(Locale locale, Model model,@RequestParam("start") Integer start) {
		
		List<VehicleVM> vehicleList = clientService.getVehicles(start);
		
		
		return vehicleList;
	}
	
	@RequestMapping(value = "/vehicleDetails/{vin}", method = RequestMethod.GET)
	public String viewVehicle(Locale locale, Model model,@PathVariable("vin") String vin) {
		
		VehicleVM vehicleVM = clientService.getVehicleDetails(vin);
		
		model.addAttribute("vehicle",vehicleVM);
		
		return "autolinx/vehicleDetails";
	}
	
}
