package com.pms.project;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.pms.util.CommUtil;

@Controller
public class ProjectController {

	@Autowired
	ProjectService projectservice;

	@RequestMapping(value="/write.do")
	public String write(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		CommUtil.getSession(request,model);
		return "doingproject/write";
	}

	@RequestMapping(value="/writeProc.do")
	public String writeProc(@RequestParam("thumbnail") MultipartFile thumbnail, HttpServletRequest request, HttpServletResponse response, ModelMap model) throws UnsupportedEncodingException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		HashMap<String, Object> map = CommUtil.getParameterEMap(request);
		map.put("thumbnail", thumbnail);

		return projectservice.writeProc(request, response, model, map);
	}

	@RequestMapping(value="/detail.do")
	public String detail(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		return "doingproject/detail";
	}

	@RequestMapping(value="/updateProc.do")
	public String updateProc(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws UnsupportedEncodingException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		HashMap<String, Object> map = CommUtil.getParameterEMap(request);

		return projectservice.updateProc(request, response, model, map);
	}

	@RequestMapping(value="/deleteProc.do")
	public String deleteProc(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws UnsupportedEncodingException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		HashMap<String, Object> map = CommUtil.getParameterEMap(request);

		return projectservice.deleteProc(request, response, model, map);
	}

	@RequestMapping(value="/cssTest.do")
	public String cssTest(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws UnsupportedEncodingException {

		return "doingproject/cssTest";
	}
}
