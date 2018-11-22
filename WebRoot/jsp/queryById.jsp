<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateById.jsp' starting page</title>
    
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
  	<form action="update" method="post">
  	<input type="text" value="${queryById[0].cid }" name="cid">
  		<table>
  			<tr>
  				<td>用户名</td>
  				<td>
  					<input type="text" name="cname" value="${queryById[0].cname }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>密码</td>
  				<td>
  					<input type="text" name="pwd" value="${queryById[0].pwd }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>员工编号</td>
  				<td>
  					<input type="text" name="eid" value="${queryById[0].eid }"/>
  				</td>
  			</tr>
  			<tr>
  				<td>修改人</td>
  				<td>
  					<input type="text" name="operation" value="${queryById[0].operation }"/>
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
