package com.mnt.glivr;

import java.io.StringWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletRequest;

import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.runtime.RuntimeConstants;
import org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.mnt.views.FeaturedVM;
import com.mnt.views.SiteContentVM;
import com.mnt.views.SiteLogoVM;
import com.mnt.views.SliderVM;
import com.mnt.views.VehicleImage;
import com.mnt.views.VehicleVM;

@Service
public class ClientService {
	
	static int userId = -1361609913; //Hardcode for now
	@Value("${emailusername}")
	String emailusername;
	
	@Value("${emailpassword}")
	String emailpassword;
	
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<SliderVM> getSliderImages() {
		
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("select * from slider_image where user_id = '"+userId+"' order by slider_image.`row`,slider_image.col");
		List<SliderVM> sliderUrls = new ArrayList<SliderVM>();
		for(Map map : rows) {
			SliderVM vm = new SliderVM();
			vm.url = (String) map.get("path");
			vm.description = (String) map.get("description");
			sliderUrls.add(vm);
		}
		return sliderUrls;
	}
	
	public List<FeaturedVM> getFeaturedImages() {
		
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("select * from featured_image where user_id = '"+userId+"' order by featured_image.`row`,featured_image.col");
		List<FeaturedVM> featuredUrls = new ArrayList<FeaturedVM>();
		for(Map map : rows) {
			FeaturedVM vm = new FeaturedVM();
			vm.url = (String) map.get("path");
			vm.description = (String) map.get("description");;
			featuredUrls.add(vm);
		}
		return featuredUrls;
	}
	
	public Map getAllMakes() {
		List<String> vehicleListMake = new ArrayList<String>();
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("SELECT DISTINCT make FROM vehicle where user_id = '"+userId+"'");
			
		for(Map map : rows) {
		
			vehicleListMake.add((String) map.get("make"));
		}
		
		List<String> vehicleListModel = new ArrayList<String>();
		List<Map<String, Object>> rows1 = jdbcTemplate.queryForList("SELECT DISTINCT model FROM vehicle where user_id = '"+userId+"'");
		
		for(Map map : rows1) {
			vehicleListModel.add((String) map.get("model"));
		}
		
		Map<String, Object> mapAll = new HashMap<String, Object>();
		mapAll.put("make", vehicleListMake);
		mapAll.put("model", vehicleListModel);
		
		return mapAll;
	}
	
	public List<String> getAllVehicleMakes() {
		List<String> vehicleListMake = new ArrayList<String>();
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("SELECT DISTINCT make FROM vehicle where user_id = '"+userId+"'");
			
		for(Map map : rows) {
		
			vehicleListMake.add((String) map.get("make"));
		}
		return vehicleListMake;
	}
	
	
	public SiteContentVM getSitContent() {
		SiteContentVM sContentVM = new SiteContentVM();
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("SELECT * FROM site_content where user_id = '"+userId+"'");
		for(Map map : rows) {
			sContentVM.id = (Long) map.get("id");
			sContentVM.heading = (String) map.get("heading");
			
			int i = 0;
			if(sContentVM.heading != null) {
				for(i=0;i<sContentVM.heading.length();i++) {
					if(sContentVM.heading.charAt(i) == ' ') {
						sContentVM.heading1 = sContentVM.heading.substring(0, i);
						sContentVM.heading2 = sContentVM.heading.substring(i, sContentVM.heading.length()-1);
						break;
					}
				}
				if(i == sContentVM.heading.length()) {
					sContentVM.heading1 = sContentVM.heading;
					sContentVM.heading2 = "";
				}
			} else {
				sContentVM.heading1 = "";
				sContentVM.heading2 = "";
			}
				
			
			sContentVM.desc_heading = (String) map.get("desc_heading");
			if(sContentVM.desc_heading != null) {
				for(i=0;i<sContentVM.desc_heading.length();i++) {
					if(sContentVM.desc_heading.charAt(i) == ' ') {
						sContentVM.desc_heading1 = sContentVM.desc_heading.substring(0, i);
						sContentVM.desc_heading2 = sContentVM.desc_heading.substring(i, sContentVM.desc_heading.length()-1);
						break;
					}
				}
				if(i == sContentVM.desc_heading.length()) {
					sContentVM.desc_heading1 = sContentVM.desc_heading;
					sContentVM.desc_heading2 = "";
				}
			} else {
				sContentVM.desc_heading1 = "";
				sContentVM.desc_heading2 = "";
			}
			
			String descript = (String) map.get("description");
			if(descript != null) {
				String firstLetter = descript.substring(0,1);
				sContentVM.descriptionFirstChar = firstLetter;
				sContentVM.description = descript.substring(1, descript.length() - 1);
			} else {
				sContentVM.descriptionFirstChar = "";
				sContentVM.description = "";
			}
			
			sContentVM.userId = userId;
		}
		return sContentVM;
		
	}
	
	public List<String> getAllVehicleModel() {
		List<String> vehicleListModel = new ArrayList<String>();
		List<Map<String, Object>> rows1 = jdbcTemplate.queryForList("SELECT DISTINCT model FROM vehicle where user_id = '"+userId+"'");
		
		for(Map map : rows1) {
			vehicleListModel.add((String) map.get("model"));
		}
		return vehicleListModel;
	}
	
	public List<String> getAllVehicleYear() {
		List<String> vehicleListYear = new ArrayList<String>();
		List<Map<String, Object>> rows1 = jdbcTemplate.queryForList("SELECT DISTINCT year FROM vehicle where user_id = '"+userId+"'");
		
		for(Map map : rows1) {
			vehicleListYear.add((String) map.get("year"));
		}
		return vehicleListYear;
	}
	
	public Map getVehicles(int start, String year, String make, String models, String bodyStyle, String fuel, String mileage, String priceSort, String alphbet) {
		List<VehicleVM> vehicleList = new ArrayList<VehicleVM>();
		List<Map<String, Object>> rows = null;
		Integer count = 0;
		if(!priceSort.equals("")){
			rows = jdbcTemplate.queryForList("select * from vehicle where user_id = '"+userId+"' and (year = '"+year+"' or '"+year+"' = '') and (mileage < '"+mileage+"' or '"+mileage+"' = '') and (make = '"+make+"' or '"+make+"' = '') and (model = '"+models+"' or '"+models+"' = '') and (fuel = '"+fuel+"' or '"+fuel+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and status != 'Sold' ORDER BY CASE 'lowToHigh' WHEN '"+priceSort+"' THEN price END ASC, CASE 'highToLow' WHEN '"+priceSort+"' THEN price END DESC limit "+start+",16 ");
		}else if(!alphbet.equals("")){
			rows = jdbcTemplate.queryForList("select * from vehicle where user_id = '"+userId+"' and (year = '"+year+"' or '"+year+"' = '') and (mileage < '"+mileage+"' or '"+mileage+"' = '') and (make = '"+make+"' or '"+make+"' = '') and (model = '"+models+"' or '"+models+"' = '') and (fuel = '"+fuel+"' or '"+fuel+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and status != 'Sold' ORDER BY CASE 'a_z' WHEN '"+alphbet+"' THEN make END ASC, CASE 'z_a' WHEN '"+alphbet+"' THEN make END DESC limit "+start+",16 ");
		}
		count =jdbcTemplate.queryForInt("select count(*) from vehicle where user_id = '"+userId+"' and (year = '"+year+"' or '"+year+"' = '') and (mileage < '"+mileage+"' or '"+mileage+"' = '') and (make = '"+make+"' or '"+make+"' = '') and (model = '"+models+"' or '"+models+"' = '') and (fuel = '"+fuel+"' or '"+fuel+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '')");
		
		for(Map map : rows) {
			VehicleVM vm = new VehicleVM();
			vm.bodyStyle = (String) map.get("body_style");
			vm.drivetrain = (String) map.get("drivetrain");
			vm.cityMileage = (String) map.get("city_mileage");
			vm.highwayMileage = (String) map.get("highway_mileage");
			vm.engine = (String) map.get("engine");
			vm.extColor = (String) map.get("exterior_color");
			vm.intColor = (String) map.get("interior_color");
			vm.make = (String) map.get("make");
			vm.model = (String) map.get("model");
			vm.mileage = (String) map.get("mileage");
			Integer price = (Integer) map.get("price");
			vm.price = "$"+price.toString();
			vm.stock = (String) map.get("stock");
			vm.transmission = (String) map.get("transmission");
			vm.vin = (String) map.get("vin");
			vm.year = (String) map.get("year");
			
			List<Map<String, Object>> vehiclePath = jdbcTemplate.queryForList("select path from vehicle_image where user_id = '"+userId+"' and vin = '"+vm.vin+"' and default_image = true");
			if(vehiclePath.isEmpty()) {
				vm.path = "/no-image.jpg";
			} else {
				if(vehiclePath.get(0).get("path").toString() == "") {
					vm.path = "/no-image.jpg";
				} else {
					vm.path = (String) vehiclePath.get(0).get("path");
				}
			}
			
			vehicleList.add(vm);
		}
		
	
		Map<String, Object> mapData = new HashMap<String, Object>();
		mapData.put("vehicleList", vehicleList);
		mapData.put("count", count);
		
		return mapData;
	}
	public List<VehicleVM> getSimilarVehicleDetails(String vin) {
		List<VehicleVM> vehicleList = new ArrayList<VehicleVM>();
		List<Map<String, Object>> row = jdbcTemplate.queryForList("select * from vehicle where user_id = '"+userId+"' and vin= '"+vin+"' ");
		
 		List<Map<String, Object>> similarData = jdbcTemplate.queryForList("select * from vehicle where user_id = '"+userId+"' and year= '"+(String) row.get(0).get("year")+"' and make='"+(String) row.get(0).get("make")+"' and body_style = '"+(String) row.get(0).get("body_style")+"' and status != 'Sold'");
 		for(Map map : similarData) {
			VehicleVM vm = new VehicleVM();
			vm.bodyStyle = (String) map.get("body_style");
			vm.drivetrain = (String) map.get("drivetrain");
			vm.cityMileage = (String) map.get("city_mileage");
			vm.highwayMileage = (String) map.get("highway_mileage");
			vm.engine = (String) map.get("engine");
			vm.extColor = (String) map.get("exterior_color");
			vm.intColor = (String) map.get("interior_color");
			vm.make = (String) map.get("make");
			vm.mileage = (String) map.get("mileage");
			Integer price = (Integer) map.get("price");
			vm.price = "$"+price.toString();
			vm.stock = (String) map.get("stock");
			vm.transmission = (String) map.get("transmission");
			vm.vin = (String) map.get("vin");
			vm.year = (String) map.get("year");
			
			List<Map<String, Object>> vehiclePath = jdbcTemplate.queryForList("select path from vehicle_image where user_id = '"+userId+"' and vin = '"+vm.vin+"' and default_image = true");
			if(vehiclePath.isEmpty()) {
				vm.path = "/no-image.jpg";
			} else {
				if(vehiclePath.get(0).get("path").toString() == "") {
					vm.path = "/no-image.jpg";
				} else {
					vm.path = (String) vehiclePath.get(0).get("path");
				}
			}
			
			vehicleList.add(vm);
		}
 		
 		return vehicleList;
		
	}	
	public VehicleVM getVehicleDetails(String vin) {
		List<Map<String, Object>> row = jdbcTemplate.queryForList("select * from vehicle where user_id = '"+userId+"' and vin= '"+vin+"' ");
		VehicleVM vehicleVM = new VehicleVM();
		List<Map<String, Object>> videoUrl = jdbcTemplate.queryForList("select desktop_url from virtual_tour where user_id= '"+userId+"' and vin= '"+vin+"' ");
		if(videoUrl.isEmpty()) {
			vehicleVM.videoUrl = "";
		} else {
			if(videoUrl.get(0).get("desktop_url") == null) {
				vehicleVM.videoUrl = "";
			} else {
				vehicleVM.videoUrl = (String) videoUrl.get(0).get("desktop_url");
			}
		}
		
		List<Map<String, Object>> audioUrl = jdbcTemplate.queryForList("select path from vehicle_audio where user_id= '"+userId+"' and vin= '"+vin+"' ");
		if(audioUrl.isEmpty()) {
			vehicleVM.audioUrl = "";
		} else {
			vehicleVM.audioUrl = (String) audioUrl.get(0).get("path");
		}
 		
 		vehicleVM.year = (String) row.get(0).get("year");
 		vehicleVM.make = (String) row.get(0).get("make");
 		vehicleVM.model = (String) row.get(0).get("model");
 		vehicleVM.fuelType = (String) row.get(0).get("fuel");
 		vehicleVM.mileage = (String) row.get(0).get("mileage");
 		vehicleVM.bodyStyle = (String) row.get(0).get("body_style");
 		vehicleVM.doors = (String) row.get(0).get("doors");
 		vehicleVM.seats = (String) row.get(0).get("standard_seating");
 		vehicleVM.drivetrain = (String) row.get(0).get("drivetrain");
 		vehicleVM.engine = (String) row.get(0).get("engine");
 		vehicleVM.transmission = (String) row.get(0).get("transmission");
 		vehicleVM.brakes = (String) row.get(0).get("brakes");
 		vehicleVM.horsePower = (String) row.get(0).get("horse_power");
 		vehicleVM.acceleration = (String) row.get(0).get("acceleration");
 		vehicleVM.extColor = (String) row.get(0).get("exterior_color");
 		vehicleVM.intColor = (String) row.get(0).get("interior_color");
 		vehicleVM.vin = (String) row.get(0).get("vin");
 		vehicleVM.cityMileage = (String) row.get(0).get("city_mileage");
 		vehicleVM.highwayMileage = (String) row.get(0).get("highway_mileage");
 		vehicleVM.location = (String) row.get(0).get("location");
 		Integer price = (Integer) row.get(0).get("price");
 		vehicleVM.onlyPrice = price;
 		vehicleVM.price = "$"+price.toString();
 		vehicleVM.stock = (String) row.get(0).get("stock");
 		
 		vehicleVM.fuelTank = (String) row.get(0).get("fuel_tank");
 		vehicleVM.headlights = (String) row.get(0).get("headlights");
 		vehicleVM.mirrors = (String) row.get(0).get("mirrors");
 		vehicleVM.groundClearance = (String) row.get(0).get("ground_clearance");
 		vehicleVM.roof = (String) row.get(0).get("roof");
 		vehicleVM.height = (String) row.get(0).get("height");
 		vehicleVM.length = (String) row.get(0).get("length");
 		vehicleVM.width = (String) row.get(0).get("width");
 		vehicleVM.engineType = (String) row.get(0).get("engine_type");
 		vehicleVM.cylinders = (String) row.get(0).get("cylinders");
 		vehicleVM.displacement = (String) row.get(0).get("displacement");
 		vehicleVM.camType = (String) row.get(0).get("cam_type");
 		vehicleVM.valves = (String) row.get(0).get("valves");
 		vehicleVM.fuelQuality = (String) row.get(0).get("fuel_quality");
 		vehicleVM.gears = (String) row.get(0).get("gears");
 		vehicleVM.brakes = (String) row.get(0).get("brakes");
 		vehicleVM.frontBrakeDiameter = (String) row.get(0).get("front_brake_diameter");
 		vehicleVM.frontBrakeType = (String) row.get(0).get("front_brake_type");
 		vehicleVM.rearBrakeDiameter = (String) row.get(0).get("rear_brake_diameter");
 		vehicleVM.rearBrakeType = (String) row.get(0).get("rear_brake_type");
 		vehicleVM.activeHeadRestraints = (String) row.get(0).get("active_head_restrains");
 		vehicleVM.bodySideReinforcements = (String) row.get(0).get("body_side_reinforcements");
 		vehicleVM.crumpleZones = (String) row.get(0).get("crumple_zones");
 		vehicleVM.impactAbsorbingBumpers = (String) row.get(0).get("impact_absorbing_bumpers");
 		vehicleVM.impactSensors = (String) row.get(0).get("impact_sensor");
 		vehicleVM.parkingSensors = (String) row.get(0).get("parking_sensors");
 		vehicleVM.seatbelts = (String) row.get(0).get("seatbelts");
 		vehicleVM.audiSideAssist = (String) row.get(0).get("audi_side_assist");
 		vehicleVM.intColor = (String) row.get(0).get("interior_color");
 		vehicleVM.comfortFeatures = (String) row.get(0).get("comfort_features");
 		vehicleVM.powerOutlets = (String) row.get(0).get("power_outlet");
 		vehicleVM.powerSteering = (String) row.get(0).get("power_steering");
 		vehicleVM.rearViewCamera = (String) row.get(0).get("rear_view_camera");
 		vehicleVM.rearViewMonitor = (String) row.get(0).get("rear_view_monitor");
 		vehicleVM.remoteTrunkRelease = (String) row.get(0).get("remote_trunk_release");
 		vehicleVM.steeringWheel = (String) row.get(0).get("steering_wheel");
 		vehicleVM.steeringWheelControls = (String) row.get(0).get("steering_wheel_controls");
 		
 		
 		Long vehicleId = (Long)row.get(0).get("id");
 		List<Map<String, Object>> prevRecord = jdbcTemplate.queryForList("select max(id) from vehicle where id < '"+vehicleId+"' and user_id= '"+userId+"' ");
 		if(prevRecord.get(0).get("max(id)") != null) {
 		Long prevId = (Long) prevRecord.get(0).get("max(id)");
 		List<Map<String, Object>> prevRecordVin = jdbcTemplate.queryForList("select vin from vehicle where id='"+prevId+"' ");
 			vehicleVM.prevVehicle = (String) prevRecordVin.get(0).get("vin");
 		} else {
 			vehicleVM.prevVehicle = (String)row.get(0).get("vin");
 		}
 		
 		List<Map<String, Object>> nextRecord = jdbcTemplate.queryForList("select min(id) from vehicle where id > '"+vehicleId+"' and user_id= '"+userId+"' ");
 		if(nextRecord.get(0).get("min(id)") != null) {
	 		Long nextId = (Long) nextRecord.get(0).get("min(id)");
	 		List<Map<String, Object>> nextRecordVin = jdbcTemplate.queryForList("select vin from vehicle where id='"+nextId+"' ");
	 		vehicleVM.nextVehicle = (String)nextRecordVin.get(0).get("vin");
 		} else {
 			vehicleVM.nextVehicle = (String)row.get(0).get("vin");
 		}
 		List<Map<String, Object>> imagerows = jdbcTemplate.queryForList("select path,default_image,thumb_path from vehicle_image where user_id = '"+userId+"' and vin= '"+vin+"' ");
 		List<VehicleImage> imageList = new ArrayList<VehicleImage>();
 		
 		if(imagerows.isEmpty()) {
 			VehicleImage vehicleImage = new VehicleImage();
 			vehicleImage.path = "/no-image1-762x456.jpg";
 			vehicleImage.isDefault = true; 
 			vehicleImage.thumbPath = "/no-image.jpg";
 			imageList.add(vehicleImage);
 		}
 		
 		for(Map map : imagerows) {
 			VehicleImage vehicleImage = new VehicleImage();
 			vehicleImage.path = (String) map.get("path");
 			vehicleImage.isDefault = (Boolean) map.get("default_image"); 
 			vehicleImage.thumbPath = (String) map.get("thumb_path");
 			imageList.add(vehicleImage);
		}
 		
 		vehicleVM.images = imageList;
		return vehicleVM;
		
	}	
	
	
	public String getRequestMore(HttpServletRequest request, String hostUrl){
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String path = "";
		
		jdbcTemplate.update("INSERT INTO request_more_info(name, preferred_contact,email,phone,request_date,vin,user_id) VALUES('"+request.getParameter("name")+"','"+request.getParameter("preferred")+"','"+request.getParameter("email")+"','"+request.getParameter("phone")+"','"+dateFormat.format(date)+"','"+request.getParameter("vin")+"','"+userId+"')");
		
		List<Map<String, Object>> oneRow = jdbcTemplate.queryForList("select * from vehicle where vin = '"+request.getParameter("vin")+"'");
 				
		List<Map<String, Object>> vehiclePath = jdbcTemplate.queryForList("select path from vehicle_image where user_id = '"+userId+"' and vin = '"+request.getParameter("vin")+"' and default_image = true");
		if(vehiclePath.isEmpty()) {
			path = "/no-image.jpg";
		} else {
			if(vehiclePath.get(0).get("path").toString() == "") {
				path = "/no-image.jpg";
			} else {
				path = (String) vehiclePath.get(0).get("path");
			}
		}
		
		SiteLogoVM logo = new SiteLogoVM();
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("select * from site_logo where user_id = '"+userId+"'");
		
		for(Map map : rows) {
			logo.logoPath = (String) map.get("logo_image_path");
			logo.faviconPath = (String) map.get("favicon_image_path");
			logo.tabText = (String) map.get("tab_text");
		}
		
	
		
		
		return request.getParameter("vin");
		
		
		
		
		
	}
	
	
	public String getScheduleTest(HttpServletRequest request){
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();

		
		jdbcTemplate.update("INSERT INTO schedule_test(name, preferred_contact,email,phone,best_day,best_time,schedule_date,vin,user_id) VALUES('"+request.getParameter("name")+"','"+request.getParameter("preferred")+"','"+request.getParameter("email")+"','"+request.getParameter("phone")+"','"+request.getParameter("bestDay")+"','"+request.getParameter("bestTime")+"','"+dateFormat.format(date)+"','"+request.getParameter("vin")+"','"+userId+"')");
				
		return request.getParameter("vin");
		
	}
	
	public String getOtherInfo(HttpServletRequest request, String hostUrl){
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String path = "";
		
		jdbcTemplate.update("INSERT INTO other_user_info(name, email,fname,femail,date_info,vin,user_id) VALUES('"+request.getParameter("name")+"','"+request.getParameter("email")+"','"+request.getParameter("fname")+"','"+request.getParameter("femail")+"','"+dateFormat.format(date)+"','"+request.getParameter("vin")+"','"+userId+"')");
		
		
		List<Map<String, Object>> oneRow = jdbcTemplate.queryForList("select * from vehicle where vin = '"+request.getParameter("vin")+"'");
 				
		List<Map<String, Object>> vehiclePath = jdbcTemplate.queryForList("select path from vehicle_image where user_id = '"+userId+"' and vin = '"+request.getParameter("vin")+"' and default_image = true");
		if(vehiclePath.isEmpty()) {
			path = "/no-image.jpg";
		} else {
			if(vehiclePath.get(0).get("path").toString() == "") {
				path = "/no-image.jpg";
			} else {
				path = (String) vehiclePath.get(0).get("path");
			}
		}
		
		SiteLogoVM logo = new SiteLogoVM();
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("select * from site_logo where user_id = '"+userId+"'");
		
		for(Map map : rows) {
			logo.logoPath = (String) map.get("logo_image_path");
			logo.faviconPath = (String) map.get("favicon_image_path");
			logo.tabText = (String) map.get("tab_text");
		}
		
		

		
		return request.getParameter("vin");
		
	}
	
	public String getTradeInApp(HttpServletRequest request, String hostUrl){
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String optionValue = "";
		String path = "";
		int i = 0;
		
		System.out.println(request.getParameter("options"));
		if(request.getParameter("options") != null){
			String opValues[] = request.getParameterValues("options");
		
			for(String str:opValues){
				if(i == 0){
					optionValue = optionValue + str;
					i++;
				}else{
					optionValue = optionValue + "," + str;
				}
			}
		}
	
		
		jdbcTemplate.update("INSERT INTO trade_in(first_name,last_name,work_phone,phone,email,preferred_contact,trade_date,comments,year,make,model,exterior_colour,kilometres,engine,doors,transmission,drivetrain,body_rating,tire_rating,engine_rating,transmission_rating,glass_rating,interior_rating,exhaust_rating,lease_or_rental,operational_and_accurate,service_record,lienholder,holds_this_title,equipment,vehiclenew,accidents,damage,paint,salvage,option_value,vin,user_id) VALUES('"+request.getParameter("first_name")+"','"+request.getParameter("last_name")+"','"+request.getParameter("work_phone")+"','"+request.getParameter("phone")+"','"+request.getParameter("email")+"','"+request.getParameter("preferred")+"','"+dateFormat.format(date)+"','"+request.getParameter("comments")+"','"+request.getParameter("year")+"','"+request.getParameter("make")+"','"+request.getParameter("model")+"','"+request.getParameter("exterior_colour")+"','"+request.getParameter("kilometres")+"','"+request.getParameter("engine")+"'" +
				",'"+request.getParameter("doors")+"','"+request.getParameter("transmission")+"','"+request.getParameter("drivetrain")+"','"+request.getParameter("body_rating")+"','"+request.getParameter("tire_rating")+"','"+request.getParameter("engine_rating")+"','"+request.getParameter("transmission_rating")+"','"+request.getParameter("glass_rating")+"','"+request.getParameter("interior_rating")+"','"+request.getParameter("exhaust_rating")+"','"+request.getParameter("rental_return")+"','"+request.getParameter("odometer_accurate")+"','"+request.getParameter("service_records")+"','"+request.getParameter("lienholder")+"','"+request.getParameter("titleholder")+"','"+request.getParameter("equipment")+"','"+request.getParameter("vehiclenew")+"','"+request.getParameter("accidents")+"','"+request.getParameter("damage")+"','"+request.getParameter("paint")+"','"+request.getParameter("salvage")+"','"+optionValue+"','"+request.getParameter("vin")+"','"+userId+"')");
		
		
		List<Map<String, Object>> oneRow = jdbcTemplate.queryForList("select * from vehicle where vin = '"+request.getParameter("vin")+"'");
			
		List<Map<String, Object>> vehiclePath = jdbcTemplate.queryForList("select path from vehicle_image where user_id = '"+userId+"' and vin = '"+request.getParameter("vin")+"' and default_image = true");
		//List<Map<String, Object>> trade_in = jdbcTemplate.queryForList("select * from trade_in where vin = '"+request.getParameter("vin")+"'");
		
		if(vehiclePath.isEmpty()) {
			path = "/no-image.jpg";
		} else {
			if(vehiclePath.get(0).get("path").toString() == "") {
				path = "/no-image.jpg";
			} else {
				path = (String) vehiclePath.get(0).get("path");
			}
		}
		
		SiteLogoVM logo = new SiteLogoVM();
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("select * from site_logo where user_id = '"+userId+"'");
		
		for(Map map : rows) {
			logo.logoPath = (String) map.get("logo_image_path");
			logo.faviconPath = (String) map.get("favicon_image_path");
			logo.tabText = (String) map.get("tab_text");
		}
		
	
		
		return request.getParameter("vin");
		
	}
	
	public VehicleVM getVehicleInfo(HttpServletRequest request){
		
		VehicleVM vm = new VehicleVM();
		vm.setModel(request.getParameter("model"));
		vm.setMake(request.getParameter("make"));
		vm.setYear(request.getParameter("year"));
		vm.setBodyStyle(request.getParameter("bodyStyle"));
		vm.setFuelType(request.getParameter("fuelType"));
		
		return vm;
		
	}
	
	public List<VehicleVM> getRecentVehicles(){
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		List<VehicleVM> vehicleList = new ArrayList<VehicleVM>();
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DATE, -30);
		Date dateBefore30Days = cal.getTime();
		
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("select * from vehicle where user_id = '"+userId+"' and posted_date > '"+dateFormat.format(dateBefore30Days)+"' and status != 'Sold'  ORDER BY price asc");
		
		for(Map map : rows) {
			VehicleVM vm = new VehicleVM();
			vm.bodyStyle = (String) map.get("body_style");
			vm.drivetrain = (String) map.get("drivetrain");
			vm.cityMileage = (String) map.get("city_mileage");
			vm.highwayMileage = (String) map.get("highway_mileage");
			vm.engine = (String) map.get("engine");
			vm.extColor = (String) map.get("exterior_color");
			vm.intColor = (String) map.get("interior_color");
			vm.make = (String) map.get("make");
			vm.model = (String) map.get("model");
			vm.mileage = (String) map.get("mileage");
			Integer price = (Integer) map.get("price");
			vm.price = "$"+price.toString();
			vm.stock = (String) map.get("stock");
			vm.transmission = (String) map.get("transmission");
			vm.vin = (String) map.get("vin");
			vm.year = (String) map.get("year");
			
			List<Map<String, Object>> vehiclePath = jdbcTemplate.queryForList("select path from vehicle_image where user_id = '"+userId+"' and vin = '"+vm.vin+"' and default_image = true");
			if(vehiclePath.isEmpty()) {
				vm.path = "/no-image.jpg";
			} else {
				if(vehiclePath.get(0).get("path").toString() == "") {
					vm.path = "/no-image.jpg";
				} else {
					vm.path = (String) vehiclePath.get(0).get("path");
				}
			}
			
			vehicleList.add(vm);
		}
		
		return vehicleList;
		
	}
	
	public SiteLogoVM getLogoData() {
		SiteLogoVM logo = new SiteLogoVM();
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("select * from site_logo where user_id = '"+userId+"'");
		
		for(Map map : rows) {
			logo.logoPath = (String) map.get("logo_image_path");
			logo.faviconPath = (String) map.get("favicon_image_path");
			logo.tabText = (String) map.get("tab_text");
		}
		
		return logo;
	}
	
}
