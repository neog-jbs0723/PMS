package com.pms.util;

import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;

public class CommUtil {
	public static HashMap<String, Object> getParameterEMap(HttpServletRequest request) {
		HashMap<String, Object> parameterMap = new HashMap<String, Object>();
		Enumeration enums = request.getParameterNames();

		while (enums.hasMoreElements()) {
			String paramName = (String) enums.nextElement();
			String[] parameters = request.getParameterValues(paramName);
			if (parameters.length > 1) {
				parameterMap.put(paramName, parameters);
			} else {
				parameterMap.put(paramName, parameters[0]);
			}
		}
		return parameterMap;
	}
	public static void setSession(HttpServletRequest request, ModelMap model, String id) {
		HttpSession session = request.getSession();
		session.setAttribute("id",id);
	}
	public static void getSession(HttpServletRequest request, ModelMap model) {
		HttpSession session = request.getSession();
		model.addAttribute("id",(String)session.getAttribute("id"));
	}
}
