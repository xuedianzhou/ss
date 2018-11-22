<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cusadd.jsp' starting page</title>
    
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
    <form action="cusadd" method="post">
  		<table>
  			<tr>
  				<td>customerNumber</td>
  				<td>
  					<input type="text" name="customerNumber"/>
  				</td>
  			</tr>
  			<tr>
  				<td>customerName</td>
  				<td>
  					<input type="text" name="customerName"/>
  				</td>
  			</tr>
  			<tr>
  				<td>contactLastName</td>
  				<td>
  					<input type="text" name="contactLastName"/>
  				</td>
  			</tr>
  			<tr>
  				<td>phone</td>
  				<td>
  					<input type="text" name="phone"/>
  				</td>
  			</tr>
  			<tr>
  				<td>addressLine1</td>
  				<td>
  					<input type="text" name="addressLine1"/>
  				</td>
  			</tr>
  			<tr>
  				<td>city</td>
  				<td>
  					<input type="text" name="city"/>
  				</td>
  			</tr>
  			<tr>
  				<td>country</td>
  				<td>
  					<input type="text" name="country"/>
  				</td>
  			</tr>
  			<tr>
  				<td></td>
  				<td>
  					<input type="submit" value="提交"/>
  				</td>
  			</tr>
  		</table>
  	</form>
  </body>
</html>
