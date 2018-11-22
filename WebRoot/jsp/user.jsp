<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   	<a href="add.jsp">添加</a>
   	<table border="1">
   		<tr>
   			<td>用户名</td>
   			<td>用户密码</td>
   			<td>员工编号</td>
   			<td>修改人</td>
   			
   			<td>编辑</td>
   		</tr>
	   	<c:forEach items="${list }" var="ls">
	   		<tr>
	   			<td>${ls.cname }</td>
	   			<td>${ls.pwd }</td>
	   			<td>${ls.eid }</td>
	   			<td>${ls.operation }</td>
	   		
	   			<td>
	   				<a href="updateById?cid=${ls.cid }">修改</a>
	   				<a href="delete?cid=${ls.cid }">删除</a>
	   			</td>
	   		</tr>
	   	</c:forEach>
   	</table>
  </body>
</html>
