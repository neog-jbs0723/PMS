package com.pms.project;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProjectMapper {

	void writeProc(HashMap<String, Object> map);

	List<HashMap<Object, String>> listProc();

}
