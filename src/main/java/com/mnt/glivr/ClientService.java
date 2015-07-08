package com.mnt.glivr;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

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
	
}
