<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'photolist.jsp' starting page</title>
    
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
    <table>
    <tr>
    <td>图片序列</td>
    <td>图片地址</td>
    <td>删除操作</td>
    <td>切换操作</td>
    </tr>
    <c:forEach var="yh" items="${list}" >
    <tr>
    <td>${yh.id}</td>
    <td>${yh.address}</td>
    <td><a href="deletephoto.do?id=${yh.id}">删除</a></td>
    <td><a href="MannagerChange.do?id=${yh.id}">切换</a></td>
    </tr>
    </c:forEach>
    </table>
  </body>
</html>
