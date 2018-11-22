<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cusUpdate.jsp' starting page</title>
    
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
    <form action="cusupdate" method="post">
  	<input type="text" value="${queryById[0].customerNumber }" name="customerNumber">
  		<table>
  			<tr>
  				<td>customerName</td>
  				<td>
  					<input type="text" name=customerName value="${queryById[0].customerName }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>contactLastName</td>
  				<td>
  					<input type="text" name="contactLastName" value="${queryById[0].contactLastName }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>phone</td>
  				<td>
  					<input type="text" name="phone" value="${queryById[0].phone }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>addressLine1</td>
  				<td>
  					<input type="text" name="addressLine1" value="${queryById[0].addressLine1 }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>city</td>
  				<td>
  					<input type="text" name="city" value="${queryById[0].city }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>country</td>
  				<td>
  					<input type="text" name="country" value="${queryById[0].country }"/>
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
