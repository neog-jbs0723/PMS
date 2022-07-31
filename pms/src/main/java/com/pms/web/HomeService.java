package com.pms.web;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HomeService{

	@Autowired
	private HomeMapper homemapper;

	public List<HashMap<String, Object>> selectNow() {
		return homemapper.selectNow();
	}
}
