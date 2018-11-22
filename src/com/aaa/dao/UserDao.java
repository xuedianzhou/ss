package com.aaa.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface UserDao {

	@Select("select * from user where cname=#{param1} and pwd=#{param2}")
	public List<Map<String,Object>> login(String cname,String pwd);

	@Select("select * from user")
	public List<Map<String,Object>> query();
	
	@Insert("insert into user(cname,pwd,eid,operation) value(#{param1},#{param2},#{param3},#{param4})")
	public int add(String cname,String pwd,Integer eid,String operation);
	
	@Delete("delete from user where cid=#{param1}")
	public int delete(Integer cid);
	
	@Update("update user set cname=#{param1},pwd=#{param2},eid=#{param3},operation=#{param4} where cid=#{param5}")
	public int update(String cname,String pwd,Integer eid,String operation,Integer cid);
	
	@Select("select * from user where cid=#{param1}")
	public List<Map<String, Object>> queryById(Integer cid);
}
