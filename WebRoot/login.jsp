<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">

	-->
	<style type="text/css">
	    .main{
	        margin:500px 500px;
	    
	    }
	</style>
  
  </head>
  <body>
  <div class="main">
      <form action="login.do" method="post">
         用户名： <input type="text" name="username"><br>
         密&nbsp;码： <input type="password" name="password"><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交">&nbsp;<input type="reset" value="取消">
      </form>
      </div>
  </body>
</html>
