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
    <title>注册 | 驴友网</title>
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
     		$("#userName").blur(function(){
               var userName=$("#userName");
               if(userName.val()==""){
                   $("#remind").html("不能为空");
                   return false;
               }else{
  						$.get("${pageContext.request.contextPath}/user/check",
  						{"userName":userName.val()},function(result){
  							if(result.row=="success"){
                            $("#remind").html("用户名不可用");
                            return false;
                            }else{
                            	$("#remind").html("用户名可用");
                            }
  							})
  					}
           })
     		$("#userName").focus(function(){
               var userName=$("#userName");
               if(userName.val()!=""){
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
          $("#email").blur(function(){
               var email=$("#email");
               var reg =/^\w+@\w+(\.\w+){1,2}$/;
               if(email.val()==""){
                   $("#remind4").html("不能为空");
                   return false;
               }else if(reg.test(email.val())==false) {
                   $("#remind4").html(("邮箱格式不正确"));
                   return false;
               }
           })
             $("#email").focus(function(){
              var email=$("#email");
               var reg =/^\w+@\w+(\.\w+){1,2}$/;
               if(email.val()!=""&&reg.test(email.val())==true){
                   $("#remind4").html("输入格式正确");
                   return true;
               }
           })
            $("#pwd2").blur(function(){
               var pwd2=$("#pwd2");
               var reg=/^\d{6}$/
               if(pwd2.val()==""){
                   $("#remind3").html("不能为空");
                  return false;
               }else if(reg.test(pwd2.val())==false) {
                   $("#remind3").html(("密码由数字组成长度6"));
                   return false;
                   
               }else if($("#pwd2").val()!=$( "#pwd").val()){
               		$("#remind3").html(("确认密码应与新密码一致"));
               		return false;
               }
               
           })
            $("#pwd2").focus(function(){
               var pwd2=$("#pwd2");
               var reg=/^\d{6}$/
               if(pwd2.val()!=""&&reg.test(pwd2.val())==true&&$("#pwd2").val()==$( "#pwd").val()){
                   $("#remind3").html("输入格式正确");
                   return true;
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
           $("#button").click(function(){
        	   var userName=$("#userName");
               if(userName.val()==""){
                   $("#remind").html("不能为空");
                   return false;
               }else{
  						$.get("${pageContext.request.contextPath}/user/check",
  						{"userName":userName.val()},function(result){
  							if(result.row=="success"){
                            $("#remind").html("用户名不可用");
                            }else{
                            	$("#remind").html("用户名可用");
                            }
  							})
  					}
                var pwd=$("#pwd");
               var reg=/^\d{6}$/
               if(pwd.val()==""){
                   $("#remind1").html("不能为空");
                   return false;
               }else if(reg.test(pwd.val())==false) {
                   $("#remind1").html(("密码由数字组成长度6"));
                   return false;
               }
               var email=$("#email");
               var reg =/^\w+@\w+(\.\w+){1,2}$/;
               if(email.val()==""){
                   $("#remind4").html("不能为空");
                   return false;
               }else if(reg.test(email.val())==false) {
                   $("#remind4").html(("邮箱格式不正确"));
                   return false;
               }
                var pwd2=$("#pwd2");
               var reg=/^\d{6}$/
               if(pwd2.val()==""){
                   $("#remind3").html("不能为空");
                  return false;
               }else if(reg.test(pwd2.val())==false) {
                   $("#remind3").html(("密码由数字组成长度6"));
                   return false;
                   //alert($.trim(pwd2.val()) != $.trim(pwd1.val()));
               }else if($("#pwd2").val()!=$( "#pwd").val()){
               		$("#remind3").html(("确认密码应与新密码一致"));
               		return false;
               }
           var data=$("#form100").serialize();
     		$.get("${pageContext.request.contextPath}/user/add",data,function(result){
     			if(result.row="success"){
     				alert("注册成功!");
     				location.href="${pageContext.request.contextPath}/tologin";
     			}else{
     				alert("注册失败!");
     			}
     			})
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
                <a href="${pageContext.request.contextPath}/toindex" title="驴友网" style="float: left;" >驴友网</a>
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
				<input name="title" type="text" class="top-search-input" id="searchKey" value="搜索旅游记忆" maxlength="50" autocomplete="off"/>
                <input name="" type="submit" value="搜索" class="search_btn">
            </form>
			<div id="keyword_tip_content"></div>
		</div>
	</div>
</div>
<!--top end-->
        
<div id="container"  class="noXtips cf">
	<div  class="main">
		<h2>欢迎注册驴友网</h2>
			<form id="form100" action="login.htm" method="post" class="reg-form" >
				<p><label for="userName"><em>*</em>用户名：</label>
                   <input name="userName" type="text"  class="input-txt" id="userName" autocomplete="off" size="43" /><span id="remind" class="h"></span>
                </p>
				<p><label for="userPwd"><em>*</em>密码：</label>
                   <input name="userPwd" type="password"  class="input-txt" id="pwd" autocomplete="off" size="43" /><span id="remind1" class="h"></span>
                </p>
				<p><label for="repassword"><em>*</em>确认密码：</label>
                   <input name="repassword" type="password"  class="input-txt" id="pwd2" autocomplete="off" size="43" /><span id="remind3" class="h"></span>
                </p>
				<p><label for="email"><em>*</em>邮箱：</label>
					<input name="email" type="text"  class="input-txt" id="email" size="43" ><span id="remind4" class="h" ></span>
                </p>
                <%--<p class="checkcode"><label for="checkcode"><em>*</em>验证码：</label>
					<input name="checkcode" type="text" class="input-txt" id="checkcode" autocomplete="off" ><img height="26" align="absmiddle" width="105"  onclick="this.src=this.src+'?'" title="看不清？点击更换"  src="" id="checkcodeimg" ><span  onclick="changeCheckCodeImg();" class="refresh">换一换</span>
                </p> 
				--%><%--<p class="chcek-rule"><input name="agree" type="checkbox" value="1" checked />
					<span class="fl">我同意</span><a href="#" target="_blank">《驴友网服务公约》</a>
				--%></p>
				<input type="button" class="regbtn" value="立即注册" id="button" /><%--
                <a class="regbtn" id="submit" href="javascript:void(0);" hidefocus="true">立即注册</a>                
			--%></form>
			
			<div class="reg-notes">
				<p>如果你已注册，请直接登录</p>
                <a href="${pageContext.request.contextPath}/tologin" class="reg-login">登录</a><%--
                <dl class="login-option">
                    <dt>你也可以用以下方式登录</dt>
                    <dd class="sina-ico"><a href="#">新浪微博</a></dd>
                    <dd ><a href="#">腾讯微博</a></dd>
                </dl>
			--%></div>
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
			<p><span>版权所有TCJC056班</span><br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>周梨香</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>王硕</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>汪树平</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>王馨德</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>秦川</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>张京</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>程杰</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</p>
            <div class="sns">
				<span>关注我们： </span><a href="#" class="login_sina">新浪微博 </a><a href="#" class="login_qq">腾讯微博</a>
				<%--<a href="#" title="360绿色网站"><img src="http://trust.360.cn/img.php?sn=5229&id=5" border="0" /></a> 
			--%><!-- WPA Button Begin
		<!-- WPA Button END -->
			</div>
		</div>
	</div>
</div>
<!-- footer end -->
</body>
</html>
