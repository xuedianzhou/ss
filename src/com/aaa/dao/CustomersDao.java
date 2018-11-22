package com.aaa.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface CustomersDao {

	@Select("select * from customers")
	public List<Map<String,Object>> cusquery();
	@Select("select * from customers where customerNumber=#{param1}")
	public List<Map<String,Object>> cusqueryById(Integer customerNumber);
	@Insert("insert into customers(customerNumber,customerName,contactLastName,phone,addressLine1,city,country) values(#{param1},#{param2},#{param3},#{param4},#{param5},#{param6},#{param7})")
	public boolean cusadd(Integer customerNumber,String customerName,String contactLastName,String phone,String addressLine1,String city,String country);
	@Delete("delete from customers where customerNumber=#{param1}")
	public boolean cusdelete(Integer customerNumber);
	@Update("update customers set customerName=#{param1},contactLastName=#{param2},phone=#{param3},addressLine1=#{param4},city=#{param5},country=#{param6} where customerNumber=#{param7}")
	public boolean cusupdate(String customerName,String contactLastName,String phone,String addressLine1,String city,String country,Integer customerNumber);
	
	

}
