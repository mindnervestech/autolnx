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

import com.mnt.views.BlogVM;
import com.mnt.views.ContactVM;
import com.mnt.views.FeaturedVM;
import com.mnt.views.SiteContentVM;
import com.mnt.views.SiteLogoVM;
import com.mnt.views.SliderVM;
import com.mnt.views.VehicleImage;
import com.mnt.views.VehicleVM;

@Service
public class ClientService {
	
	static int userId = -1361609913; //Hardcode for now 336920057
	@Value("${emailusername}")
	String emailusername;
	
	@Value("${emailpassword}")
	String emailpassword;
	
	@Value("${hostnameimg}")
	String hostnameimg;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<SliderVM> getSliderImages() {
		
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("select * from slider_image where user_id = '"+userId+"' order by slider_image.`row`,slider_image.col");
		List<SliderVM> sliderUrls = new ArrayList<SliderVM>();
		List<Map<String, Object>> descriptionRows = jdbcTemplate.queryForList("select description from slider_image where user_id = '"+userId+"'");
		int count = 0;
		for(Map map : rows) {
			SliderVM vm = new SliderVM();
			vm.url = (String) map.get("path");
			vm.description = (String) map.get("description");
			vm.link = (String) map.get("link");
			
			if(count == 0) {
				String firstDesc = "";
				if(descriptionRows.size() >= 1) {
					firstDesc = (String) descriptionRows.get(0).get("description");
					if(firstDesc != null) {
						if(firstDesc.contains(" ")) {
							
							String image1[] = firstDesc.split(" ");
							if(image1.length >= 1) {
								vm.slider1 = image1[0];
							}
							if(image1.length >= 2) {
								vm.slider2 = image1[1];
							}
							if(image1.length >= 3) {
								vm.slider3 = image1[2];
							}
							if(image1.length >= 4) {
								vm.slider4 = image1[3];
							}
							if(image1.length >= 5) {
								vm.slider5 = image1[4];
							}
							if(image1.length >= 6) {
								vm.slider6 = image1[5];
							}
							if(image1.length >= 7) {
								vm.slider7 = image1[6];
							}
							if(image1.length >= 8) {
								vm.slider8 = image1[7];
							}
							if(image1.length >= 9) {
								vm.slider9 = image1[8];
							}
							if(image1.length >= 10) {
								vm.slider10 = image1[9];
							}
							if(image1.length >= 11) {
								vm.slider11 = image1[10];
							}
						} else {
							vm.slider11 = firstDesc;
						}
					}
				}
			}
			
			if(count == 1) {
				String secondDesc = "";
				if(descriptionRows.size() >= 2) {
					secondDesc = (String) descriptionRows.get(1).get("description");
					if(secondDesc != null) {
						if(secondDesc.contains(" ")) {
							String image2[] = secondDesc.split(" ");
							
							if(image2.length >= 1) {
								vm.slider21 = image2[0];
							}
							if(image2.length >= 2) {
								vm.slider22 = image2[1];
							}
							if(image2.length >= 3) {
								vm.slider23 = image2[2];
							}
							if(image2.length >= 4) {
								vm.slider24 = image2[3];
							}
							if(image2.length >= 5) {
								vm.slider25 = image2[4];
							}
							if(image2.length >= 6) {
								vm.slider26 = image2[5];
							}
							if(image2.length >= 7) {
								vm.slider27 = image2[6];
							}
							if(image2.length >= 8) {
								vm.slider28 = image2[7];
							}
							if(image2.length >= 9) {
								vm.slider29 = image2[8];
							}
							if(image2.length >= 10) {
								vm.slider30 = image2[9];
							}
							if(image2.length >= 11) {
								vm.slider211 = image2[10];
							}
							if(image2.length >= 12) {
								vm.slider212 = image2[11];
							}
						} else {
							vm.slider21 = secondDesc;
						}
					}
				}
			}
			
			if(count == 2) {
				String thirdDesc = "";
				if(descriptionRows.size() >= 3) {
					thirdDesc = (String) descriptionRows.get(2).get("description");
					if(thirdDesc != null) {
						if(thirdDesc.contains(" ")) {
							String image3[] = thirdDesc.split(" ");
							
							if(image3.length >= 1) {
								vm.slider31 = image3[0];
							}
							if(image3.length >= 2) {
								vm.slider32 = image3[1];
							}
							if(image3.length >= 3) {
								vm.slider33 = image3[2];
							}
						} else {
							vm.slider31 = thirdDesc;
						}
					}
				}
			}
			
			sliderUrls.add(vm);
			count++;
		}
		return sliderUrls;
	}
	
	public List<FeaturedVM> getFeaturedImages() {
		
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("select * from featured_image where user_id = '"+userId+"' order by featured_image.`row`,featured_image.col");
		List<FeaturedVM> featuredUrls = new ArrayList<FeaturedVM>();
		for(Map map : rows) {
			FeaturedVM vm = new FeaturedVM();
			vm.url = (String) map.get("path");
			vm.description = (String) map.get("description");
			vm.link = (String) map.get("link");
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
						sContentVM.heading2 = sContentVM.heading.substring(i, sContentVM.heading.length());
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
						sContentVM.desc_heading2 = sContentVM.desc_heading.substring(i, sContentVM.desc_heading.length());
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
				sContentVM.description = descript.substring(1, descript.length());
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
			count =jdbcTemplate.queryForInt("select count(*) from vehicle where user_id = '"+userId+"' and (year = '"+year+"' or '"+year+"' = '') and (mileage < '"+mileage+"' or '"+mileage+"' = '') and (make = '"+make+"' or '"+make+"' = '') and (model = '"+models+"' or '"+models+"' = '') and (fuel = '"+fuel+"' or '"+fuel+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and status != 'Sold'");
		}else if(!alphbet.equals("")){
			rows = jdbcTemplate.queryForList("select * from vehicle where user_id = '"+userId+"' and (year = '"+year+"' or '"+year+"' = '') and (mileage < '"+mileage+"' or '"+mileage+"' = '') and (make = '"+make+"' or '"+make+"' = '') and (model = '"+models+"' or '"+models+"' = '') and (fuel = '"+fuel+"' or '"+fuel+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and status != 'Sold' ORDER BY CASE 'a_z' WHEN '"+alphbet+"' THEN make END ASC, CASE 'z_a' WHEN '"+alphbet+"' THEN make END DESC limit "+start+",16 ");
			count =jdbcTemplate.queryForInt("select count(*) from vehicle where user_id = '"+userId+"' and (year = '"+year+"' or '"+year+"' = '') and (mileage < '"+mileage+"' or '"+mileage+"' = '') and (make = '"+make+"' or '"+make+"' = '') and (model = '"+models+"' or '"+models+"' = '') and (fuel = '"+fuel+"' or '"+fuel+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and status != 'Sold'");
		}
		
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
	
	public Map getMobileVehicles(int start, String year, String make, String models, String bodyStyle, String fuel, String mileage, String priceSort, String alphbet) {
		List<VehicleVM> vehicleList = new ArrayList<VehicleVM>();
		List<Map<String, Object>> rows = null;
		Integer count = 0;
		if(!priceSort.equals("")){
			rows = jdbcTemplate.queryForList("select * from vehicle where user_id = '"+userId+"' and (year = '"+year+"' or '"+year+"' = '') and (mileage < '"+mileage+"' or '"+mileage+"' = '') and (make = '"+make+"' or '"+make+"' = '') and (model = '"+models+"' or '"+models+"' = '') and (fuel = '"+fuel+"' or '"+fuel+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and status != 'Sold' ORDER BY CASE 'lowToHigh' WHEN '"+priceSort+"' THEN price END ASC, CASE 'highToLow' WHEN '"+priceSort+"' THEN price END DESC limit "+start+",16 ");
			count =jdbcTemplate.queryForInt("select count(*) from vehicle where user_id = '"+userId+"' and (year = '"+year+"' or '"+year+"' = '') and (mileage < '"+mileage+"' or '"+mileage+"' = '') and (make = '"+make+"' or '"+make+"' = '') and (model = '"+models+"' or '"+models+"' = '') and (fuel = '"+fuel+"' or '"+fuel+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and status != 'Sold'");
		}else if(!alphbet.equals("")){
			rows = jdbcTemplate.queryForList("select * from vehicle where user_id = '"+userId+"' and (year = '"+year+"' or '"+year+"' = '') and (mileage < '"+mileage+"' or '"+mileage+"' = '') and (make = '"+make+"' or '"+make+"' = '') and (model = '"+models+"' or '"+models+"' = '') and (fuel = '"+fuel+"' or '"+fuel+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and status != 'Sold' and make LIKE '"+alphbet+"%' limit "+start+",16 ");
			count =jdbcTemplate.queryForInt("select count(*) from vehicle where user_id = '"+userId+"' and (year = '"+year+"' or '"+year+"' = '') and (mileage < '"+mileage+"' or '"+mileage+"' = '') and (make = '"+make+"' or '"+make+"' = '') and (model = '"+models+"' or '"+models+"' = '') and (fuel = '"+fuel+"' or '"+fuel+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and (body_style = '"+bodyStyle+"' or '"+bodyStyle+"' = '') and status != 'Sold' and make LIKE '"+alphbet+"%'");
		}
		
		
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
		List<Map<String, Object>> videoUrl = jdbcTemplate.queryForList("select desktop_url,mobile_url from virtual_tour where user_id= '"+userId+"' and vin= '"+vin+"' ");
		if(videoUrl.isEmpty()) {
			vehicleVM.videoUrl = "";
			vehicleVM.mobileUrl = "";
		} else {
			if(videoUrl.get(0).get("desktop_url") == null) {
				vehicleVM.videoUrl = "";
			} else {
				vehicleVM.videoUrl = (String) videoUrl.get(0).get("desktop_url");
			}
			if(videoUrl.get(0).get("mobile_url") == null) {
				vehicleVM.mobileUrl = "";
			} else {
				vehicleVM.mobileUrl = (String) videoUrl.get(0).get("mobile_url");
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
 		List<Map<String, Object>> imagerows = jdbcTemplate.queryForList("select path,default_image,thumb_path from vehicle_image where user_id = '"+userId+"' and vin= '"+vin+"' ORDER BY vehicle_image.row,vehicle_image.col");
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
 			int def = (Integer) map.get("default_image"); 
 			if(def == 0) {
 				vehicleImage.isDefault = false; 
 			}
 			
 			if(def == 1) {
 				vehicleImage.isDefault = true; 
 			}
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
		
		List<Map<String, Object>> userMail = jdbcTemplate.queryForList("select * from auth_user where id = '"+userId+"'");
		
		final String username = emailusername;
		final String password = emailpassword;
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.starttls.enable", "true");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		try
		{
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(emailusername));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse((String) userMail.get(0).get("email")));
			message.setSubject("Request More Info");
			Multipart multipart = new MimeMultipart();
			BodyPart messageBodyPart = new MimeBodyPart();
			messageBodyPart = new MimeBodyPart();
			
			VelocityEngine ve = new VelocityEngine();
			ve.setProperty( RuntimeConstants.RUNTIME_LOG_LOGSYSTEM_CLASS,"org.apache.velocity.runtime.log.Log4JLogChute" );
			ve.setProperty("runtime.log.logsystem.log4j.logger","clientService");
			ve.setProperty(RuntimeConstants.RESOURCE_LOADER, "classpath"); 
			ve.setProperty("classpath.resource.loader.class", ClasspathResourceLoader.class.getName());
			ve.init();
		
			String urlfind= "http://www.glider-autos.com/dealer/index.html#/requestMoreInfo";
			
	        Template t = ve.getTemplate("template.vm"); //com/mnt/views/template.vm
	        VelocityContext context = new VelocityContext();
	        context.put("name", request.getParameter("name"));
	        context.put("email", request.getParameter("email"));
	        context.put("phone", request.getParameter("phone"));
	        context.put("preferred",  request.getParameter("preferred"));
	        context.put("year", (String) oneRow.get(0).get("year"));
	        context.put("make", (String) oneRow.get(0).get("make"));
	        context.put("model", (String) oneRow.get(0).get("model"));
	        context.put("price", "$" + (Integer) oneRow.get(0).get("price")); 
	        context.put("vin", (String) oneRow.get(0).get("vin"));
	        context.put("stock", (String) oneRow.get(0).get("stock"));
	        context.put("mileage", (String) oneRow.get(0).get("mileage"));
	        context.put("sitelogo", logo);
	        context.put("path", path);
	        context.put("urlLink", hostUrl);
	        context.put("urlfind", urlfind);
	        context.put("hostnameimg",  hostnameimg);
	        
	        
	        
	        StringWriter writer = new StringWriter();
	        t.merge( context, writer );
	        String content = writer.toString(); 
			
			messageBodyPart.setContent(content, "text/html");
			multipart.addBodyPart(messageBodyPart);
			message.setContent(multipart);
			Transport.send(message);
			System.out.println("Sent test message successfully....");
		}
		catch (Exception e)
		{
			e.printStackTrace();
		} 
		
		
		return request.getParameter("vin");
		
		
		
		
		
	}
	
	
	public String getScheduleTest(HttpServletRequest request, String hostUrl){
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String path = "";
		
		jdbcTemplate.update("INSERT INTO schedule_test(name, preferred_contact,email,phone,best_day,best_time,schedule_date,vin,user_id) VALUES('"+request.getParameter("name")+"','"+request.getParameter("preferred")+"','"+request.getParameter("email")+"','"+request.getParameter("phone")+"','"+request.getParameter("bestDay")+"','"+request.getParameter("bestTime")+"','"+dateFormat.format(date)+"','"+request.getParameter("vin")+"','"+userId+"')");
				
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
		
		List<Map<String, Object>> userMail = jdbcTemplate.queryForList("select * from auth_user where id = '"+userId+"'");
		
		final String username = emailusername;
		final String password = emailpassword;
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.starttls.enable", "true");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		try
		{
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(emailusername));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse((String) userMail.get(0).get("email")));
			message.setSubject("Schedule Test Drive");
			Multipart multipart = new MimeMultipart();
			BodyPart messageBodyPart = new MimeBodyPart();
			messageBodyPart = new MimeBodyPart();
			
			VelocityEngine ve = new VelocityEngine();
			ve.setProperty( RuntimeConstants.RUNTIME_LOG_LOGSYSTEM_CLASS,"org.apache.velocity.runtime.log.Log4JLogChute" );
			ve.setProperty("runtime.log.logsystem.log4j.logger","clientService");
			ve.setProperty(RuntimeConstants.RESOURCE_LOADER, "classpath"); 
			ve.setProperty("classpath.resource.loader.class", ClasspathResourceLoader.class.getName());
			ve.init();
		
			String urlfind= "http://www.glider-autos.com/dealer/index.html#/requestMoreInfo";
			
	        Template t = ve.getTemplate("scheduleTestDriveTemplate.vm"); 
	        VelocityContext context = new VelocityContext();
	        context.put("name", request.getParameter("name"));
	        context.put("email", request.getParameter("email"));
	        context.put("phone", request.getParameter("phone"));
	        context.put("preferred",  request.getParameter("preferred"));
	        context.put("bestDay",  request.getParameter("bestDay"));
	        context.put("bestTime",  request.getParameter("bestTime"));
	        context.put("year", (String) oneRow.get(0).get("year"));
	        context.put("make", (String) oneRow.get(0).get("make"));
	        context.put("model", (String) oneRow.get(0).get("model"));
	        context.put("price", "$" + (Integer) oneRow.get(0).get("price")); 
	        context.put("vin", (String) oneRow.get(0).get("vin"));
	        context.put("stock", (String) oneRow.get(0).get("stock"));
	        context.put("mileage", (String) oneRow.get(0).get("mileage"));
	        context.put("sitelogo", logo);
	        context.put("path", path);
	        context.put("urlLink", hostUrl);
	        context.put("urlfind", urlfind);
	        context.put("hostnameimg",  hostnameimg);
	        
	        StringWriter writer = new StringWriter();
	        t.merge( context, writer );
	        String content = writer.toString(); 
			
			messageBodyPart.setContent(content, "text/html");
			multipart.addBodyPart(messageBodyPart);
			message.setContent(multipart);
			Transport.send(message);
			System.out.println("Sent test message successfully....");
		}
		catch (Exception e)
		{
			e.printStackTrace();
		} 
		
		
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
		
		final String username = emailusername;
		final String password = emailpassword;
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.starttls.enable", "true");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		try
		{
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(emailusername));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(request.getParameter("femail")));
			message.setSubject("Email To Friend");
			Multipart multipart = new MimeMultipart();
			BodyPart messageBodyPart = new MimeBodyPart();
			messageBodyPart = new MimeBodyPart();
			
			VelocityEngine ve = new VelocityEngine();
			ve.setProperty( RuntimeConstants.RUNTIME_LOG_LOGSYSTEM_CLASS,"org.apache.velocity.runtime.log.Log4JLogChute" );
			ve.setProperty("runtime.log.logsystem.log4j.logger","clientService");
			ve.setProperty(RuntimeConstants.RESOURCE_LOADER, "classpath"); 
			ve.setProperty("classpath.resource.loader.class", ClasspathResourceLoader.class.getName());
			ve.init();
			
	        Template t = ve.getTemplate("templateForFriend.vm");
	        VelocityContext context = new VelocityContext();
	        context.put("name", request.getParameter("name"));
	        context.put("fname", request.getParameter("fname"));
	        context.put("email", request.getParameter("email"));
	        context.put("phone", request.getParameter("phone"));
	        context.put("year", (String) oneRow.get(0).get("year"));
	        context.put("make", (String) oneRow.get(0).get("make"));
	        context.put("model", (String) oneRow.get(0).get("model"));
	        context.put("price", "$" +  (Integer) oneRow.get(0).get("price"));
	        context.put("vin", (String) oneRow.get(0).get("vin"));
	        context.put("stock", (String) oneRow.get(0).get("stock"));
	        context.put("mileage", (String) oneRow.get(0).get("mileage"));
	        context.put("engine", (String) oneRow.get(0).get("engine"));
	        context.put("exterior_color", (String) oneRow.get(0).get("exterior_color"));
	        context.put("interior_color", (String) oneRow.get(0).get("interior_color"));
	        context.put("city_mileage", (String) oneRow.get(0).get("city_mileage"));
	        context.put("highway_mileage", (String) oneRow.get(0).get("highway_mileage"));
	        
	        context.put("sitelogo", logo);
	        context.put("path", path);
	        context.put("urlLink", hostUrl);
	        context.put("hostnameimg",  hostnameimg);
	        
	        
	        StringWriter writer = new StringWriter();
	        t.merge( context, writer );
	        String content = writer.toString(); 
			
			messageBodyPart.setContent(content, "text/html");
			multipart.addBodyPart(messageBodyPart);
			message.setContent(multipart);
			Transport.send(message);
			System.out.println("Sent test message successfully....");
		}
		catch (Exception e)
		{
			e.printStackTrace();
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
		
		List<Map<String, Object>> userMail = jdbcTemplate.queryForList("select * from auth_user where id = '"+userId+"'");
		
		final String username = emailusername;
		final String password = emailpassword;
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.starttls.enable", "true");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		try
		{
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(emailusername));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse((String) userMail.get(0).get("email")));
			message.setSubject("Trade-In Appraisal");
			Multipart multipart = new MimeMultipart();
			BodyPart messageBodyPart = new MimeBodyPart();
			messageBodyPart = new MimeBodyPart();
			
			VelocityEngine ve = new VelocityEngine();
			ve.setProperty( RuntimeConstants.RUNTIME_LOG_LOGSYSTEM_CLASS,"org.apache.velocity.runtime.log.Log4JLogChute" );
			ve.setProperty("runtime.log.logsystem.log4j.logger","clientService");
			ve.setProperty(RuntimeConstants.RESOURCE_LOADER, "classpath"); 
			ve.setProperty("classpath.resource.loader.class", ClasspathResourceLoader.class.getName());
			ve.init();
			
	        Template t = ve.getTemplate("trade_in_app.vm");
	        VelocityContext context = new VelocityContext();
	      	        
	        /*---------Trad in info---------------*/
	        
	        /*contact info*/
	        context.put("first_name", request.getParameter("first_name"));
	        context.put("last_name", request.getParameter("last_name"));
	        context.put("work_phone",request.getParameter("work_phone"));
	        context.put("email",request.getParameter("email"));
	        context.put("preferred",  request.getParameter("preferred"));
	        context.put("optionValue",  optionValue);
	        
	       
	        /*vehicale info*/
	        
	        context.put("year", request.getParameter("year"));
	        context.put("make", request.getParameter("make"));
	        context.put("model", request.getParameter("model"));
	        context.put("exterior_colour", request.getParameter("exterior_colour"));
	        context.put("kilometres", request.getParameter("kilometres"));
	        context.put("engine", request.getParameter("engine"));
	        context.put("doors", request.getParameter("doors"));
	        context.put("transmission", request.getParameter("transmission"));
	        context.put("drivetrain", request.getParameter("drivetrain"));
	        
	        /*vehicale rating*/
	        
	        context.put("body_rating", request.getParameter("body_rating"));
	        context.put("tire_rating", request.getParameter("tire_rating"));
	        context.put("engine_rating", request.getParameter("engine_rating"));
	        context.put("transmission_rating", request.getParameter("transmission_rating"));
	        context.put("glass_rating", request.getParameter("glass_rating"));
	        context.put("interior_rating", request.getParameter("interior_rating"));
	        context.put("exhaust_rating", request.getParameter("exhaust_rating"));
	        
	        /*vehicale History*/
	        
	        context.put("lease_or_rental", request.getParameter("rental_return"));
	        context.put("operational_and_accurate", request.getParameter("odometer_accurate"));
	        context.put("service_record", request.getParameter("service_records"));
	        
	        /*title History*/
	        
	        context.put("lienholder", request.getParameter("lienholder"));
	        context.put("holds_this_title", request.getParameter("holds_this_title"));
	        
	        /*Vehicle Assessment*/
	        
	        context.put("equipment", request.getParameter("equipment"));
	        context.put("vehiclenew", request.getParameter("vehiclenew"));
	        context.put("accidents", request.getParameter("accidents"));
	        context.put("damage", request.getParameter("damage"));
	        context.put("paint", request.getParameter("paint"));
	        context.put("salvage", request.getParameter("salvage"));
	        
	        
	        context.put("sitelogo", logo);
	        context.put("path", path);
	        context.put("urlLink", hostUrl);
	        context.put("hostnameimg",  hostnameimg);
	        
	        
	        StringWriter writer = new StringWriter();
	        t.merge( context, writer );
	        String content = writer.toString(); 
			
			messageBodyPart.setContent(content, "text/html");
			multipart.addBodyPart(messageBodyPart);
			message.setContent(multipart);
			Transport.send(message);
			System.out.println("Sent test message successfully....");
		}
		catch (Exception e)
		{
			e.printStackTrace();
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
	
	public Map getBlogsOfUser(Integer start) {
		Map<String, Object> mapData = new HashMap<String, Object>();
		DateFormat dateFormat = new SimpleDateFormat("MMM dd, yyyy");
		List<BlogVM> blogVMList = new ArrayList<BlogVM>();
		Integer count = 0;
		List<Map<String, Object>> rows = null;
		rows = jdbcTemplate.queryForList("select * from blog where user_id = '"+userId+"' ORDER BY posted_date desc limit "+start+",3");
		count = jdbcTemplate.queryForInt("select count(*) from blog where user_id = '"+userId+"'");
		
		for(Map map : rows) {
			BlogVM vm = new BlogVM();
			vm.title = (String) map.get("title");
			vm.description = (String) map.get("description");
			vm.postedBy = (String) map.get("posted_by");
			Date date = (Date) map.get("posted_date");
			vm.postedDate = dateFormat.format(date);
			blogVMList.add(vm);
		}	
		
		mapData.put("blogList", blogVMList);
		mapData.put("count", count);
		
		return mapData;
	}
	
	public Map getRecentMobileVehicles(Integer start,String year,String alphabet){
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		List<Map<String, Object>> rows = null;
		List<VehicleVM> vehicleList = new ArrayList<VehicleVM>();
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DATE, -30);
		Date dateBefore30Days = cal.getTime();
		Integer count = 0;
		if(!year.equals("")) {
			rows = jdbcTemplate.queryForList("select * from vehicle where user_id = '"+userId+"' and posted_date > '"+dateFormat.format(dateBefore30Days)+"' and status != 'Sold' and (year = '"+year+"' or '"+year+"' = '')  ORDER BY price asc limit "+start+",16 ");
			count = jdbcTemplate.queryForInt("select count(*) from vehicle where user_id = '"+userId+"' and posted_date > '"+dateFormat.format(dateBefore30Days)+"' and status != 'Sold' and (year = '"+year+"' or '"+year+"' = '')");
		} else {
			rows = jdbcTemplate.queryForList("select * from vehicle where user_id = '"+userId+"' and posted_date > '"+dateFormat.format(dateBefore30Days)+"' and status != 'Sold' and (year = '"+year+"' or '"+year+"' = '')  and make LIKE '"+alphabet+"%' ORDER BY price asc limit "+start+",16 ");
			count = jdbcTemplate.queryForInt("select count(*) from vehicle where user_id = '"+userId+"' and posted_date > '"+dateFormat.format(dateBefore30Days)+"' and status != 'Sold' and make LIKE '"+alphabet+"%'");
		}
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
	
	public String contactUs(ContactVM request, String hostUrl){

		jdbcTemplate.update("INSERT INTO contact_us(name, email,msg,number) VALUES('"+request.name+"','"+request.email+"','"+request.message+"','"+request.number+"')");
		
		SiteLogoVM logo = new SiteLogoVM();
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("select * from site_logo where user_id = '"+userId+"'");
		
		for(Map map : rows) {
			logo.logoPath = (String) map.get("logo_image_path");
			logo.faviconPath = (String) map.get("favicon_image_path");
			logo.tabText = (String) map.get("tab_text");
		}
		
		List<Map<String, Object>> userMail = jdbcTemplate.queryForList("select * from auth_user where id = '"+userId+"'");
		
		final String username = emailusername;
		final String password = emailpassword;
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.starttls.enable", "true");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		try
		{
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(emailusername));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse((String) userMail.get(0).get("email")));
			message.setSubject("Contact us");
			Multipart multipart = new MimeMultipart();
			BodyPart messageBodyPart = new MimeBodyPart();
			messageBodyPart = new MimeBodyPart();
			
			VelocityEngine ve = new VelocityEngine();
			ve.setProperty( RuntimeConstants.RUNTIME_LOG_LOGSYSTEM_CLASS,"org.apache.velocity.runtime.log.Log4JLogChute" );
			ve.setProperty("runtime.log.logsystem.log4j.logger","clientService");
			ve.setProperty(RuntimeConstants.RESOURCE_LOADER, "classpath"); 
			ve.setProperty("classpath.resource.loader.class", ClasspathResourceLoader.class.getName());
			ve.init();
		
			
	        Template t = ve.getTemplate("contactUstemplate.vm"); 
	        VelocityContext context = new VelocityContext();
	        context.put("name", request.getParameter("name"));
	        context.put("email", request.getParameter("email"));
	        context.put("msg", request.getParameter("msg"));
	        context.put("number", request.getParameter("number"));
	        
	       
	        context.put("urlLink", hostUrl);
	        context.put("hostnameimg",  hostnameimg);
	        
	        
	        
	        StringWriter writer = new StringWriter();
	        t.merge( context, writer );
	        String content = writer.toString(); 
			
			messageBodyPart.setContent(content, "text/html");
			multipart.addBodyPart(messageBodyPart);
			message.setContent(multipart);
			Transport.send(message);
			System.out.println("Sent test message successfully....");
		}
		catch (Exception e)
		{
			e.printStackTrace();
		} 
		
		
		
		
		return null;
	}
	
	
	
}
