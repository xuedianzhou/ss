<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  	<a href="empquery">员工查询</a>
  	<a href="cusquery">客户查询</a>
  	<form action="login" method="post">
  		<table>
  			<tr>
  				<td>用户名</td>
  				<td>
  					<input type="text" name="cname">
  				</td>
  			</tr>
  			<tr>
  				<td>密码</td>
  				<td>
  					<input type="text" name="pwd">
  				</td>
  			</tr>
  			<tr> 
  				<td>
  					<input type="submit" value="提交">
  				</td>
  			</tr>
  		</table>
  	</form>
  </body>
</html>
