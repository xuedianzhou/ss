package com.aaa.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface EmployeesDao {

	@Select("select * from employees")
	public List<Map<String, Object>> empquery();
	@Select("select * from employees where employeeNumber=#{param1}")
	public List<Map<String, Object>> empqueryById(Integer employeeNumber);
	@Insert("insert into employees(employeeNumber,lastName,firstName,extension,email,officeCode,reportsTo,jobTitle) values(#{param1},#{param2},#{param3},#{param4},#{param5},#{param6},#{param7},#{param8})")
	public boolean empadd(Integer employeeNumber,String lastName,String firstName,String extension,String email,String officeCode,Integer reportsTo,String jobTitle);
	@Delete("delete from employees where employeeNumber=#{param1}")
	public boolean empdelete(Integer employeeNumber);
	@Update("update employees set lastName=#{param1},firstName=#{param2},extension=#{param3},email=#{param4},officeCode=#{param5},reportsTo=#{param6},jobTitle=#{param7} where employeeNumber=#{param8}")
	public boolean empupdate(String lastName,String firstName,String extension,String email,String officeCode,Integer reportsTo,String jobTitle,Integer employeeNumber);
	
}
