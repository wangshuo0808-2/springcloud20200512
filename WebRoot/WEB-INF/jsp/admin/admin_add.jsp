<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>

	<meta charset="utf-8">
	<title>驴友网后台管理</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
	<meta name="author" content="Muhammad Usman">

	<!-- The styles -->
	<link id="bs-css" href="${pageContext.request.contextPath}/statics/css/css_admin/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<link href="${pageContext.request.contextPath}/statics/css/css_admin/bootstrap-responsive.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/statics/css/css_admin/charisma-app.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/statics/css/css_admin/jquery-ui-1.8.21.custom.css" rel="stylesheet">
	<link href='${pageContext.request.contextPath}/statics/css/css_admin/fullcalendar.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/css/css_admin/fullcalendar.print.css' rel='stylesheet'  media='print'>
	<link href='${pageContext.request.contextPath}/statics/css/css_admin/chosen.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/css/css_admin/uniform.default.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/css/css_admin/colorbox.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/css/css_admin/jquery.cleditor.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/css/css_admin/jquery.noty.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/css/css_admin/noty_theme_default.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/css/css_admin/elfinder.min.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/css/css_admin/elfinder.theme.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/css/css_admin/jquery.iphone.toggle.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/css/css_admin/opa-icons.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/css/css_admin/uploadify.css' rel='stylesheet'>

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- The fav icon -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/statics/images/images_admin/favicon.ico">
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
          $("#pwd").focus(function(){
               var pwd=$("#pwd");
               var reg=/^\d{6}$/
               if(pwd.val()!=""&&reg.test(pwd.val())==true){
                   $("#remind1").html("输入格式正确");
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
           var data=$("#myform").serialize();
     		$.get("${pageContext.request.contextPath}/user/add2",data,function(result){
     			if(result.row="success"){
     				alert("添加成功!");
     				location.href="${pageContext.request.contextPath}/user/list";
     			}else{
     				alert("添加失败!");
     			}
     			})
     		})
           })
  </script>
</head>

<body>	
		<!-- topbar starts -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="index.html"> <img alt="Charisma Logo" src="${pageContext.request.contextPath}/statics/images/images_admin/logo20.png" /> <span>驴友网后台管理</span></a>
				
				<div class="btn-group pull-right theme-container" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-tint"></i><span class="hidden-phone"> 换肤</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu" id="themes">
						<li><a data-value="classic" href="#"><i class="icon-blank"></i> 经典</a></li>
						<li><a data-value="cerulean" href="#"><i class="icon-blank"></i> 天蓝</a></li>
						<li><a data-value="cyborg" href="#"><i class="icon-blank"></i> 酷黑</a></li>
						<li><a data-value="redy" href="#"><i class="icon-blank"></i> 诱惑红</a></li>
						<li><a data-value="journal" href="#"><i class="icon-blank"></i> 自由</a></li>
						<li><a data-value="simplex" href="#"><i class="icon-blank"></i> 简约</a></li>
						<li><a data-value="slate" href="#"><i class="icon-blank"></i> 岩黑</a></li>
						<li><a data-value="spacelab" href="#"><i class="icon-blank"></i> 灰色空间</a></li>
						<li><a data-value="united" href="#"><i class="icon-blank"></i> 橘红</a></li>
					</ul>
				</div>
				<!-- theme selector ends -->
				
				<!-- user dropdown starts -->
				<div class="btn-group pull-right" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-user"></i><span class="hidden-phone"> ${userName1}</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#">Profile</a></li>
						<li class="divider"></li>
						<li><a href="${pageContext.request.contextPath}/user/logout">注销</a></li>
					</ul>
				</div>
				<!-- user dropdown ends -->
				
				<div class="top-nav nav-collapse">
					<ul class="nav">
						<li><a target="_blank" href="${pageContext.request.contextPath}/notice/list2">访问驴友网</a></li>
						<li>
							<form class="navbar-search pull-left">
								<input placeholder="Search" class="search-query span2" name="query" type="text">
							</form>
						</li>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<!-- topbar ends -->
	
			<div class="container-fluid">
		<div class="row-fluid">
				
			<!-- left menu starts -->
			<div class="span2 main-menu-span">
				<div class="well nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li class="nav-header hidden-tablet">用户管理</li>
						<li><a class="ajax-link" href="${pageContext.request.contextPath}/toadmin_add"><i class="icon-plus-sign"></i><span class="hidden-tablet"> 添加管理员</span></a></li>
						<li><a class="ajax-link" href="${pageContext.request.contextPath}/user/list"><i class="icon-user"></i><span class="hidden-tablet"> 用户列表</span></a></li>
						<li class="nav-header hidden-tablet">用户发布信息管理</li>
						<li><a class="ajax-link" href="${pageContext.request.contextPath}/memory/list"><i class="icon-list-alt"></i><span class="hidden-tablet"> 旅游记忆信息列表</span></a></li>
						<li><a class="ajax-link" href="${pageContext.request.contextPath}/topt_list"><i class="icon-list-alt"></i><span class="hidden-tablet"> 结伴游信息列表</span></a></li>												
						<li class="nav-header hidden-tablet">旅游攻略</li>
						<li><a class="ajax-link" href="${pageContext.request.contextPath}/tostrategy_add"><i class="icon-edit"></i><span class="hidden-tablet"> 发布新攻略</span></a></li>
						<li><a class="ajax-link" href="${pageContext.request.contextPath}/queryParksList"><i class="icon-list-alt"></i><span class="hidden-tablet"> 攻略列表</span></a></li>					
						<li class="nav-header hidden-tablet">公告</li>
						<li><a class="ajax-link" href="${pageContext.request.contextPath}/toinform_add"><i class="icon-edit"></i><span class="hidden-tablet"> 发布新公告</span></a></li>
						<li><a class="ajax-link" href="${pageContext.request.contextPath}/notice/list"><i class="icon-cog"></i><span class="hidden-tablet"> 管理已发布公告</span></a></li>
                        <li class="nav-header hidden-tablet">注销</li>								
						<li><a href="${pageContext.request.contextPath}/user/logout"><i class="icon-lock"></i><span class="hidden-tablet"> 退出</span></a></li>										
					</ul>
				</div><!--/.well -->
			</div><!--/span-->
			<!-- left menu ends -->
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<div id="content" class="span10">
			<!-- content starts -->			
			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">用户管理</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/toadmin_add">添加管理员</a>
					</li>
				</ul>
			</div>				
	
			<div class="row-fluid">
				<div class="box span12">
					<div class="box-header well">
						<h2><i class="icon-info-sign"></i> 添加管理员</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">					
					    <form id="myform" runat="server" action="${pageContext.request.contextPath}/user/login" method="get">
                        <p>
                            <label>用户名：</label>
							<input type="text" name="userName" id="userName" required/><span id="remind" class="h"></span>
							<input type="hidden" name="roleId" value="1"/>
                        </p>
                        <p class="col">
                            <label>密码：</label>
							<input type="password"  name="userPwd" id="pwd" required/><span id="remind1" class="h"></span>
                        </p>
                        <p>
                            <label>确认密码：</label>
                            <input type="password"  name="repassword" id="pwd2" required/><span id="remind3" class="h"></span>
                        </p>                       
                         <p> 
						    <input type="button" value="添加" class="btn btn-large" id="button"/>
                        </p>
                   </form>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
					

	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<!-- jQuery -->
	<script src="statics/js/jquery-1.7.2.min.js"></script>
	<!-- jQuery UI -->
	<script src="statics/js/jquery-ui-1.8.21.custom.min.js"></script>
	<!-- transition / effect library -->
	<script src="statics/js/bootstrap-transition.js"></script>
	<!-- alert enhancer library -->
	<script src="statics/js/bootstrap-alert.js"></script>
	<!-- modal / dialog library -->
	<script src="statics/js/bootstrap-modal.js"></script>
	<!-- custom dropdown library -->
	<script src="statics/js/bootstrap-dropdown.js"></script>
	<!-- scrolspy library -->
	<script src="statics/js/bootstrap-scrollspy.js"></script>
	<!-- library for creating tabs -->
	<script src="statics/js/bootstrap-tab.js"></script>
	<!-- library for advanced tooltip -->
	<script src="statics/js/bootstrap-tooltip.js"></script>
	<!-- popover effect library -->
	<script src="statics/js/bootstrap-popover.js"></script>
	<!-- button enhancer library -->
	<script src="statics/js/bootstrap-button.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="statics/js/bootstrap-collapse.js"></script>
	<!-- carousel slideshow library (optional, not used in demo) -->
	<script src="statics/js/bootstrap-carousel.js"></script>
	<!-- autocomplete library -->
	<script src="statics/js/bootstrap-typeahead.js"></script>
	<!-- tour library -->
	<script src="statics/js/bootstrap-tour.js"></script>
	<!-- library for cookie management -->
	<script src="statics/js/jquery.cookie.js"></script>
	<!-- calander plugin -->
	<script src='statics/js/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='statics/js/jquery.dataTables.min.js'></script>

	<!-- chart libraries start -->
	<script src="statics/js/excanvas.js"></script>
	<script src="statics/js/jquery.flot.min.js"></script>
	<script src="statics/js/jquery.flot.pie.min.js"></script>
	<script src="statics/js/jquery.flot.stack.js"></script>
	<script src="statics/js/jquery.flot.resize.min.js"></script>
	<!-- chart libraries end -->

	<!-- select or dropdown enhancer -->
	<script src="statics/js/jquery.chosen.min.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="statics/js/jquery.uniform.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="statics/js/jquery.colorbox.min.js"></script>
	<!-- rich text editor library -->
	<script src="statics/js/jquery.cleditor.min.js"></script>
	<!-- notification plugin -->
	<script src="statics/js/jquery.noty.js"></script>
	<!-- file manager library -->
	<script src="statics/js/jquery.elfinder.min.js"></script>
	<!-- star rating plugin -->
	<script src="statics/js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="statics/js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="statics/js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="statics/js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="statics/js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="statics/js/charisma.js"></script>
	
		
</body>
</html>

