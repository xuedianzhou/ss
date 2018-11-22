package com.aaa.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.entity.User;
import com.aaa.service.UserService;

@Controller
public class UserController {

	@Resource
	private UserService uservice;
	
	@RequestMapping("login")
	public String querylogin(String cname,String pwd){
		List<Map<String, Object>> querylogin = uservice.login(cname,pwd);
		if(querylogin.size()>0){
			return "jsp/success";
		}else{
			return "error";
		}
	}
	
	@RequestMapping("query")
	@ResponseBody
	public List query(){
		List<Map<String, Object>> query = uservice.query();
		System.out.println(query);
		return query;
	}
	
	@RequestMapping("add")
	public String add(User user){
		System.out.println(user);
		int add = uservice.add(user.getCname(), user.getPwd(), user.getEid(), user.getOperation());
		if(add>0){
			return "redirect:query";
		}else{
			return "error";
		}
	}

	@RequestMapping("delete")
	public String delete(Integer cid){
		int delete = uservice.delete(cid);
		if(delete>0){
			return "redirect:query";
		}else{
			return "error";
		}
	}
	
	@RequestMapping("update")
	public String update(String cname,String pwd,Integer eid,String operation,Integer cid){
		System.out.println(operation);
		int update = uservice.update(cname, pwd, eid, operation,cid);
		if(update>0){
			return "redirect:query";
		}else{
			return "error";
		}
	}
	
	@RequestMapping("updateById")
	public String queryById(Integer cid,Model model){
		List<Map<String, Object>> queryById = uservice.queryById(cid);
		model.addAttribute("queryById", queryById);
		if(queryById.size()>0){
			return "jsp/queryById";
		}else{
			return "error";
		}
	}
	
}
