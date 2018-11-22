package com.aaa.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aaa.service.EmployeesUservice;

@Controller
public class EmployeesController {

	@Resource
	private EmployeesUservice euservice;
	@RequestMapping("empquery")
	public String empquery(Model model){
		List<Map<String, Object>> query = euservice.empquery();
		model.addAttribute("query", query);
		return "jsp/employees";
	}
	@RequestMapping("empqueryById")
	public String empqueryById(Integer employeeNumber,Model model){
		List<Map<String, Object>> queryById = euservice.empqueryById(employeeNumber);
		model.addAttribute("queryById", queryById);
		if(queryById.size()>0){
			return "jsp/empUpdate";
		}else{
			return "error";
		}
	}
	@RequestMapping("empadd")
	public String empadd(Integer employeeNumber,String lastName,String firstName,String extension,String email,String officeCode,Integer reportsTo,String jobTitle){
		boolean add = euservice.empadd(employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle);
		if(add){
			return "redirect:empquery";
		}else{
			return "error";
		}
	}
	@RequestMapping("empdelete")
	public String empdelete(Integer employeeNumber){
		boolean delete = euservice.empdelete(employeeNumber);
		if(delete){
			return "redirect:empquery";
		}else{
			return "error";
		}
	}
	@RequestMapping("empupdate")
	public String empupdate(String lastName,String firstName,String extension,String email,String officeCode,Integer reportsTo,String jobTitle,Integer employeeNumber){
		boolean update = euservice.empupdate(lastName, firstName, extension, email, officeCode, reportsTo, jobTitle, employeeNumber);
		if(update){
			return "redirect:empquery";
		}else{
			return "error";
		}
	}
}
