<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'organizer.jsp' starting page</title>
    
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
     <!--定义表单  -->
     <form action="org.do" method="post" enctype="multipart/form-data" name="form1" id="form1"
      onsubmit="return validate()">
             <ul>
                <li>请选择要上传的机构头像</li>
                <li>上传文件：<input type="file" name="file"><!--文件上传主键  --></li>
                <li>机构名字：<input type="text" name="o_name"></li>
                <li>机构详解：<textarea rows="3" cols="10" name="o_text"></textarea></li>
                 <li><input type="submit" name="submit" value="上传">
                  <input type="reset" name="submit2" value="重置">
                 </li>
             </ul>
      </form>
  </body>
</html>
