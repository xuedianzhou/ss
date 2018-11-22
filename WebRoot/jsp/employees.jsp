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
    
    <title>My JSP 'employees.jsp' starting page</title>
    
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
  	<a href="jsp/empadd.jsp">添加</a>
  	<table border="1">
  		<tr>
  			<td>employeeNumber</td>
  			<td>lastName</td>
  			<td>firstName</td>
  			<td>extension</td>
  			<td>email</td>
  			<td>officeCode</td>
  			<td>reportsTo</td>
  			<td>jobTitle</td>
  			<td>编辑</td>
  		</tr>
  		<c:forEach items="${query }" var="emp">
  			<tr>
	  			<td>${emp.employeeNumber }</td>
	  			<td>${emp.lastName }</td>
	  			<td>${emp.firstName }</td>
	  			<td>${emp.extension }</td>
	  			<td>${emp.email }</td>
	  			<td>${emp.officeCode }</td>
	  			<td>${emp.reportsTo }</td>
	  			<td>${emp.jobTitle }</td>
	  			<td>
	  				<a href="empqueryById?employeeNumber=${emp.employeeNumber }">修改</a>
	  				<a href="empdelete?employeeNumber=${emp.employeeNumber }">删除</a>
	  			</td>
	  		</tr>
  		</c:forEach>
  	</table>
  </body>
</html>
