package com.aaa.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aaa.dao.UserDao;

@Service
public class UserService {

	@Resource
	public UserDao udao;
	
	public List<Map<String, Object>> login(String cname,String pwd){
		return udao.login(cname, pwd);
	}
	
	public List<Map<String, Object>> query(){
		return udao.query();
	}
	
	public int add(String cname,String pwd,Integer eid,String operation){
		return udao.add(cname, pwd, eid, operation);
	}
	
	public int delete(Integer cid){
		return udao.delete(cid);
	}
	
	public int update(String cname,String pwd,Integer eid,String operation,Integer cid){
		return udao.update(cname, pwd, eid, operation,cid);
	}
	
	public List<Map<String, Object>> queryById(Integer cid){
		return udao.queryById(cid);
	}
}
