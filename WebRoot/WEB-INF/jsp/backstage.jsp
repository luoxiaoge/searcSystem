<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>湖北省食品药品检查研究院后台管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	  <style type="text/css">
        *{margin: 0}
         #d1 {
             font-size: 70px;
            
             text-align:center;
             background-color: #000000;
             color: white;
             height: 100px;
             width: 100%
         }
        #d2{
            font-size: 50px;
            height: 1000px;
            width: 400px;
            background-color: gray;
            float:left;
        }
        #d2 ul li ul{
             font-size: 25px;
             color: white;
         }
        #d2 ul li ul a{

            color: white;
        }
        #ul_1{
            padding-top: 30px;
            padding-left: 50px;
        }
        ul{list-style: none}
        a{text-decoration: none}
        ui li ul{dispaly:none}
        #main-right{
             float:left;
             width:1500px;
             height:1000px;
             background-color:white;
             
        }
        #main{
               height:1010px;
               width:1900px;
             
        }
        #frame1{
            width:1500px;
            height:1010px;
            frameborder="0";
            scrolling="no" 
            allowtransparency="yes";
        }
    </style>
     
    <script type="text/javascript">
        function hide(obj){
            var a=document.getElementById("u"+obj.id);
            if(a.style.display=="none"){
                a.style.display="block";
            }else{
                a.style.display="none";
            }
        }
    </script>
 
  </head>
  <body>
      <div id="d1">
      <span>湖北省食品药品检查研究院后台管理系统</span>
   </div>
   <div id="main">
   <div id="d2">
      <ul id="ul_1">
            <li id="li_1" onclick="hide(this)"><a>首页管理</a>
                 <ul id="uli_1">
                     <li><a href="fileupload.jsp" target="frame1">上传图片</a></li>
                     <li><a href="photolist.do" target="frame1">首页图片</a></li>
                 </ul>
            </li>
            <li id="li_2" onclick="hide(this)"><a>关于本院</a>
                <ul id="uli_2" >
                    <li><a href="findIns.do" target="frame1">本院简介</a></li>
                    <li><a href="specialistfileupload.jsp" target="frame1">专家学者</a></li>
                    <li><a href="about/organizer.jsp" target="frame1">组织机构</a></li>
                </ul>
            </li>
            <li id="li_3" onclick="hide(this)"><a >办事指南</a>
                <ul id="uli_3">
                    <li><a href="">检验须知</a></li>
                    <li><a href="">收费标准</a></li>
                    <li><a href="">质量体系</a></li>
                </ul>
            </li>
            <li id="li_4" onclick="hide(this)"><a>联系我们</a>
                 <ul id="uli_4">
                     <li><a href="contact/addressphoto.jsp" target="frame1">地图位置</a></li>
                     <li><a href="">部门电话</a></li>
                 </ul>
            </li>
        </ul>
   </div>
   <div id="main-right">
     <iframe id="frame1" name="frame1" ></iframe>
   </div>
  </div>
 </body>
 </html>
