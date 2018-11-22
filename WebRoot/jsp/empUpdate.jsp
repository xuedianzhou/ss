<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'empUpdate.jsp' starting page</title>
    
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
  	<form action="empupdate" method="post">
  	<input type="text" value="${queryById[0].employeeNumber }" name="employeeNumber">
  		<table>
  			<tr>
  				<td>lastName</td>
  				<td>
  					<input type="text" name=lastName value="${queryById[0].lastName }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>firstName</td>
  				<td>
  					<input type="text" name="firstName" value="${queryById[0].firstName }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>extension</td>
  				<td>
  					<input type="text" name="extension" value="${queryById[0].extension }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>email</td>
  				<td>
  					<input type="text" name="email" value="${queryById[0].email }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>officeCode</td>
  				<td>
  					<input type="text" name="officeCode" value="${queryById[0].officeCode }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>reportsTo</td>
  				<td>
  					<input type="text" name="reportsTo" value="${queryById[0].reportsTo }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>jobTitle</td>
  				<td>
  					<input type="text" name="jobTitle" value="${queryById[0].jobTitle }"/>
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
