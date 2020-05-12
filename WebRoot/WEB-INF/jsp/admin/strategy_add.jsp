<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="en">
<head>
	<!--
		Charisma v1.0.0

		Copyright 2012 Muhammad Usman
		Licensed under the Apache License v2.0
		http://www.apache.org/licenses/LICENSE-2.0

		http://usman.it
		http://twitter.com/halalit_usman
	-->
	<meta charset="utf-8">
	<title>后台管理---添加攻略</title>
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
	  #checkParkName{
	  	color:red;
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
				
				<!-- theme selector starts -->
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
						<a href="#">旅游攻略</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">添加攻略</a>
					</li>
				</ul>
			</div>
			
			<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.7.2.min.js"></script>
			<script>
				var checkCount=0;
				
				$(function(){
					$("input[name=parkName]").blur(function(){
						var parkName=$("input[name=parkName]").val();
						$.get("${pageContext.request.contextPath}/checkParkName",{"parkName":parkName},function(result){
							if(result.checkNameInfo=='right'){
								$("#checkParkName").html("该景区攻略可以添加！景区名称请认真校验，一经提交无法修改！");
							}else if(result.checkNameInfo=='wrong'){
								$("#checkParkName").html("该景区攻略已存在，无法重复创建！");
								checkCount=1;
							}	
						})
					})
				})
				
				function check(form){
					if(checkCount==1){
						alert("该景区攻略已存在，无法重复创建！");
						form.parkName.focus();
						return false;
					}
					if(form.parkName.value==""){
						alert("景区名称不能为空！");
						form.parkName.focus();
						return false;
					}
					if(form.cityName.value==""){
						alert("所在城市不能为空！");
						form.cityName.focus();
						return false;
					}
					if(form.bestMonth.value==""){
						alert("适宜时间不能为空！");
						form.bestMonth.focus();
						return false;
					}
					if(form.suitPeople.value==""){
						alert("适宜人群不能为空！");
						form.suitPeople.focus();
						return false;
					}
					if(form.tourType.value==3){
						alert("出游类型不能为空！");
						form.tourType.focus();
						return false;
					}
					if(form.parkIntroduce.value==""){
						alert("景区简介不能为空！");
						form.parkIntroduce.focus();
						return false;
					}
					return true;
				}
			</script>
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> 添加攻略</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/addPark" enctype="multipart/form-data" onsubmit="return check(this)">
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="typeahead">景区名称 </label>
							  <div class="controls">
								<input type="text" name="parkName" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" >
								<span id="checkParkName"></span>
								<p class="help-block">请输入景区名称!</p>
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="typeahead">所在城市</label>
							  <div class="controls">
								<input type="text" name="cityName" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" >		
								<p class="help-block">请输入所在城市名称!</p>	
							  </div>
							</div>	
							<div class="control-group">
							  <label class="control-label" for="date01">适宜时间</label>
							  <div class="controls">
								<input type="text" name="bestMonth" id="date01" value="月份/季节">
							    <p class="help-block">请输入该景区最佳旅行月份/季节</p>								
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="typeahead">适宜人群</label>
							  <div class="controls">
								<input type="text" name="suitPeople" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" >
								<input type="hidden" name="userId" value="${loginUser2.userId}"/>				
							  </div>
							</div>	
							<div class="control-group">
							  <label class="control-label" for="fileInput">图片</label>
							  <div class="controls">
								<input class="input-file uniform_on" name="singleFile" id="fileInput" type="file">
							  </div>
							</div>
							  <div class="control-group">
								<label class="control-label" for="selectError">出游类型</label>
								<div class="controls">
								  <select id="selectError" name="tourType" data-rel="chosen" >
								    <option value="3">---请选择---</option>
									<option value="0">人文古迹</option>
									<option value="1">自然风光</option>
									<option value="2">游乐园</option>
								  </select>
								</div>
							  </div>							          
							<div class="control-group">
							  <label class="control-label" for="textarea2">景区简介</label>
							  <div class="controls">
								<textarea name="parkIntroduce" id="textarea2" rows="3"></textarea>
							  </div>
							</div>																
							<div class="form-actions">
							  <button type="submit" class="btn btn-primary">发布攻略</button>
							  <button type="reset" class="btn">取消</button>
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div><!--/row-->

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
