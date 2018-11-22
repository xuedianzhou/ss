package com.aaa.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aaa.dao.EmployeesDao;

@Service
public class EmployeesUservice {
	@Resource
	public EmployeesDao edao;
	
	public List<Map<String, Object>> empquery(){
		return edao.empquery();
	}
	public List<Map<String, Object>> empqueryById(Integer employeeNumber){
		return edao.empqueryById(employeeNumber);
	}
	public boolean empadd(Integer employeeNumber,String lastName,String firstName,String extension,String email,String officeCode,Integer reportsTo,String jobTitle){
		return edao.empadd(employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle);
	}
	public boolean empdelete(Integer employeeNumber){
		return edao.empdelete(employeeNumber);
	}
	public boolean empupdate(String lastName,String firstName,String extension,String email,String officeCode,Integer reportsTo,String jobTitle,Integer employeeNumber){
		return edao.empupdate(lastName, firstName, extension, email, officeCode, reportsTo, jobTitle, employeeNumber);
	}
	
}
