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

	@RequestMapping(value="/writeProc.do", method = RequestMethod.POST)
	public String writeProc(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws UnsupportedEncodingException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		HashMap<String, Object> map = CommUtil.getParameterEMap(request);

		return projectservice.writeProc(request, response, model, map);
	}

	@RequestMapping(value="/detail.do", method = RequestMethod.GET)
	public String detail(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		return "doingproject/detail";
	}

	@RequestMapping(value="/updateProc.do", method = RequestMethod.POST)
	public String updateProc(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws UnsupportedEncodingException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		HashMap<String, Object> map = CommUtil.getParameterEMap(request);

		return projectservice.updateProc(request, response, model, map);
	}

	@RequestMapping(value="/deleteProc.do", method = RequestMethod.POST)
	public String deleteProc(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws UnsupportedEncodingException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		HashMap<String, Object> map = CommUtil.getParameterEMap(request);

		return projectservice.deleteProc(request, response, model, map);
	}
}
