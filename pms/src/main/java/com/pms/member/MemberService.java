package com.pms.member;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.pms.util.CommUtil;

@Service
public class MemberService {

	@Autowired
	MemberMapper membermapper;

	public String loginProc(HttpServletRequest request, HttpServletResponse response, ModelMap model,
			HashMap<String, Object> map) {
		// TODO loginProc : 로그인 처리

		String id = membermapper.selectLoginId(map);
		if(!id.equals("")){
			CommUtil.setSession(request, model, id);
			return CommUtil.doCompleteUrl(model, "성공", "로그인 성공!", "/index.do");
		}
		return "redirect:/login.do";
	}

	public String joinProc(HttpServletRequest request, HttpServletResponse response, ModelMap model,
			HashMap<String, Object> map) {
		// TODO: joinProc : 회원가입 처리
		try{
			membermapper.insertMember(map);
		}catch (Exception e){
			e.printStackTrace();
		}
		return "redirect:/login.do";
	}
}
