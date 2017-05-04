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
    <title>My JSP 'homepage.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	  <link rel="stylesheet" type="text/css" href="Styles/homepage.css"> 
	   倒入外部外联样式不可以
	-->
	<script type="text/javascript" src="<%=basePath%>/Scripts/jquery-1.7.2.js"></script>
   <style type="text/css">
       *{padding: 0; margin: 0;} 
        body{width: 1903px;  }
        ul{list-style: none;}
        a{text-decoration: none;}
        button{
            font-family: 30px;
            background-color: blue;
        }
        /*指南*/
        ul{list-style: none;}
        .nav-right{height: 135px;width: 1240px;border-bottom: 2px solid #dcdcdc;margin-left: 250px;}
         #title{position: relative;top: 90px}
         #nowDo{margin-top: 60px;margin-left: 900px;font-size: 25px}
         #nowDo li{float: left;}
        .yan{margin-top: 105px; margin-left: 10px}
        .yan li a{ font-size: 40px;}
        .yan li span{font-size: 40px; font-weight: bold;}
        .yan li{line-height: 50px;}
        .yan li:hover{ background-color: #8DD7FF}
        .yan li:hover a{text-decoration: none;}
        a:hover{text-decoration: underline;color: #111;}
		.iii{margin-left:250px;font-size:30px}
        #header h1 {font-size: 28px;letter-spacing: 10px;padding: 23px 0 0 150px; color: #ffff00;}

        #content{width: 1900px;height:720px;padding: 0 20px; background-color: #FFFFFF;display: none}
        .content_left{float: left;width: 230px;height:700px;margin-top: 40px;margin-left:30px;background: #cccccc;border: 3px solid blue}
        .content_right{float: left;height:700px;width: 1600px }
        /*.content_left img,.content_right img{width: 100%;height: 100%}*/
        /*首页*/
        #log1{float:left;margin:15px 0 0 105px;}
        .nav-box{overflow:hidden;width:1903px; height: 150px; background-color: #0372c3;}
        .nav-box h1{float: left;padding-left: 15px;color:#FFFFFF;font-size: 50px }
         #word{float: left;margin-left: 450px;margin-top: 30px}
        .pub-name{margin:36px 10px; width: 565px;float: left}
        .nav-p1{color: #ffffff; font-size: 42px; text-align: center;}
        .nav-p2{color: #ffffff; font-size: 18px;text-align: center;}
        /*设置中间div隐藏*/
        .main{width: 100%;  background-color: #026fc1; height: 720px; position: absolute;
            top: 180px; left:0; overflow: hidden; display: block }
        .main-left,.main-right{width: 360px; height: 100%; }
        .main-left{float: left;}
        .main-right{float: right;}
        .main-right img, .main-left img, .main-center img{width: 100%; height: 100%;}
        .main-center{width: 1182px; height: 100%; float: left;}
        .floor ul{margin:25px 0 18px 168px;}
        .floor{ position: absolute; top:920px; left:0; width: 100%; height: 140px; background-color: #1b6dc3;}
        .floor ul li{float: left; font-size: 46px; }
        .floor li a{color: #fff; padding: 28px 100px;margin:0  30px; text-decoration: none;}
        .floor li a:hover{text-decoration: none; background-color: #f2ad36;}
        .floor li b{width: 2px; height: 60px; background-color: #013879;}
        /*关于本院*/
         ul{ list-style: none;}
        #title2{position: relative;top: 90px}
        #nowDo2{margin-top: 60px;margin-left: 900px;font-size: 25px}
        #nowDo2 li{float: left;}
        .about_nav{height: 135px;width: 1240px;border-bottom: 2px solid #dcdcdc;margin-left: 250px}
        .kkk{margin-left:250px;font-size:30px}
        .about_left_u{margin-top: 105px; margin-left: 10px}
        .about_left_u li a{ font-size: 40px; }
        .about_left_u li span{font-size: 40px; font-weight: bold;}
        .about_left_u li{line-height: 50px;}
        .about_left_u li:hover{ background-color: #8DD7FF}
        .about_left_u li:hover a{text-decoration: none;}
        a:hover{text-decoration: underline;color: #111;}

        #header h1 {font-size: 28px;letter-spacing: 10px;padding: 23px 0 0 150px; color: #ffff00;}

        #about{width: 1900px;height:720px;padding: 0 20px; background-color: #FFFFFF;display: none}
        .about_left{float: left;width: 230px;height:700px;margin-top: 40px;margin-left:30px;background: #cccccc;border: 3px solid blue}
        .about_right{float: left;height:700px;width: 1600px }
        /* .about_left img,.about_right img{width: 100%;height: 100%}*/
        /*联系我们*/
        #title3{position: relative;top: 90px}
        #nowDo3{margin-top: 60px;margin-left: 900px;font-size: 25px}
        #nowDo3 li{float: left;}
         ul{ list-style: none;}
        .ContactInformation_nav{height: 135px;width: 1240px;border-bottom: 2px solid #dcdcdc;margin-left: 250px}
        .ccc{margin-left:250px;font-size:30px}
        .ContactInformation_left_u{margin-top: 105px; margin-left: 10px}
        .ContactInformation_left_u li a{ font-size: 40px; }
        .ContactInformation_left_u li span{font-size: 40px; font-weight: bold;}
        .ContactInformation_left_u li{line-height: 50px;}
        .ContactInformation_left_u li:hover{ background-color: #8DD7FF}
        .ContactInformation_left_u li:hover a{text-decoration: none;}
        a:hover{text-decoration: underline;color: #111;}

        #header h1 {font-size: 28px;letter-spacing: 10px;padding: 23px 0 0 150px; color: #ffff00;}
        
        #ContactInformation{width: 1900px;height:720px;padding: 0 20px; background-color: #FFFFFF;display: none}
        .ContactInformation_left{float: left;width: 250px;height:700px;margin-top: 40px;margin-left:10px;background: #cccccc;border: 3px solid blue}
        .ContactInformation_right{float: left;height:700px;width: 1600px }
     
   
   </style>
     <script type="text/javascript">
         function change(){
             var get=document.getElementById("main");
             get.style.display="none";
             var  day=document.getElementById("content");
             day.style.display="none";
             var go=document.getElementById("about");
             go.style.display="block";
             var  information=document.getElementById("ContactInformation");
             information.style.display="none";
         }
         function change2(){
             var get=document.getElementById("main");
             get.style.display="none";
             var  day=document.getElementById("content");
             day.style.display="block";
             var go=document.getElementById("about");
             go.style.display="none";
             var  information=document.getElementById("ContactInformation");
             information.style.display="none";
         }
         function change3(){
             var get=document.getElementById("main");
             get.style.display="none";
             var  day=document.getElementById("content");
             day.style.display="none";
             var go=document.getElementById("about");
             go.style.display="none";
             var  information=document.getElementById("ContactInformation");
             information.style.display="block";
         }
          function change4(){
             var get=document.getElementById("main");
             get.style.display="block";
             var  day=document.getElementById("content");
             day.style.display="none";
             var go=document.getElementById("about");
             go.style.display="none";
             var  information=document.getElementById("ContactInformation");
             information.style.display="none";
         }
         function add_s(link) {
             var  biaoti=document.getElementById("title");
             biaoti.innerHTML=link.innerHTML;
             /*定义匹配汉字的正则表达式*/
             var oul = document.getElementById("nowDo");
             var oli = document.createElement('li');
             oli.innerHTML = "<a href='#'>" + link.innerHTML + "</a><span>&gt;</span>";
             var notChinese = oul.children[2];
             if (notChinese == null) {
                 oul.appendChild(oli);
             } else {
                 oul.removeChild(notChinese);
                 oul.appendChild(oli);
             }
            $(".kkk").empty();
            $.ajax({
               dataType:"json",
               url:"fee.do",
               type:"GET",
               success:function(data){ 
               var table="<table border='1px' cellspacing='0px'  style='width: 200px;height: 200px;text-align: center;margin-left:60px;margin-top:60px;' ><tr><td>序号</td><td>名称</td><td>单位</td><td>收费</td></tr>";
                     for(var i=0;i<data.length;i++){
                         if(i==data.length-1){
                              table=table+"<tr><td>"+data[i].f_id+"</td><td>"+data[i].f_name+"</td><td>"+data[i].f_unit+"</td><td>"+data[i].f_expense+"</td></tr></table>";
                          }else{
                            table=table+"<tr><td>"+data[i].f_id+"</td><td>"+data[i].f_name+"</td><td>"+data[i].f_unit+"</td><td>"+data[i].f_expense+"</td></tr>";
                          }
                     }
                     $(".kkk").html(table);
                  }
             }); 
         }
          function add_j(link) {
            var  biaoti=document.getElementById("title");
             biaoti.innerHTML=link.innerHTML;
             /*定义匹配汉字的正则表达式*/
             var oul = document.getElementById("nowDo");
             var oli = document.createElement('li');
             oli.innerHTML = "<a href='#'>" + link.innerHTML + "</a><span>&gt;</span>";
             var notChinese = oul.children[2];
             if (notChinese == null) {
                 oul.appendChild(oli);
             } else {
                 oul.removeChild(notChinese);
                 oul.appendChild(oli);
             }
            $(".kkk").empty();
            $.ajax({
               dataType:"json",
               url:"jianyan.do",
               type:"GET",
               success:function(data){ 
                      $(".kkk").html(data.t_content);
                     }
                  }
             ); 
         }    
          /*关于本页页面  */
              function add2_by(link) {
             var  biaoti2=document.getElementById("title2");
             biaoti2.innerHTML=link.innerHTML;
             /*定义匹配汉字的正则表达式*/
             var oul2 = document.getElementById("nowDo2");
             var oli2 = document.createElement('li');
             oli2.innerHTML = "<a href='#'>" + link.innerHTML + "</a><span>&gt;</span>";
             var notChinese = oul2.children[2];
             if (notChinese == null) {
                 oul2.appendChild(oli2);
             } else {
                 oul2.removeChild(notChinese);
                 oul2.appendChild(oli2);
             }
             $(".iii").empty();
              $.ajax({
               dataType:"json",
               url:"ajaxfindins.do",
               type:"GET",
               success:function(data){
               $(".iii").html(data.i_introduction);
        }});
        }
         function add2_zj(link) {
             var  biaoti2=document.getElementById("title2");
             biaoti2.innerHTML=link.innerHTML;
             /*定义匹配汉字的正则表达式*/
             var oul2 = document.getElementById("nowDo2");
             var oli2 = document.createElement('li');
             oli2.innerHTML = "<a href='#'>" + link.innerHTML + "</a><span>&gt;</span>";
             var notChinese = oul2.children[2];
             if (notChinese == null) {
                 oul2.appendChild(oli2);
             } else {
                 oul2.removeChild(notChinese);
                 oul2.appendChild(oli2);
             }
             $(".iii").empty();
              $.ajax({
               dataType:"json",
               url:"special.do",
               type:"GET",
               success:function(data){
                var table="<table  cellspacing='2px' style='text-align: center;'><tr>";
                     for(var i=0;i<data.length;i++){
                         if(i==data.length-1){
                         /* 循环遍历图片对应的名字 */
                         var table=table+"<tr>";
                              for(var b=0;b<data.length;b++){
                              table=table+"<td>"+data[b].s_name+"</td>";
                              if(b==length-1){
                              		table=table+"<td>"+data[b].s_name+"</td></tr>";
                              }
                              }
                          }else{
                          /* 循环遍历图片的地址 */
                            for(var a=0;a<data.length;a++){
                              table=table+"<td><img src="+data[a].s_photo+"></td>";
                              if(a==length-1){
                              		table=table+"<td><img src="+data[a].s_photo+"></td></tr>";
                              }
                            }
                          }
                     }
                    $(".iii").html(table);
                  }
             }); 
         }
           function add2_zz(link) {
             var  biaoti2=document.getElementById("title2");
             biaoti2.innerHTML=link.innerHTML;
             /*定义匹配汉字的正则表达式*/
             var oul2 = document.getElementById("nowDo2");
             var oli2 = document.createElement('li');
             oli2.innerHTML = "<a href='#'>" + link.innerHTML + "</a><span>&gt;</span>";
             var notChinese = oul2.children[2];
             if (notChinese == null) {
                 oul2.appendChild(oli2);
             } else {
                 oul2.removeChild(notChinese);
                 oul2.appendChild(oli2);
             }
             $(".iii").empty();
              $.ajax({
               dataType:"json",
               url:"fo.do",
               type:"GET",
               success:function(data){
                var table="<table  cellspacing ='25px' style='text-align: center;'><tr>";
                     for(var i=0;i<data.length;i++){
                         if(i==data.length-1){
                         /* 循环遍历图片对应的名字 */
                         var table=table+"<tr>";
                              for(var b=0;b<data.length;b++){
                              table=table+"<td>"+data[b].o_name+"</td>";
                              if(b==length-1){
                              		table=table+"<td>"+data[b].o_name+"</td></tr>";
                              }
                              }
                          }else{
                          /* 循环遍历图片的地址 */
                            for(var a=0;a<data.length;a++){
                               table=table+"<td><img src="+data[a].o_photo+"></td>";
                              if(a==length-1){
                              		table=table+"<td><img src="+data[a].o_photo+"></td></tr>";
                              }
                            }
                          }
                     }
                    $(".iii").html(table);
                  }
             }); 
         }
         function add3(link) {
             var  biaoti3=document.getElementById("title3");
             biaoti3.innerHTML=link.innerHTML;
             var oul3 = document.getElementById("nowDo3");
             var oli3 = document.createElement('li');
             oli3.innerHTML = "<a href='#'>" + link.innerHTML + "</a><span>&gt;</span>";
             var notChinese = oul3.children[1];
             if (notChinese == null) {
                 oul3.appendChild(oli3);
             } else {
                 oul3.removeChild(notChinese);
                 oul3.appendChild(oli3);
             }
              $("ccc").empty();
              $.ajax({
               dataType:"json",
               url:"zhuanjia.do",
               type:"GET",
               success:function(data){
                          $("ccc").html(data.i_introduction); 
                          
                  }
             }); 
         } 
     </script>
</head>
  <body>
<div>
   <div class="nav-box">
       <img src="images/logo.png" alt="" id="log1"/>
       <div class="pub-name">
           <p class="nav-p1">湖北省食品药品检查研究院</p>
           <p class="nav-p2">HUBEI INSTITUTE FOR FOOD AND DRUG CONTROL</p>
       </div>
       <div id="word">
           <h1>科学</h1>
           <h1>公正</h1>
           <h1>严谨</h1>
           <h1>高效</h1>
       </div>
   </div>
    <!--主页面布局-->
   <div class="main" id="main">
       <div class="main-left">
           <img src="images/left.png"/>
       </div>
       <div class="main-center">
           <img src="${photo.address}"/>
       </div>
       <div class="main-right">
           <img src="images/right.png"/>
       </div>
   </div>
   <!--办事指南页面-->
    <div id="content">
        <div class="content_left">
            <ul class="yan">
                <li><a onclick="add_j(this)">检验须知</a><span>&gt;</span></li>
                <li><a onclick="add_s(this)">收费标准</a><span>&gt;</span></li>
                <li><a onclick="add_z(this)">质量体系</a><span>&gt;</span></li>
            </ul>
        </div>
        <div class="content_right">
            <div class="nav-right">
                <h1 id="title">检验须知</h1>
                <ul id="nowDo">
                    <li><a href="#">首页</a><span>&gt;</span></li>
                    <li><a href="#">关于本院</a><span>&gt;</span></li>
                    <li><a href="#">检验须知</a><span>&gt;</span></li>
                </ul>
            </div>
            <div class="kkk">
				${ik.t_content}
            </div>
        </div>
    </div>
    <!--关于本院页面-->
    <div id="about">
        <div class="about_left">
            <ul class="about_left_u">
                <li><a onclick="add2_by(this)">本院简介</a><span>&gt;</span></li>
                <li><a onclick="add2_zj(this)">专家学者</a><span>&gt;</span></li>
                <li><a onclick="add2_zz(this)">组织机构</a><span>&gt;</span></li>
            </ul>
        </div>
        <div class="about_right">
            <div class="about_nav">
                <h1 id="title2">本院简介</h1>
                <ul id="nowDo2">
                    <li><a href="#">首页</a><span>&gt;</span></li>
                    <li><a href="#">办事指南</a><span>&gt;</span></li>
                    <li><a href="#">本院简介</a><span>&gt;</span></li>
                </ul>
            </div>
            <div class="iii">
               ${id.i_introduction}  
            </div>
        </div>
    </div>
    <!--联系我们-->
   <div id="ContactInformation">
        <div class="ContactInformation_left">
            <ul class="ContactInformation_left_u">
                <li><a onclick="add3(this)">联系我们</a><span>&gt;</span></li>
                <li><a onclick="add3(this)">各部门电话</a><span>&gt;</span></li>
            </ul>
        </div>
        <div class="ContactInformation_right">
            <div class="ContactInformation_nav">
                <h1 id="title3">联系我们</h1>
                <ul id="nowDo3">
                    <li><a href="#">首页</a><span>&gt;</span></li>
                    <li><a href="#">联系我们</a><span>&gt;</span></li>
                </ul>
            </div>
            <div class="ccc" >
             <h5>湖北省食品药品监督检查院</h5>
                <img style="margin-left:60px;margin-top:60px;" src="${cu.cu_content}" />
            </div>
        </div>
    </div>
    <div class="floor">
            <ul>
                <li onclick="change4()"><a>首页</a><b></b></li>
                <li onclick="change()" ><a>关于本院</a> <b></b></li>   
                <li onclick="change2()"><a>办事指南</a><b></b></li>
                <li onclick="change3()"><a>联系我们</a></li>
            </ul>
   </div>
   </div>
  </body>
</html>