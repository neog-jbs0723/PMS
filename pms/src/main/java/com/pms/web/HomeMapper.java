package com.pms.web;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.pms.vo.MemberVO;

@Mapper
public interface HomeMapper {
	List<MemberVO> selectNow();
}
