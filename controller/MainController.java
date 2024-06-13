package com.tms.controller;


import java.util.Date;
import java.time.*;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.tms.model.AccessControl;
import com.tms.model.Admin;
import com.tms.repository.AccessControlRepo;
import com.tms.repository.AdminRepo;

@Controller
public class MainController {
	
	@Autowired
	AdminRepo ar;
	
	@Autowired
	AccessControlRepo acr;
	
	

	@GetMapping("/")
	public String home()
	{
		return "index";
	}
	
	@RequestMapping("/admin")
	public String admin()
	{
		return "Adminlogin";
	}
	
	@RequestMapping("/adminloginPage")
	public String loginPage(Model data,@RequestParam String email,@RequestParam String password) 
	{
		
		if(email.equalsIgnoreCase("admin@tms.in") && password.equals("admin")) {
			
			List<AccessControl> al=acr.findAll();
			
			System.out.println(al);
			
			data.addAttribute("a_data",al);
			
			return "dataFetch";
		} else {
		    return "Adminlogin";
		}
	}
	
	@RequestMapping("/AdminMenu/{id}")
	public String adminMenu(@PathVariable int id, Model model) {
	    model.addAttribute("taskId", id);
	    return "Admin";		
	}
	
	

	@PostMapping("/submitform1")
	public String saveTask(@ModelAttribute Admin a) {
	
	    a.setAddedDate(LocalDate.now());
	    ar.save(a);
	    return "Result";
	}
	
	
	
		
	
	@RequestMapping("/User")
	public String UserTask(Model data)
	{
		
		List<Admin> al=ar.findAll();

		data.addAttribute("aa_data",al);
		
		return "User";
	}
		
	
}
