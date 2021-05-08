package com.pms.member;

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
public class MemberController {

	@Autowired
	MemberService memberservice;

	@RequestMapping(value="/join.do", method = RequestMethod.POST)
	public String join(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		return "member/join";
	}
	@RequestMapping(value="/joinProc.do", method = RequestMethod.POST)
	public String joinProc(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		HashMap<String, Object> map = CommUtil.getParameterEMap(request);
		return memberservice.joinProc(request, response, model, map);
	}
	@RequestMapping(value="/login.do", method = RequestMethod.POST)
	public String login(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		return "member/login";
	}
	@RequestMapping(value="/loginProc.do", method = RequestMethod.POST)
	public String loginProc(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		HashMap<String, Object> map = CommUtil.getParameterEMap(request);
		return memberservice.loginProc(request, response, model, map);
	}

}
