package com.pms.project;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProjectMapper {

	void writeProc(HashMap<String, Object> map);

}
