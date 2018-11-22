package com.aaa.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aaa.dao.CustomersDao;
@Service
public class CustomersUservice {

	@Resource
	public CustomersDao cdao;
	
	public List<Map<String,Object>> cusquery(){
		return cdao.cusquery();
	}
	public List<Map<String,Object>> cusqueryById(Integer customerNumber){
		return cdao.cusqueryById(customerNumber);
	}
	public boolean cusadd(Integer customerNumber,String customerName,String contactLastName,String phone,String addressLine1,String city,String country){
		return cdao.cusadd(customerNumber, customerName, contactLastName, phone, addressLine1, city, country);
	}
	public boolean cusdelete(Integer customerNumber){
		return cdao.cusdelete(customerNumber);
	}
	public boolean cusupdate(String customerName,String contactLastName,String phone,String addressLine1,String city,String country,Integer customerNumber){
		return cdao.cusupdate(customerName, contactLastName, phone, addressLine1, city, country, customerNumber);
	}
}
