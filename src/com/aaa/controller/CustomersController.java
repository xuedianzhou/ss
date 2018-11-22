package com.aaa.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aaa.service.CustomersUservice;

@Controller
public class CustomersController {
	
	@Resource
	private CustomersUservice cuservice;
	
	@RequestMapping("cusquery")
	public String cusquery(Model model){
		List<Map<String, Object>> query = cuservice.cusquery();
		model.addAttribute("query", query);
		return "jsp/customers";
	}
	@RequestMapping("cusqueryById")
	public String cusqueryById(Integer customerNumber,Model model){
		List<Map<String, Object>> queryById = cuservice.cusqueryById(customerNumber);
		model.addAttribute("queryById", queryById);
		if(queryById.size()>0){
			return "jsp/cusUpdate";
		}else{
			return "error";
		}
	}
	@RequestMapping("cusadd")
	public String cusadd(Integer customerNumber,String customerName,String contactLastName,String phone,String addressLine1,String city,String country){
		boolean add = cuservice.cusadd(customerNumber, customerName, contactLastName, phone, addressLine1, city, country);
		if(add){
			return "redirect:cusquery";
		}else{
			return "error";
		}
	}
	@RequestMapping("cusdelete")
	public String cusdelete(Integer customerNumber){
		System.out.println(customerNumber);
		boolean delete = cuservice.cusdelete(customerNumber);
		if(delete){
			return "redirect:cusquery";
		}else{
			return "error";
		}
	}
	@RequestMapping("cusupdate")
	public String cusupdate(String customerName,String contactLastName,String phone,String addressLine1,String city,String country,Integer customerNumber){
		boolean update = cuservice.cusupdate(customerName, contactLastName, phone, addressLine1, city, country, customerNumber);
		if(update){
			return "redirect:cusquery";
		}else{
			return "error";
		}
	}
}
