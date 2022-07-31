package com.pms.project;

import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

@Service
public class ProjectService {

	@Autowired
	ProjectMapper projectmapper;

	public String writeProc(HttpServletRequest request, HttpServletResponse response, ModelMap model,
			HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		projectmapper.writeProc(map);

		return "redirect:/index.do";
	}

	public List<HashMap<Object, String>> listProc() {
		// TODO Auto-generated method stub
		return projectmapper.listProc();
	}

	public String updateProc(HttpServletRequest request, HttpServletResponse response, ModelMap model,
			HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		projectmapper.updateProc(map);
		return "redirect:/index.do";
	}

	public String deleteProc(HttpServletRequest request, HttpServletResponse response, ModelMap model,
			HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		projectmapper.deleteProc(map);
		return "redirect:/index.do";
	}

	public int idCount(String id) {
		// TODO Auto-generated method stub
		return projectmapper.idCount(id);
	}
}
