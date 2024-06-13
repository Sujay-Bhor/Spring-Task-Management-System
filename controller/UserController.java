package com.tms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tms.model.AccessControl;
import com.tms.model.Admin;
import com.tms.repository.AccessControlRepo;
import com.tms.repository.AdminRepo;

@Controller
public class UserController {
	
	@Autowired
	AccessControlRepo acr;
	
	@Autowired
	AdminRepo ar;
	
	@RequestMapping("/user")
	public String userLogin()
	{
		return "UserLogin";
	}
	
	@RequestMapping("/UserloginPage")
	public String UserloginPage(Model data ,@RequestParam String email,@RequestParam String password,String name) 
	{
			AccessControl ac=acr.findByEmail(email);
			
			
			
			
		if(ac.getEmail().equalsIgnoreCase(email) && ac.getPassword().equals(password))
		{	
			
			
			List<Admin> al=ar.findAll();
			List<AccessControl> al1=acr.findAll();
				
			
			
			
			System.out.println(al);
			
			data.addAttribute("aa_data",al);
			
			return "User";
			
		}
		else
		{
			return "UserLogin";
		}
	}
	
	@RequestMapping("/addUser")
	public String addUser()
	{
		
		return "AddUser";	
	}
	
	
	@PostMapping("/submitform2")
	public String saveUser(@ModelAttribute AccessControl ac) {
		
		acr.save(ac);
	    return "Registered";
	}
	

	


}
