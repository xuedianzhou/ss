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
    
    <title>My JSP 'customers.jsp' starting page</title>
    
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
  	<a href="jsp/cusadd.jsp">添加</a>
  	<table border="1">
  		<tr>
  			<td>customerNumber</td>
  			<td>customerName</td>
  			<td>contactLastName</td>
  			<td>contactFirstName</td>
  			<td>phone</td>
  			<td>addressLine1</td>
  			<td>addressLine2</td>
  			<td>city</td>
  			<td>state</td>
  			<td>postalCode</td>
  			<td>country</td>
  			<td>salesRepEmployeeNumber</td>
  			<td>creditLimit</td>
  		</tr>
  		<c:forEach items="${query }" var="cus">
  			<tr>
	  			<td>${cus.customerNumber }</td>
	  			<td>${cus.customerName }</td>
	  			<td>${cus.contactLastName }</td>
	  			<td>${cus.contactFirstName }</td>
	  			<td>${cus.phone }</td>
	  			<td>${cus.addressLine1 }</td>
	  			<td>${cus.addressLine2 }</td>
	  			<td>${cus.city }</td>
	  			<td>${cus.state }</td>
	  			<td>${cus.postalCode }</td>
	  			<td>${cus.country }</td>
	  			<td>${cus.salesRepEmployeeNumber }</td>
	  			<td>${cus.creditLimit }</td>
	  			<td>
	  				<a href="cusqueryById?customerNumber=${cus.customerNumber }">修改</a>
	  				<a href="cusdelete?customerNumber=${cus.customerNumber }">删除</a>
	  			</td>
	  		</tr>
  		</c:forEach>
  	</table>
  </body>
</html>
