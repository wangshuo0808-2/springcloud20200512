<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html  lang="zh">
<head >
	<meta charset="utf-8">
    <title>登录 | 驴友网</title>
        <meta name="Keywords" content="驴友网" />
        <meta name="Description" content="旅游社交，在旅途中享受激情与欢乐" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/css_user/global.css"  />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/css_user/reg.css"  />
        <link rel="stylesheet"  href="${pageContext.request.contextPath}/statics/css/css_user/boxy,jquery.fancybox-1.3.4.css" />
        <script type="text/javascript">
			var userjson = '';
			var c_cityinfo = '';
		</script>
			<style type="text/css">
			.h{
				font-weight:bolder;
				color:red;
			}
		</style>
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-2.1.4.min.js"></script>
  <script>
    $(function(){
     		$("#id").blur(function(){
               var id=$("#id");
               if(id.val()==""){
                   $("#remind").html("不能为空");
                   return false;
               }
           })
     		$("#id").focus(function(){
               var id=$("#id");
               if(id.val()!=""){
                   $("#remind").html("输入格式正确");
                   return true;
               }
           })
          $("#pwd").blur(function(){
               var pwd=$("#pwd");
               var reg=/^\d{6}$/
               if(pwd.val()==""){
                   $("#remind1").html("不能为空");
                   return false;
               }else if(reg.test(pwd.val())==false) {
                   $("#remind1").html(("密码由数字组成长度6"));
                   return false;
               }
           })
          $("#pwd").focus(function(){
               var pwd=$("#pwd");
               var reg=/^\d{6}$/
               if(pwd.val()!=""&&reg.test(pwd.val())==true){
                   $("#remind1").html("输入格式正确");
                   return true;
               }
           })
        })
  </script>
		
</head>

<body id="reg" >
<!--top-->
<div class="header">
    <div class="headWrap">
        <div class="headTop fn-clear">
            <h1 class="logo">
                <a href="index.jsp" title="驴友网" style="float: left;" >驴友网</a>
            </h1>
            <h2 class="slogan" title="在旅途中相遇">在旅途中相遇</h2>

            <div class="loginInfo">                
                <ul class="not_login">
                    <li style="float:right"><a href="${pageContext.request.contextPath}/toregister" class="btn_reg">注册</a></li>
                    <li  style="float:right"><a href="${pageContext.request.contextPath}/tologin"  id="top-nav-login" class="btn_login">登录</a></li>
                </ul>
            </div>
        </div>

        <ul class="dropdown">
            <li>
                <a href="${pageContext.request.contextPath}/notice/list2" >首页</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/tomemory">旅游记忆</a>
            </li>
            <li>
				<a href="${pageContext.request.contextPath}/totraveller">结伴游</a>
			</li>
            <li>
				<a href="${pageContext.request.contextPath}/park/queryAllParks">景点攻略</a>
			</li>
		</ul>
				 
		<div class="navSearch">
			<form action="${pageContext.request.contextPath}/memory/list1" method="get" id="searchForm" target="_blank">
				<input name="title" type="text" class="top-search-input" id="searchKey" value=<c:if test="${title==null or title==''}">"搜索旅游记忆"</c:if><c:if test="${title!=null}">"${title}"</c:if> maxlength="50" autocomplete="off"/>
                <input name="" type="submit" value="搜索" class="search_btn">
            </form>
			<div id="keyword_tip_content"></div>
		</div>
	</div>
</div>
<!--top end-->
        
<div id="container"  class="noXtips cf">
	<div  class="main">
		<h2>欢迎登录驴友网</h2>
			<form id="form100" action="${pageContext.request.contextPath}/user/login" method="get" class="reg-form" >
				<p><label for="userName"><em>*</em>用户名：</label>
                   <input name="userName" type="text"  class="input-txt" id="id" autocomplete="off" size="43" required/><span id="remind" class="h"></span>
                </p>
				<p><label for="userPwd"><em>*</em>密码：</label>
                   <input name="userPwd" type="password"  class="input-txt" id="pwd" autocomplete="off" size="43" required/><span id="remind1" class="h"></span>
                </p>
                <p class="h">${message}</p>
                <input type="submit" class="reg-login" value="登录"/><%--
               <a href="${pageContext.request.contextPath}/user/login" class="reg-login">登录</a>  
			--%></form>
			
			<div class="reg-notes">
				<p>如果你还没有账户，请点击注册</p>
                <a href="${pageContext.request.contextPath}/toregister" class="reg-login">注册</a>
			</div>
		</div>
	</div>
	
<div class="footer " >
    <div class="footerWrap fn-clear">
        <ul class="about_roadqu ">
            <li><a href="#">关于驴友</a>|</li>
            <li><a href="#">联系我们</a>|</li>
            <li><a href="#">用户公约</a>|</li>
            <li><a href="#">意见反馈</a>|</li>
            <li><a href="#">帮助中心</a>|</li>
            <li><a href="#">友情链接</a></li>   
        </ul>
        <div class="foot">
			<p><span>版权所有软件1001班
			<a href="#" >陈文平</a><a href="#" > 胡剑彬</a><a href="#" >林清华</a><a href="#" >汤怡青</a><a href="#" >袁泽</a><a href="#" >周晓丽</a>
			</span></p>
            <div class="sns">
				<span>关注我们： </span><a href="#" class="login_sina">新浪微博 </a><a href="#" class="login_qq">腾讯微博</a>
				<a href="#" title="360绿色网站"><img src="http://trust.360.cn/img.php?sn=5229&id=5" border="0" /></a> 
			<!-- WPA Button Begin -->
		<!-- WPA Button END -->
			</div>
		</div>
	</div>
</div>
<!-- footer end -->
</body>
</html>
