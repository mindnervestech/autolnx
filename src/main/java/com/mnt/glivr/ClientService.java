package com.mnt.glivr;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.mnt.views.VehicleImage;
import com.mnt.views.VehicleVM;

@Service
public class ClientService {
	
	int clientId = 1; //Hardcode for now
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<String> getSliderImages() {
		int userId = 336920057;
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("select * from slider_image where user_id = '"+userId+"'");
		List<String> sliderUrls = new ArrayList<String>();
		for(Map map : rows) {
			String url = (String) map.get("path");
			sliderUrls.add(url);
		}
		return sliderUrls;
	}

	public List<String> getFeaturedImages() {
		int userId = 336920057;
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("select * from featured_image where user_id = '"+userId+"' ");
		List<String> featuredUrls = new ArrayList<String>();
		for(Map map : rows) {
			String url = (String) map.get("path");
			featuredUrls.add(url);
		}
		return featuredUrls;
	}
	
	public List<VehicleVM> getVehicles(int start) {
		int userId = 336920057;
		List<VehicleVM> vehicleList = new ArrayList<VehicleVM>();
		List<Map<String, Object>> rows = jdbcTemplate.queryForList("select * from vehicle where user_id = '"+userId+"' limit "+start+",16 ");
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
			vm.mileage = (String) map.get("mileage");
			Integer price = (Integer) map.get("price");
			vm.price = "$"+price.toString();
			vm.stock = (String) map.get("stock");
			vm.transmission = (String) map.get("transmission");
			vm.vin = (String) map.get("vin");
			vm.year = (String) map.get("year");
			
			List<Map<String, Object>> vehiclePath = jdbcTemplate.queryForList("select path from vehicle_image where user_id = '"+userId+"' and vin = '"+vm.vin+"' and default_image = true");
			vm.path = (String) vehiclePath.get(0).get("path");
			
			vehicleList.add(vm);
		}
		
		return vehicleList;
	}
	
	public VehicleVM getVehicleDetails(String vin) {
		int userId = 336920057;
		List<Map<String, Object>> row = jdbcTemplate.queryForList("select * from vehicle where user_id = '"+userId+"' and vin= '"+vin+"' ");
		VehicleVM vehicleVM = new VehicleVM();
		List<Map<String, Object>> videoUrl = jdbcTemplate.queryForList("select desktop_url from virtual_tour where user_id= '"+userId+"' and vin= '"+vin+"' ");
		vehicleVM.videoUrl = (String) videoUrl.get(0).get("desktop_url");
		
		List<Map<String, Object>> audioUrl = jdbcTemplate.queryForList("select path from vehicle_audio where user_id= '"+userId+"' and vin= '"+vin+"' ");
		vehicleVM.audioUrl = (String) audioUrl.get(0).get("path");
 		vehicleVM.audioNavFeatures = (String) row.get(0).get("audio_nav_features");
 		vehicleVM.bodyStyle = (String) row.get(0).get("body_style");
 		vehicleVM.year = (String) row.get(0).get("year");
 		vehicleVM.make = (String) row.get(0).get("make");
 		vehicleVM.model = (String) row.get(0).get("model");
 		vehicleVM.fuelType = (String) row.get(0).get("fuel");
 		vehicleVM.mileage = (String) row.get(0).get("mileage");
 		vehicleVM.transmission = (String) row.get(0).get("transmission");
 		vehicleVM.condition = "";
 		vehicleVM.location = (String) row.get(0).get("location");
 		Integer price = (Integer) row.get(0).get("price");
 		vehicleVM.price = "$"+price.toString();
 		vehicleVM.drivetrain = (String) row.get(0).get("drivetrain");
 		vehicleVM.engine = (String) row.get(0).get("engine");
 		vehicleVM.extColor = (String) row.get(0).get("exterior_color");
 		vehicleVM.intColor = (String) row.get(0).get("interior_color");
 		String city = (String) row.get(0).get("city_mileage");
 		String cityVal[] = city.split(" ");
 		vehicleVM.cityMileage = cityVal[0];
 		String highway = (String) row.get(0).get("highway_mileage");
 		String hghwVal[] = highway.split(" ");
 		vehicleVM.highwayMileage = hghwVal[0];
 		vehicleVM.stock = (String) row.get(0).get("stock");
 		vehicleVM.vin = (String) row.get(0).get("vin");
 		vehicleVM.styleFeatures = (String) row.get(0).get("style_features");
 		vehicleVM.safetyFeatures = (String) row.get(0).get("safety_features");
 		vehicleVM.audioNavFeatures = (String) row.get(0).get("audio_nav_features");
 		vehicleVM.performanceFeatures = (String) row.get(0).get("performance_features");
 		vehicleVM.otherCarFeatures = (String) row.get(0).get("other_car_features");
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
	
}
