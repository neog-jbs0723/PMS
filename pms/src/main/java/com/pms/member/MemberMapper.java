package com.pms.member;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	String selectLoginId(HashMap<String, Object> map);

	void insertMember(HashMap<String, Object> map);

}
