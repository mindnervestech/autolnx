package com.mnt.glivr;

import java.io.File;
import java.io.FileOutputStream;
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

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.mnt.views.BlogVM;
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
	
	@Value("${pdfRootDir}")
	String pdfRootDir;
	
	
	
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
			Integer row = (Integer) map.get("row");
			Integer col = (Integer) map.get("col");
			if(row == 0 && col == 0) {
				String firstDesc = "";
					firstDesc = (String) map.get("description");
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
			
			if(row == 0 && col == 1) {
				String secondDesc = "";
					secondDesc = (String) map.get("description");
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
			
			if(row == 0 && col == 2) {
				String thirdDesc = "";
					thirdDesc = (String) map.get("description");
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
							if(image3.length >= 4) {
								vm.slider34 = image3[3];
							}
							if(image3.length >= 5) {
								vm.slider35 = image3[4];
							}
							if(image3.length >= 6) {
								vm.slider36 = image3[5];
							}
							if(image3.length >= 7) {
								vm.slider37 = image3[6];
							}
							if(image3.length >= 8) {
								vm.slider38 = image3[7];
							}
							if(image3.length >= 9) {
								vm.slider39 = image3[8];
							}
							if(image3.length >= 10) {
								vm.slider40 = image3[9];
							}
							if(image3.length >= 11) {
								vm.slider41 = image3[10];
							}
							if(image3.length >= 12) {
								vm.slider42 = image3[11];
							}
						} else {
							vm.slider31 = thirdDesc;
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
	
	public MyProfileVM getProfileModel(){
		MyProfileVM profileModel = new MyProfileVM();

		List<Map<String, Object>> myprofileModel = jdbcTemplate.queryForList("select * from my_profile where user_id = '"+userId+"'");
		
		if(myprofileModel != null){
			profileModel.myname =(String) myprofileModel.get(0).get("myname");
			profileModel.address =(String) myprofileModel.get(0).get("address");
			profileModel.phone =(String) myprofileModel.get(0).get("phone");
			profileModel.email =(String) myprofileModel.get(0).get("email");
			profileModel.web=(String) myprofileModel.get(0).get("web");
			profileModel.facebook =(String) myprofileModel.get(0).get("facebook");
			profileModel.pinterest =(String) myprofileModel.get(0).get("pinterest");	
			profileModel.instagram =(String) myprofileModel.get(0).get("instagram");
			profileModel.twitter =(String) myprofileModel.get(0).get("twitter");
			profileModel.googleplus =(String) myprofileModel.get(0).get("googleplus");
		}
		return profileModel;
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
 		vehicleVM.trim = (String) row.get(0).get("trim");
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
	
	
	public void getRequestMore(RequestMore model, String hostUrl){
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String path = "";
		
		jdbcTemplate.update("INSERT INTO request_more_info(name, preferred_contact,email,phone,request_date,vin,user_id) VALUES('"+model.getName()+"','"+model.getPreferred()+"','"+model.getEmail()+"','"+model.getPhone()+"','"+dateFormat.format(date)+"','"+model.getVin()+"','"+userId+"')");
		
		List<Map<String, Object>> oneRow = jdbcTemplate.queryForList("select * from vehicle where vin = '"+model.getVin()+"'");
			
		List<Map<String, Object>> vehiclePath = jdbcTemplate.queryForList("select path from vehicle_image where user_id = '"+userId+"' and vin = '"+ model.getVin() +"' and default_image = true");
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
		
		List<Map<String, Object>> headingtext = jdbcTemplate.queryForList("select * from site_content where user_id = '"+userId+"'");
		
		String heading1 = "",heading2 = "";
		String heading = (String) headingtext.get(0).get("heading");
		if(heading != null) {
	        int index= heading.lastIndexOf(" ");
	        heading1 = heading.substring(0, index);
	        heading2 = heading.substring(index+1);
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
					InternetAddress.parse((String) userMail.get(0).get("communicationemail")));
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
	        context.put("name", model.getName());
	        context.put("email", model.getEmail());
	        context.put("phone", model.getPhone());
	        context.put("preferred",  model.getPreferred());
	        context.put("year", (String) oneRow.get(0).get("year"));
	        context.put("make", (String) oneRow.get(0).get("make"));
	        context.put("model", (String) oneRow.get(0).get("model"));
	        context.put("price", "$" + (Integer) oneRow.get(0).get("price")); 
	        context.put("vin", (String) oneRow.get(0).get("vin"));
	        context.put("stock", (String) oneRow.get(0).get("stock"));
	        context.put("mileage", (String) oneRow.get(0).get("mileage"));
	        context.put("sitelogo", logo);
	        context.put("path", path);
	        context.put("heading1", heading1);
	        context.put("heading2", heading2);
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
		
	}
	
		
	public void getScheduleTest(ScheduleTestVM model, String hostUrl){
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String path = "";
		
		jdbcTemplate.update("INSERT INTO schedule_test(name, preferred_contact,email,phone,best_day,best_time,schedule_date,vin,user_id) VALUES('"+model.getName()+"','"+model.getPreferred()+"','"+model.getEmail()+"','"+model.getPhone()+"','"+model.getBestDay()+"','"+model.getBestTime()+"','"+dateFormat.format(date)+"','"+ model.getVin() +"','"+userId+"')");
		
		List<Map<String, Object>> oneRow = jdbcTemplate.queryForList("select * from vehicle where vin = '"+model.getVin()+"'");
		
		List<Map<String, Object>> vehiclePath = jdbcTemplate.queryForList("select path from vehicle_image where user_id = '"+userId+"' and vin = '"+model.getVin() +"' and default_image = true");
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
		
		List<Map<String, Object>> headingtext = jdbcTemplate.queryForList("select * from site_content where user_id = '"+userId+"'");
		
		String heading1 = "",heading2 = "";
		String heading = (String) headingtext.get(0).get("heading");
		if(heading != null) {
	        int index= heading.lastIndexOf(" ");
	        heading1 = heading.substring(0, index);
	        heading2 = heading.substring(index+1);
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
					InternetAddress.parse((String) userMail.get(0).get("communicationemail")));
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
		
			String urlfind= "http://www.glider-autos.com/dealer/index.html#/scheduleTest";
			
	        Template t = ve.getTemplate("scheduleTestDriveTemplate.vm"); 
	        VelocityContext context = new VelocityContext();
	        context.put("name", model.getName());
	        context.put("email", model.getEmail());
	        context.put("phone", model.getPhone());
	        context.put("preferred",  model.getPreferred());
	        context.put("bestDay",  model.getBestDay());
	        
	        String dateString = model.getBestDay();
	        DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
	        Date date1=df.parse(dateString);
	        df=new SimpleDateFormat("dd-MMM-yyyy");
	        System.out.println("Formated Date:"+df.format(date1));

	        String[] parts = df.format(date1).split("-");
	        String part1 = parts[0]; // 004
	        String part2 = parts[1];
	        
	        context.put("part1Date",  part1);
	        context.put("part2Date",  part2);
	        context.put("bestTime",  model.getBestTime());
	        context.put("year", (String) oneRow.get(0).get("year"));
	        context.put("make", (String) oneRow.get(0).get("make"));
	        context.put("model", (String) oneRow.get(0).get("model"));
	        context.put("price", "$" + (Integer) oneRow.get(0).get("price")); 
	        context.put("vin", (String) oneRow.get(0).get("vin"));
	        context.put("stock", (String) oneRow.get(0).get("stock"));
	        context.put("mileage", (String) oneRow.get(0).get("mileage"));
	        context.put("sitelogo", logo);
	        context.put("path", path);
	        context.put("heading1", heading1);
	        context.put("heading2", heading2);
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
	}
	
		
	public void getOtherInfo(FriendVM model, String hostUrl){
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String path = "";
		
		jdbcTemplate.update("INSERT INTO other_user_info(name, email,fname,femail,date_info,vin,user_id) VALUES('"+model.getName()+"','"+ model.getEmail() +"','"+ model.getFname() +"','"+ model.getFemail() +"','"+dateFormat.format(date)+"','"+model.getVin()+"','"+userId+"')");
		
		
		List<Map<String, Object>> oneRow = jdbcTemplate.queryForList("select * from vehicle where vin = '"+model.getVin()+"'");
 				
		List<Map<String, Object>> vehiclePath = jdbcTemplate.queryForList("select path from vehicle_image where user_id = '"+userId+"' and vin = '"+model.getVin()+"' and default_image = true");
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
		
		List<Map<String, Object>> headingtext = jdbcTemplate.queryForList("select * from site_content where user_id = '"+userId+"'");
		
		List<VehicleVM> similarVehicleVm = getSimilarVehicleDetails(model.getVin());
		
		String heading1 = "",heading2 = "";
		String heading = (String) headingtext.get(0).get("heading");
		if(heading != null) {
	        int index= heading.lastIndexOf(" ");
	        heading1 = heading.substring(0, index);
	        heading2 = heading.substring(index+1);
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
					InternetAddress.parse(model.getFemail()));
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
			
			String urlfind= "http://www.glider-autos.com/dealer/index.html#/requestMoreInfo";
			
	        Template t = ve.getTemplate("templateForFriend.vm");
	        VelocityContext context = new VelocityContext();
	        context.put("name", model.getName());
	        context.put("fname", model.getFname());
	        context.put("email", model.getEmail());
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
	        context.put("similarVehicle", similarVehicleVm);
	        
	        context.put("sitelogo", logo);
	        context.put("path", path);
	        context.put("heading1", heading1);
	        context.put("heading2", heading2);
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

		
		
	}
	
	public void getTradeInApp(Trade_InVM model, String hostUrl){
			
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String optionValue = "";
		String path = "";
		int i = 0,lastId =0;
		
		for(String value:model.getOptions()){
			if(i == 0){
				optionValue = optionValue + value;
				i++;
			}else{
				optionValue = optionValue + "," + value;
			}
		}
			
		
		jdbcTemplate.update("INSERT INTO trade_in(first_name,last_name,work_phone,phone,email,preferred_contact,trade_date,comments,year,make,model,exterior_colour,kilometres,engine,doors,transmission,drivetrain,body_rating,tire_rating,engine_rating,transmission_rating,glass_rating,interior_rating,exhaust_rating,lease_or_rental,operational_and_accurate,service_record,lienholder,holds_this_title,equipment,vehiclenew,accidents,damage,paint,salvage,option_value,vin,user_id) VALUES('"+model.getFirst_name()+"','"+model.getLast_name()+"','"+model.getWork_phone()+"','"+model.getPhone()+"','"+model.getEmail()+"','"+model.getPreferred()+"','"+dateFormat.format(date)+"','"+model.getComments()+"','"+model.getYear()+"','"+model.getMake()+"','"+model.getModel()+"','"+model.getExterior_colour()+"','"+model.getKilometres()+"','"+model.getEngine()+"'" +
				",'"+model.getDoors()+"','"+model.getTransmission()+"','"+model.getDrivetrain()+"','"+model.getBody_rating()+"','"+model.getTire_rating()+"','"+model.getEngine_rating()+"','"+model.getTransmission_rating()+"','"+model.getGlass_rating()+"','"+model.getInterior_rating()+"','"+model.getExhaust_rating()+"','"+model.getRental_return()+"','"+model.getOdometer_accurate()+"','"+model.getService_records()+"','"+ model.getLienholder() +"','"+model.getTitleholder()+"','"+model.getEquipment()+"','"+model.getVehiclenew()+"','"+model.getAccidents()+"','"+ model.getDamage()+"','"+model.getPaint()+"','"+model.getSalvage()+"','"+optionValue+"','"+model.getVin()+"','"+userId+"')");
		
		lastId =jdbcTemplate.queryForInt("select MAX(id) from trade_in where user_id = '"+userId+"' ");
		List<Map<String, Object>> oneRow = jdbcTemplate.queryForList("select * from vehicle where vin = '"+model.getVin()+"'");
		
		List<Map<String, Object>> vehiclePath = jdbcTemplate.queryForList("select path from vehicle_image where user_id = '"+userId+"' and vin = '"+model.getVin()+"' and default_image = true");
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
		
		List<Map<String, Object>> headingtext = jdbcTemplate.queryForList("select * from site_content where user_id = '"+userId+"'");
		
		String heading1 = "",heading2 = "";
		String heading = (String) headingtext.get(0).get("heading");
		if(heading != null) {
	        int index= heading.lastIndexOf(" ");
	        heading1 = heading.substring(0, index);
	        heading2 = heading.substring(index+1);
		}
		String filepath = null,findpath = null;

		try {
            Document document = new Document();
            createDir(pdfRootDir, userId, lastId);
            filepath = pdfRootDir + File.separator+ userId +File.separator+ "trade_in_pdf"+File.separator+ lastId + File.separator + "Trade_In.pdf";
            findpath = "/" + userId +"/"+ "trade_in_pdf"+"/"+ lastId + "/" + "Trade_In.pdf";
            PdfWriter pdfWriter = 
            PdfWriter.getInstance(document, new FileOutputStream(filepath));
             
            // Properties
            document.addAuthor("Celinio");
            document.addCreator("Celinio");
            document.addSubject("iText with Maven");
                        document.addTitle("Fourth tutorial");
                        document.addKeywords("iText, Maven, Java");
             
            document.open();
             
           /* Chunk chunk = new Chunk("Fourth tutorial");*/
                        Font font = new Font();
                        font.setStyle(Font.UNDERLINE);
                        font.setStyle(Font.ITALIC);
                       /* chunk.setFont(font);*/
                      //  chunk.setBackground(Color.BLACK);
                       /* document.add(chunk);*/
                        
                        Font font1 = new Font(FontFamily.HELVETICA, 8, Font.NORMAL,
            					BaseColor.BLACK);
            			Font font2 = new Font(FontFamily.HELVETICA, 8, Font.BOLD,
            					BaseColor.BLACK);            
            			
            			
            			
            			PdfPTable Titlemain = new PdfPTable(1);
            			Titlemain.setWidthPercentage(100);
            			float[] TitlemainWidth = {2f};
            			Titlemain.setWidths(TitlemainWidth);
            			
            			PdfPCell title = new PdfPCell(new Phrase("Trade-IN Appraisal"));
            			title.setBorderColor(BaseColor.WHITE);
            			title.setBackgroundColor(new BaseColor(255, 255, 255));
            			Titlemain.addCell(title);
            			
            			PdfPTable contactInfo = new PdfPTable(4);
            			contactInfo.setWidthPercentage(100);
            			float[] contactInfoWidth = {2f,2f,2f,2f};
            			contactInfo.setWidths(contactInfoWidth);
            			
            			PdfPCell firstname = new PdfPCell(new Phrase("First Name:",font1));
            			firstname.setBorderColor(BaseColor.WHITE);
            			firstname.setBackgroundColor(new BaseColor(255, 255, 255));
            			contactInfo.addCell(firstname);
            			            			
            			PdfPCell firstnameValue = new PdfPCell(new Paragraph(model.getFirst_name(),font2));
            			firstnameValue.setBorderColor(BaseColor.WHITE);
            			firstnameValue.setBorderWidth(1f);
          			contactInfo.addCell(firstnameValue);
            			
            			PdfPCell lastname = new PdfPCell(new Phrase("Last Name:",font1));
            			lastname.setBorderColor(BaseColor.WHITE);
            			contactInfo.addCell(lastname);
            			            			
            			PdfPCell lastnameValue = new PdfPCell(new Paragraph(model.getLast_name(),font2));
            			lastnameValue.setBorderColor(BaseColor.WHITE);
            			lastnameValue.setBorderWidth(1f);
            			//lastnameValue.setHorizontalAlignment(Element.ALIGN_LEFT);
            			contactInfo.addCell(lastnameValue);
            			
            			PdfPCell workPhone = new PdfPCell(new Phrase("Work Phone:",font1));
            			workPhone.setBorderColor(BaseColor.WHITE);
            			contactInfo.addCell(workPhone);
            			            			
            			PdfPCell workPhoneValue = new PdfPCell(new Paragraph(model.getWork_phone(),font2));
            			workPhoneValue.setBorderColor(BaseColor.WHITE);
            			workPhoneValue.setBorderWidth(1f);
            			contactInfo.addCell(workPhoneValue);
            			
            			PdfPCell phone = new PdfPCell(new Phrase("Phone:",font1));
            			phone.setBorderColor(BaseColor.WHITE);
            			contactInfo.addCell(phone);
            			            			
            			PdfPCell phoneValue = new PdfPCell(new Paragraph(model.getPhone(),font2));
            			phoneValue.setBorderColor(BaseColor.WHITE);
            			phoneValue.setBorderWidth(1f);
            			contactInfo.addCell(phoneValue);
            			
            			PdfPCell email = new PdfPCell(new Phrase("Email",font1));
            			email.setBorderColor(BaseColor.WHITE);
            			contactInfo.addCell(email);
            			            			
            			PdfPCell emailValue = new PdfPCell(new Paragraph(model.getEmail(),font2));
            			emailValue.setBorderColor(BaseColor.WHITE);
            			emailValue.setBorderWidth(1f);
            			contactInfo.addCell(emailValue);
            			
            			PdfPCell options = new PdfPCell(new Phrase("Options:",font1));
            			options.setBorderColor(BaseColor.WHITE);
            			contactInfo.addCell(options);
            			            			
            			PdfPCell optionsValue = new PdfPCell(new Paragraph(optionValue,font2));
            			optionsValue.setBorderColor(BaseColor.WHITE);
            			optionsValue.setBorderWidth(1f);
            			contactInfo.addCell(optionsValue);
            			
            			//--------------Vehicle Information
            			
            			PdfPTable vehicleInformationTitle = new PdfPTable(1);
            			vehicleInformationTitle.setWidthPercentage(100);
            			float[] vehicleInformationTitleWidth = {2f};
            			vehicleInformationTitle.setWidths(vehicleInformationTitleWidth);
            			
            			PdfPCell vehicleInformationTitleValue = new PdfPCell(new Phrase("Vehicle Information"));
            			vehicleInformationTitleValue.setBorderColor(BaseColor.WHITE);
            			vehicleInformationTitleValue.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleInformationTitle.addCell(vehicleInformationTitleValue);
            			
            			//------------vehicle info data
            			
            			PdfPTable vehicleInformation = new PdfPTable(4);
            			vehicleInformation.setWidthPercentage(100);
            			float[] vehicleInformationWidth = {2f,2f,2f,2f};
            			vehicleInformation.setWidths(vehicleInformationWidth);
            			
            			PdfPCell year = new PdfPCell(new Phrase("Year:",font1));
            			year.setBorderColor(BaseColor.WHITE);
            			year.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleInformation.addCell(year);
            			            			
            			PdfPCell yearValue = new PdfPCell(new Paragraph(model.getYear(),font2));
            			yearValue.setBorderColor(BaseColor.WHITE);
            			yearValue.setBorderWidth(1f);
            			vehicleInformation.addCell(yearValue);
            			
            			PdfPCell make = new PdfPCell(new Phrase("Make:",font1));
            			make.setBorderColor(BaseColor.WHITE);
            			vehicleInformation.addCell(make);
            			            			
            			PdfPCell makeValue = new PdfPCell(new Paragraph(model.getMake(),font2));
            			makeValue.setBorderColor(BaseColor.WHITE);
            			makeValue.setBorderWidth(1f);
            			vehicleInformation.addCell(makeValue);
            			
            			PdfPCell Model = new PdfPCell(new Phrase("Model:",font1));
            			Model.setBorderColor(BaseColor.WHITE);
            			vehicleInformation.addCell(Model);
            			            			
            			PdfPCell modelValue = new PdfPCell(new Paragraph(model.getModel(),font2));
            			modelValue.setBorderColor(BaseColor.WHITE);
            			modelValue.setBorderWidth(1f);
            			vehicleInformation.addCell(modelValue);
            			
            			PdfPCell exteriorColour = new PdfPCell(new Phrase("exteriorColour:",font1));
            			exteriorColour.setBorderColor(BaseColor.WHITE);
            			vehicleInformation.addCell(exteriorColour);
            			            			
            			PdfPCell exteriorColourValue = new PdfPCell(new Paragraph(model.getExterior_colour(),font2));
            			exteriorColourValue.setBorderColor(BaseColor.WHITE);
            			exteriorColourValue.setBorderWidth(1f);
            			vehicleInformation.addCell(exteriorColourValue);
            			
            			PdfPCell vin = new PdfPCell(new Phrase("VIN:",font1));
            			vin.setBorderColor(BaseColor.WHITE);
            			vehicleInformation.addCell(vin);
            			            			
            			PdfPCell vinValue = new PdfPCell(new Paragraph(model.getVin(),font2));
            			vinValue.setBorderColor(BaseColor.WHITE);
            			vinValue.setBorderWidth(1f);
            			vehicleInformation.addCell(vinValue);
            			
            			PdfPCell kilometres = new PdfPCell(new Phrase("Kilometres:",font1));
            			kilometres.setBorderColor(BaseColor.WHITE);
            			vehicleInformation.addCell(kilometres);
            			            			
            			PdfPCell kilometresValue = new PdfPCell(new Paragraph(model.getKilometres(),font2));
            			kilometresValue.setBorderColor(BaseColor.WHITE);
            			kilometresValue.setBorderWidth(1f);
            			vehicleInformation.addCell(kilometresValue);
            			
            			PdfPCell engine = new PdfPCell(new Phrase("Engine:",font1));
            			engine.setBorderColor(BaseColor.WHITE);
            			vehicleInformation.addCell(engine);
            			            			
            			PdfPCell engineValue = new PdfPCell(new Paragraph(model.getEngine(),font2));
            			engineValue.setBorderColor(BaseColor.WHITE);
            			engineValue.setBorderWidth(1f);
            			vehicleInformation.addCell(engineValue);
            			
            			PdfPCell doors = new PdfPCell(new Phrase("Doors:",font1));
            			doors.setBorderColor(BaseColor.WHITE);
            			vehicleInformation.addCell(doors);
            			            			
            			PdfPCell doorsValue = new PdfPCell(new Paragraph(model.getDoors(),font2));
            			doorsValue.setBorderColor(BaseColor.WHITE);
            			doorsValue.setBorderWidth(1f);
            			vehicleInformation.addCell(doorsValue);
            			
            			PdfPCell transmission = new PdfPCell(new Phrase("Transmission:",font1));
            			transmission.setBorderColor(BaseColor.WHITE);
            			vehicleInformation.addCell(transmission);
            			            			
            			PdfPCell transmissionValue = new PdfPCell(new Paragraph(model.getTransmission(),font2));
            			transmissionValue.setBorderColor(BaseColor.WHITE);
            			transmissionValue.setBorderWidth(1f);
            			vehicleInformation.addCell(transmissionValue);
            			
            			PdfPCell drivetrain = new PdfPCell(new Phrase("Drivetrain:",font1));
            			drivetrain.setBorderColor(BaseColor.WHITE);
            			vehicleInformation.addCell(drivetrain);
            			            			
            			PdfPCell drivetrainValue = new PdfPCell(new Paragraph(model.getDrivetrain(),font2));
            			drivetrainValue.setBorderColor(BaseColor.WHITE);
            			drivetrainValue.setBorderWidth(1f);
            			vehicleInformation.addCell(drivetrainValue);
            			
            			//----------------Vehicle Rating title----
            			
            			PdfPTable vehicleRatingTitle = new PdfPTable(1);
            			vehicleRatingTitle.setWidthPercentage(100);
            			float[] vehicleRatingTitleWidth = {2f};
            			vehicleRatingTitle.setWidths(vehicleRatingTitleWidth);
            			
            			PdfPCell vehicleRatingTitleValue = new PdfPCell(new Phrase("Vehicle Rating"));
            			vehicleRatingTitleValue.setBorderColor(BaseColor.WHITE);
            			vehicleRatingTitleValue.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleRatingTitle.addCell(vehicleRatingTitleValue);
            			
            			//------------Vehicle Rating data
            			
            			PdfPTable vehicleRatingData = new PdfPTable(4);
            			vehicleRatingData.setWidthPercentage(100);
            			float[] vehicleRatingDataWidth = {2f,2f,2f,2f};
            			vehicleRatingData.setWidths(vehicleRatingDataWidth);
            			
            			PdfPCell body = new PdfPCell(new Phrase("Body :",font1));
            			body.setBorderColor(BaseColor.WHITE);
            			body.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleRatingData.addCell(body);
            			            			
            			PdfPCell bodyValue = new PdfPCell(new Paragraph(model.getBody_rating(),font2));
            			bodyValue.setBorderColor(BaseColor.WHITE);
            			bodyValue.setBorderWidth(1f);
            			vehicleRatingData.addCell(bodyValue);
            			
            			PdfPCell tires = new PdfPCell(new Phrase("Tires :",font1));
            			tires.setBorderColor(BaseColor.WHITE);
            			tires.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleRatingData.addCell(tires);
            			            			
            			PdfPCell tiresValue = new PdfPCell(new Paragraph(model.getTire_rating(),font2));
            			tiresValue.setBorderColor(BaseColor.WHITE);
            			tiresValue.setBorderWidth(1f);
            			vehicleRatingData.addCell(tiresValue);
            			
            			PdfPCell engineRate = new PdfPCell(new Phrase("Engine :",font1));
            			engineRate.setBorderColor(BaseColor.WHITE);
            			engineRate.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleRatingData.addCell(engineRate);
            			            			
            			PdfPCell engineRateValue = new PdfPCell(new Paragraph(model.getEngine_rating(),font2));
            			engineRateValue.setBorderColor(BaseColor.WHITE);
            			engineRateValue.setBorderWidth(1f);
            			vehicleRatingData.addCell(engineRateValue);
            			
            			PdfPCell transmissionRate = new PdfPCell(new Phrase("Transmission :",font1));
            			transmissionRate.setBorderColor(BaseColor.WHITE);
            			transmissionRate.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleRatingData.addCell(transmissionRate);
            			            			
            			PdfPCell transmissionRateValue = new PdfPCell(new Paragraph(model.getTransmission_rating(),font2));
            			transmissionRateValue.setBorderColor(BaseColor.WHITE);
            			transmissionRateValue.setBorderWidth(1f);
            			vehicleRatingData.addCell(transmissionRateValue);
            			
            			PdfPCell glass = new PdfPCell(new Phrase("Glass :",font1));
            			glass.setBorderColor(BaseColor.WHITE);
            			glass.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleRatingData.addCell(glass);
            			            			
            			PdfPCell glassValue = new PdfPCell(new Paragraph(model.getGlass_rating(),font2));
            			glassValue.setBorderColor(BaseColor.WHITE);
            			glassValue.setBorderWidth(1f);
            			vehicleRatingData.addCell(glassValue);
            			
            			PdfPCell interior = new PdfPCell(new Phrase("Interior :",font1));
            			interior.setBorderColor(BaseColor.WHITE);
            			interior.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleRatingData.addCell(interior);
            			            			
            			PdfPCell interiorValue = new PdfPCell(new Paragraph(model.getInterior_rating(),font2));
            			interiorValue.setBorderColor(BaseColor.WHITE);
            			interiorValue.setBorderWidth(1f);
            			vehicleRatingData.addCell(interiorValue);
            			
            			PdfPCell exhaust = new PdfPCell(new Phrase("Exhaust :",font1));
            			exhaust.setBorderColor(BaseColor.WHITE);
            			exhaust.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleRatingData.addCell(exhaust);
            			            			
            			PdfPCell exhaustValue = new PdfPCell(new Paragraph(model.getExhaust_rating(),font2));
            			exhaustValue.setBorderColor(BaseColor.WHITE);
            			exhaustValue.setBorderWidth(1f);
            			vehicleRatingData.addCell(exhaustValue);
            			
//					----------------Vehicle History title----
            			
            			PdfPTable vehiclehistoryTitle = new PdfPTable(1);
            			vehiclehistoryTitle.setWidthPercentage(100);
            			float[] vehiclehistoryTitleWidth = {2f};
            			vehiclehistoryTitle.setWidths(vehiclehistoryTitleWidth);
            			
            			PdfPCell vehiclehistoryValue = new PdfPCell(new Phrase("Vehicle History"));
            			vehiclehistoryValue.setBorderColor(BaseColor.WHITE);
            			vehiclehistoryValue.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehiclehistoryTitle.addCell(vehiclehistoryValue);
            			
            			//------------Vehicle History data
            			
            			PdfPTable vehicleHistoryData = new PdfPTable(4);
            			vehicleHistoryData.setWidthPercentage(100);
            			float[] vehicleHistoryDataWidth = {2f,2f,2f,2f};
            			vehicleHistoryData.setWidths(vehicleHistoryDataWidth);
            			
            			PdfPCell rentalReturn = new PdfPCell(new Phrase("Was it ever a lease or rental return?  :",font1));
            			rentalReturn.setBorderColor(BaseColor.WHITE);
            			rentalReturn.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleHistoryData.addCell(rentalReturn);
            			            			
            			PdfPCell rentalReturnValue = new PdfPCell(new Paragraph(model.getRental_return(),font2));
            			rentalReturnValue.setBorderColor(BaseColor.WHITE);
            			rentalReturnValue.setBorderWidth(1f);
            			vehicleHistoryData.addCell(rentalReturnValue); 
            			
            			PdfPCell operationalAndaccu = new PdfPCell(new Phrase("Is the odometer operational and accurate?  :",font1));
            			operationalAndaccu.setBorderColor(BaseColor.WHITE);
            			operationalAndaccu.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleHistoryData.addCell(operationalAndaccu);
            			            			
            			PdfPCell operationalAndaccuValue = new PdfPCell(new Paragraph(model.getOdometer_accurate(),font2));
            			operationalAndaccuValue.setBorderColor(BaseColor.WHITE);
            			operationalAndaccuValue.setBorderWidth(1f);
            			vehicleHistoryData.addCell(operationalAndaccuValue); 
            			
            			PdfPCell serviceRecodes = new PdfPCell(new Phrase("Detailed service records available?   :",font1));
            			serviceRecodes.setBorderColor(BaseColor.WHITE);
            			serviceRecodes.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleHistoryData.addCell(serviceRecodes);
            			            			
            			PdfPCell serviceRecodesValue = new PdfPCell(new Paragraph(model.getService_records(),font2));
            			serviceRecodesValue.setBorderColor(BaseColor.WHITE);
            			serviceRecodesValue.setBorderWidth(1f);
            			vehicleHistoryData.addCell(serviceRecodesValue); 
            			
            			
            			//----------------Title History title----
            			
            			PdfPTable historyTitle = new PdfPTable(1);
            			historyTitle.setWidthPercentage(100);
            			float[] historyTitleWidth = {2f};
            			historyTitle.setWidths(historyTitleWidth);
            			
            			PdfPCell historyTitleValue = new PdfPCell(new Phrase("Title History"));
            			historyTitleValue.setBorderColor(BaseColor.WHITE);
            			historyTitleValue.setBackgroundColor(new BaseColor(255, 255, 255));
            			historyTitle.addCell(historyTitleValue);
            			
            			//------------Title History data
            			
            			PdfPTable historyTitleData = new PdfPTable(2);
            			historyTitleData.setWidthPercentage(100);
            			float[] historyTitleDataWidth = {2f,2f};
            			historyTitleData.setWidths(historyTitleDataWidth);
            			
            			PdfPCell lineholder = new PdfPCell(new Phrase("Is there a lineholder? :",font1));
            			lineholder.setBorderColor(BaseColor.WHITE);
            			lineholder.setBackgroundColor(new BaseColor(255, 255, 255));
            			historyTitleData.addCell(lineholder);
            			            			
            			PdfPCell lineholderValue = new PdfPCell(new Paragraph(model.getLienholder(),font2));
            			lineholderValue.setBorderColor(BaseColor.WHITE);
            			lineholderValue.setBorderWidth(1f);
            			historyTitleData.addCell(lineholderValue);
            			
            			PdfPCell titleholder = new PdfPCell(new Phrase("Who holds this title?  :",font1));
            			titleholder.setBorderColor(BaseColor.WHITE);
            			titleholder.setBackgroundColor(new BaseColor(255, 255, 255));
            			historyTitleData.addCell(titleholder);
            			            			
            			PdfPCell titleholderValue = new PdfPCell(new Paragraph(model.getTitleholder(),font2));
            			titleholderValue.setBorderColor(BaseColor.WHITE);
            			titleholderValue.setBorderWidth(1f);
            			historyTitleData.addCell(titleholderValue);
            			
            			
            			//----------------Vehicle Assessment title----
            			
            			PdfPTable vehicleAssessmentTitle = new PdfPTable(1);
            			vehicleAssessmentTitle.setWidthPercentage(100);
            			float[] vehicleAssessmentTitleWidth = {2f};
            			vehicleAssessmentTitle.setWidths(vehiclehistoryTitleWidth);
            			
            			PdfPCell vehiclTitle = new PdfPCell(new Phrase("Vehicle Assessment"));
            			vehiclTitle.setBorderColor(BaseColor.WHITE);
            			vehiclTitle.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleAssessmentTitle.addCell(vehiclTitle);
            			
            			//------------Vehicle Assessment data
            			
            			PdfPTable vehicleAssessmentData = new PdfPTable(1);
            			vehicleAssessmentData.setWidthPercentage(100);
            			float[] vehicleAssessmentDataWidth = {2f};
            			vehicleAssessmentData.setWidths(vehicleAssessmentDataWidth);
            			
            			PdfPCell equipment = new PdfPCell(new Phrase("Does all equipment and accessories work correctly? :",font1));
            			equipment.setBorderColor(BaseColor.WHITE);
            			equipment.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleAssessmentData.addCell(rentalReturn);
            			            			
            			PdfPCell equipmentValue = new PdfPCell(new Paragraph(model.getEquipment(),font2));
            			equipmentValue.setBorderColor(BaseColor.WHITE);
            			equipmentValue.setBorderWidth(1f);
            			vehicleAssessmentData.addCell(equipmentValue); 
            			
            			PdfPCell buyVehicle = new PdfPCell(new Phrase("Did you buy the vehicle new? :",font1));
            			buyVehicle.setBorderColor(BaseColor.WHITE);
            			buyVehicle.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleAssessmentData.addCell(buyVehicle);
            			            			
            			PdfPCell buyVehicleValue = new PdfPCell(new Paragraph(model.getVehiclenew(),font2));
            			buyVehicleValue.setBorderColor(BaseColor.WHITE);
            			buyVehicleValue.setBorderWidth(1f);
            			vehicleAssessmentData.addCell(buyVehicleValue); 
            			
            			PdfPCell accidents = new PdfPCell(new Phrase("Has the vehicle ever been in any accidents? Cost of repairs? :",font1));
            			accidents.setBorderColor(BaseColor.WHITE);
            			accidents.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleAssessmentData.addCell(accidents);
            			            			
            			PdfPCell accidentsValue = new PdfPCell(new Paragraph(model.getAccidents(),font2));
            			accidentsValue.setBorderColor(BaseColor.WHITE);
            			accidentsValue.setBorderWidth(1f);
            			vehicleAssessmentData.addCell(accidentsValue); 
            			
            			PdfPCell damage = new PdfPCell(new Phrase("Is there existing damage on the vehicle? Where? :",font1));
            			damage.setBorderColor(BaseColor.WHITE);
            			damage.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleAssessmentData.addCell(damage);
            			            			
            			PdfPCell damageValue = new PdfPCell(new Paragraph(model.getDamage(),font2));
            			damageValue.setBorderColor(BaseColor.WHITE);
            			damageValue.setBorderWidth(1f);
            			vehicleAssessmentData.addCell(damageValue);
            			
            			PdfPCell paintWork = new PdfPCell(new Phrase("Has the vehicle ever had paint work performed? :",font1));
            			paintWork.setBorderColor(BaseColor.WHITE);
            			paintWork.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleAssessmentData.addCell(paintWork);
            			            			
            			PdfPCell paintWorkValue = new PdfPCell(new Paragraph(model.getPaint(),font2));
            			paintWorkValue.setBorderColor(BaseColor.WHITE);
            			paintWorkValue.setBorderWidth(1f);
            			vehicleAssessmentData.addCell(paintWorkValue);
            			
            			PdfPCell salvage = new PdfPCell(new Phrase("Is the title designated 'Salvage' or 'Reconstructed'? Any other? :",font1));
            			salvage.setBorderColor(BaseColor.WHITE);
            			salvage.setBackgroundColor(new BaseColor(255, 255, 255));
            			vehicleAssessmentData.addCell(salvage);
            			            			
            			PdfPCell salvageValue = new PdfPCell(new Paragraph(model.getSalvage(),font2));
            			salvageValue.setBorderColor(BaseColor.WHITE);
            			salvageValue.setBorderWidth(1f);
            			vehicleAssessmentData.addCell(salvageValue);
            		
            			
            			
            			//----------sub main Table----------	
            			
            			PdfPTable AddAllTableInMainTable = new PdfPTable(1);
            			AddAllTableInMainTable.setWidthPercentage(100);
            			float[] AddAllTableInMainTableWidth = {2f};
            			AddAllTableInMainTable.setWidths(AddAllTableInMainTableWidth);
            		
            			PdfPCell hotelVoucherTitlemain1 = new PdfPCell(Titlemain);
            			hotelVoucherTitlemain1.setBorder(Rectangle.NO_BORDER);
            			AddAllTableInMainTable.addCell(hotelVoucherTitlemain1);
            			
            			PdfPCell contactInfoData = new PdfPCell(contactInfo);
            			contactInfoData.setBorder(Rectangle.NO_BORDER);
            			AddAllTableInMainTable.addCell(contactInfoData);
            			
            			PdfPCell vehicaleInfoTitle = new PdfPCell(vehicleInformationTitle);
            			vehicaleInfoTitle.setBorder(Rectangle.NO_BORDER);
            			AddAllTableInMainTable.addCell(vehicaleInfoTitle);
            			
            			PdfPCell vehicaleInfoData = new PdfPCell(vehicleInformation);
            			vehicaleInfoData.setBorder(Rectangle.NO_BORDER);
            			AddAllTableInMainTable.addCell(vehicaleInfoData);
            			
            			PdfPCell vehicleRatingTitles = new PdfPCell(vehicleRatingTitle);
            			vehicleRatingTitles.setBorder(Rectangle.NO_BORDER);
            			AddAllTableInMainTable.addCell(vehicleRatingTitles);
            			
            			PdfPCell vehicleRatinginfo = new PdfPCell(vehicleRatingData);
            			vehicleRatinginfo.setBorder(Rectangle.NO_BORDER);
            			AddAllTableInMainTable.addCell(vehicleRatinginfo);
            			
            			PdfPCell vehicleHisTitle = new PdfPCell(vehiclehistoryTitle);
            			vehicleHisTitle.setBorder(Rectangle.NO_BORDER);
            			AddAllTableInMainTable.addCell(vehicleHisTitle);
            			
            			PdfPCell vehicleHistoryInfo = new PdfPCell(vehicleHistoryData);
            			vehicleHistoryInfo.setBorder(Rectangle.NO_BORDER);
            			AddAllTableInMainTable.addCell(vehicleHistoryInfo);
            			
            			PdfPCell historyTitles = new PdfPCell(historyTitle);
            			historyTitles.setBorder(Rectangle.NO_BORDER);
            			AddAllTableInMainTable.addCell(historyTitles);
            			
            			PdfPCell historyTitleinfo = new PdfPCell(historyTitleData);
            			historyTitleinfo.setBorder(Rectangle.NO_BORDER);
            			AddAllTableInMainTable.addCell(historyTitleinfo);
            			
            			PdfPCell vehicleTitleAssessment = new PdfPCell(vehicleAssessmentTitle);
            			vehicleTitleAssessment.setBorder(Rectangle.NO_BORDER);
            			AddAllTableInMainTable.addCell(vehicleTitleAssessment);
            			
            			PdfPCell vehicleAssessmentDataTitle = new PdfPCell(vehicleAssessmentData);
            			vehicleAssessmentDataTitle.setBorder(Rectangle.NO_BORDER);
            			AddAllTableInMainTable.addCell(vehicleAssessmentDataTitle);
            			
            			
            			
            		//----------main Table----------	
            		
            			PdfPTable AddMainTable = new PdfPTable(1);
            			AddMainTable.setWidthPercentage(100);
            			float[] AddMainTableWidth = {2f};
            			AddMainTable.setWidths(AddMainTableWidth);
            		
            			PdfPCell AddAllTableInMainTable1 = new PdfPCell(AddAllTableInMainTable);
            			AddAllTableInMainTable1.setPadding(10);
            			AddAllTableInMainTable1.setBorderWidth(1f);
            			AddMainTable.addCell(AddAllTableInMainTable1);		
            			
            			
            			document.add(AddMainTable);
            			
            			           			
            			
 
            document.close();
 
        } catch (Exception e) {
            e.printStackTrace();
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
					InternetAddress.parse((String) userMail.get(0).get("communicationemail")));
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
			
			String urlfind= "http://www.glider-autos.com/dealer/index.html#/tradeIn";
			
	        Template t = ve.getTemplate("trade_in_app.vm");
	        VelocityContext context = new VelocityContext();
	      	        
	       // ---------Trad in info---------------
	        
	     //   contact info
	        context.put("first_name", model.getFirst_name());
	        context.put("last_name", model.getLast_name());
	        context.put("work_phone", model.getWork_phone());
	        context.put("email", model.getEmail());
	        
	        context.put("year", (String) oneRow.get(0).get("year"));
	        context.put("make", (String) oneRow.get(0).get("make"));
	        context.put("model", (String) oneRow.get(0).get("model"));
	        context.put("price", "$" + (Integer) oneRow.get(0).get("price")); 
	        context.put("vin", (String) oneRow.get(0).get("vin"));
	        context.put("stock", (String) oneRow.get(0).get("stock"));
	        context.put("mileage", (String) oneRow.get(0).get("mileage"));
	        context.put("pdffilePath", findpath);
	        
	        
	        if(model.getPreferred() != null){
	        	context.put("preferred", model.getPreferred());
	        }else{
	        	context.put("preferred", "");
	        }
	        
	        context.put("optionValue",  optionValue);
	        
	       
	    //    vehicale info
	        
	        System.out.println(model.getYear());
	        if(model.getYear() != null){
	        	context.put("yearValue", model.getYear());
	        }else{
	        	context.put("yearValue", "");
	        }
	        if(model.getMake() != null){
	        	context.put("makeValue", model.getMake());
	        }else{
	        	context.put("makeValue", "");
	        }
	        if(model.getModel() != null){
	        	context.put("modelValue", model.getModel());
	        }else{
	        	context.put("modelValue", "");
	        }
	        if(model.getExterior_colour() != null){
	        	context.put("exterior_colour", model.getExterior_colour());
	        }else{
	        	context.put("exterior_colour", "");
	        }
	        
	        if(model.getKilometres() != null){
	        	  context.put("kilometres", model.getKilometres());
	        }else{
	        	context.put("kilometres", "");
	        }
	      
	        if(model.getEngine() != null){
	        	context.put("engine", model.getEngine());
	        }else{
	        	context.put("engine", "");
	        }
	        
	        if(model.getModel() != null){
	        	 context.put("doors", model.getModel());
	        }else{
	        	 context.put("doors", "");
	        }
	       
	        if(model.getTransmission() != null){
	        	 context.put("transmission", model.getTransmission());
	        }else{
	        	 context.put("transmission","");
	        }
	       
	        if(model.getDrivetrain() != null){
	        	context.put("drivetrain", model.getDrivetrain());
	        }else{
	        	context.put("drivetrain", "");
	        }
	        
	        
	       // vehicale rating
	        
	        if(model.getBody_rating() != null){
	        	 context.put("body_rating", model.getBody_rating());
	        }else{
	        	 context.put("body_rating", "");
	        }
	        
	        if(model.getBody_rating() != null){
	        	 context.put("body_rating", model.getBody_rating());
	        }else{
	        	 context.put("body_rating", "");
	        }
	       
	        if(model.getTire_rating() != null){
	        	context.put("tire_rating", model.getTire_rating());
	        }else{
	        	context.put("tire_rating", "");
	        }
	        
	        if(model.getEngine_rating() != null){
	        	context.put("engine_rating", model.getEngine_rating());
	        }else{	
	        	context.put("engine_rating", "");
	        }
	        
	        if(model.getTransmission_rating() != null){
	        	 context.put("transmission_rating", model.getTransmission_rating());
	        }else{
	        	 context.put("transmission_rating", "");
	        }
	       
	        if(model.getGlass_rating() != null){
	        	context.put("glass_rating", model.getGlass_rating());
	        }else{
	        	context.put("glass_rating", "");
	        }
	        
	        if(model.getInterior_rating() != null){
	        	 context.put("interior_rating", model.getInterior_rating());
	        }else{
	        	 context.put("interior_rating", "");
	        }
	       
	        if(model.getExhaust_rating() != null){
	        	context.put("exhaust_rating", model.getExhaust_rating());
	        }else{
	        	context.put("exhaust_rating", "");
	        }
	        
	        
	      //  vehicale History
	        
	        if(model.getRental_return() != null){
	        	context.put("lease_or_rental", model.getRental_return());
	        }else{
	        	context.put("lease_or_rental", "");
	        }
	        
	        if(model.getOdometer_accurate() != null){
	        	context.put("operational_and_accurate", model.getOdometer_accurate());
	        }else{
	        	context.put("operational_and_accurate", "");
	        }
	        
	        if(model.getService_records() != null){
	        	context.put("service_record", model.getService_records());
	        }else{
	        	context.put("service_record", "");
	        }
	        
	        
	      //  title History
	        
	        if(model.getLienholder() != null){
	        	context.put("lienholder", model.getLienholder());
	        }else{
	        	context.put("lienholder", "");
	        }
	        
	        if(model.getTitleholder() != null){
	        	context.put("holds_this_title", model.getTitleholder());
	        }else{
	        	context.put("holds_this_title", "");
	        }
	        
	        
	        
	        //Vehicle Assessment
	        
	        if(model.getEquipment() != null){
	        	context.put("equipment", model.getEquipment());
	        }else{
	        	context.put("equipment", "");
	        }
	        
	        if(model.getVehiclenew() != null){
	        	context.put("vehiclenew", model.getVehiclenew());
	        }else{
	        	context.put("vehiclenew", "");
	        }
	        
	        if(model.getAccidents() != null){
	        	context.put("accidents", model.getAccidents());
	        }else{
	        	context.put("accidents", "");
	        }
	        
	        if(model.getDamage() != null){
	        	context.put("damage", model.getDamage());
	        }else{
	        	context.put("damage", "");
	        }
	        
	        if(model.getPaint() != null){
	        	context.put("paint", model.getPaint());
	        }else{
	        	context.put("paint", "");
	        }
	        
	        if(model.getSalvage() != null){
	        	context.put("salvage", model.getSalvage());
	        }else{
	        	context.put("salvage", "");
	        }
	        
	        
	        context.put("sitelogo", logo);
	        context.put("path", path);
	        context.put("heading1", heading1);
	        context.put("heading2", heading2);
	        context.put("urlLink", hostUrl);
	        context.put("urlfind", urlfind);
	        context.put("hostnameimg",  hostnameimg);
	        
	        
	        StringWriter writer = new StringWriter();
	        t.merge( context, writer );
	        String content = writer.toString(); 
	       // attachPart.attachFile(file);
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
		
		
		
	}
	
	
	public static void createDir(String pdfRootDir,int userId, int lastId) {
        File file = new File(pdfRootDir + File.separator+ userId +File.separator+ "trade_in_pdf"+File.separator+lastId);
        if (!file.exists()) {
                file.mkdirs();
        }
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
		
		List<Map<String, Object>> headingtext = jdbcTemplate.queryForList("select * from site_content where user_id = '"+userId+"'");
		
		String heading1 = "",heading2 = "";
		String heading = (String) headingtext.get(0).get("heading");
		if(heading != null) {
	        int index= heading.lastIndexOf(" ");
	        heading1 = heading.substring(0, index);
	        heading2 = heading.substring(index+1);
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
					InternetAddress.parse((String) userMail.get(0).get("communicationemail")));
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
	        
	        
	        context.put("name", request.getName());
	        context.put("email", request.getEmail());
	        context.put("msg", request.getMessage());
	        context.put("number", request.getNumber());
	        context.put("sitelogo", logo);
	        context.put("heading1", heading1);
	        context.put("heading2", heading2);
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

	public String getPhoneno() {
		
		List<Map<String, Object>> phoneno = jdbcTemplate.queryForList("select * from my_profile where user_id = '"+userId+"'"); 
		String phno =(String) phoneno.get(0).get("phone");
		
		String value1 = null;
		String value2 = null;
		String value3 = null;
		
		if(!phno.equals(null)){
			value1 = phno.substring(0, 3);
			value2 = phno.substring(3, 6);
			value3=phno.substring(6,10);	
		}
		
		
		String result="("+value1+")"+" "+value2+"-"+value3;
	
		return result;
	}
	
	
	
}
