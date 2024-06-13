package com.tms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tms.model.AccessControl;
import com.tms.model.Admin;
import com.tms.repository.AccessControlRepo;
import com.tms.repository.AdminRepo;

@Controller
public class DashboardController {
	
	@Autowired
	AdminRepo aa;

	
	@RequestMapping("/dashboard")
	public String UserTask(Model data)
	{
		List<Admin> al=aa.findAll();
	
		data.addAttribute("aa_data",al);
		
		return "Dashboard";
	}
	
	
	
}
