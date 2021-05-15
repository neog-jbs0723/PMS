package com.pms.project;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pms.util.CommUtil;

@Controller
public class ProjectController {

	@Autowired
	ProjectService projectservice;

	@RequestMapping(value="/write.do", method = RequestMethod.GET)
	public String write(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		return "doingproject/write";
	}
}
