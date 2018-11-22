<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deptManager.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	
	<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">

  <script type="text/javascript">
  alert(${query});
  </script>
  </head>
  
  <body>
  	<table id="tb" class="easyui-datagrid" style="width: 100%;height: 100%"
  		singleSelect="true" data-options="url:'query',fitColumns:true,toolbar:'#tools'">   
	    <thead>   
	        <tr>   
	            <th data-options="field:'cname',width:50">用户名</th>   
	            <th data-options="field:'pwd',width:100">用户密码</th>   
	            <th data-options="field:'eid',width:100">员工编号</th>
	            <th data-options="field:'operation',width:100">修改人</th>  
	        </tr>   
	    </thead>
	</table>
	
  </body>
</html>
