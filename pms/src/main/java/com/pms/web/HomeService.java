package com.pms.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pms.vo.MemberVO;

@Service
public class HomeService{
	@Autowired
	private HomeMapper mapper;
	
	public List<MemberVO> selectNow() {
		return mapper.selectNow();
	}
}
