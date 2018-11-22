
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
	<%@include file="include.jsp" %>

	
	<script type="text/javascript">
		$(function(){
			
			$("#west a").click(function(){
				var title=$(this).html();
				var url = $(this).attr("url");
				var tabs = $("#tt").tabs("tabs");
				alert(tabs.length);
				if(tabs.length>1){
					$.messager.confirm('确认','打开窗口过多,是否关闭已打开窗口?',function(r){    
					    if (r){    
					        for(var i=tabs.length;i>=0;i--){
					        	$("#tt").tabs("close",i);
					        }
					    }    
					});
				}else{
					// 判断当前窗口是否已经打开
					if($("#tt").tabs("exists",title)){
						$("#tt").tabs("select",title);
					}else{
						// 添加新的选项卡
						$('#tt').tabs('add',{    
						    title:title,    
						    content:"<iframe src='"+url+"' frameborder='0' width='100%' height='100%'></iframe>",    
						    closable:true, // 是否可以关闭
						    tools:[{
								iconCls:'icon-mini-refresh',
								handler:function(){
									alert('添加');
								}
							}]
						});
					}
				}
			});
			
		});
		
	</script>
  </head>
  
  <body class="easyui-layout">
	
	<div data-options="region:'north',split:true" style="height:80px;">
		logo
		admin 退出
	</div>
	    
    <div id="west" data-options="region:'west',title:'West',split:true" style="width:200px;">
    	<a href="javascript:void(0)" url="jsp/success.jsp">用户管理</a><br/>
    	<a href="javascript:void(0)" url="">员工管理</a><br/>
    	<a href="javascript:void(0)" url="">部门管理</a><br/>
    </div>   
    
    <div data-options="region:'center'">
    	<div id="tt" class="easyui-tabs" style="width:100%;height:100%;">
		</div> 
    </div>   
	
	<div data-options="region:'south',split:true" style="height:30px;">
    	<center>版权所有：A309</center>
    </div> 
	
  </body>
</html>
