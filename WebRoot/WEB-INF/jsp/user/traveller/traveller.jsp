<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
  
<html  lang="zh">
<!--<![endif]-->  
<head>
	<meta charset="utf-8">  
	<title>结伴游 | 驴友网</title>
	<meta name="Keywords" content="旅游社交，在旅途中享受激情与欢乐" />  
	<meta name="Description" content="旅游社交，在旅途中享受激情与欢乐" />  
    <link rel="shortcut icon"  href="favicon.ico" />  
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="mobile-agent" content="format=html5; url=http://m.roadqu.com">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/global.css" media="all">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/boxy,jquery.fancybox-1.3.4.css">	 
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/css_user/journey.css" >
		<link rel="stylesheet"  href="${pageContext.request.contextPath}/statics/css/css_user/search.css" /> 
    <script type="text/javascript">		
		var userjson = '';
		var c_cityinfo = '';
	</script>	
</head>

<body id="gongluo">
<div class="header">
    <div class="headWrap">
        <div class="headTop fn-clear">
            <h1 class="logo">
                <a href="index.htm" title="驴友网" style="float: left;" >驴友网</a>
            </h1>
            <h2 class="slogan" title="在旅途中相遇">在旅途中相遇</h2>

            <div class="loginInfo">                
                <ul class="not_login">
                <c:if test="${userName==null}">
                    <li style="float:right"><a href="${pageContext.request.contextPath}/toregister" class="btn_reg">注册</a></li>
                    <li  style="float:right"><a href="${pageContext.request.contextPath}/tologin"  id="top-nav-login" class="btn_login">登录</a></li>
					</c:if>
					<c:if test="${userName!=null}">
					<li style="float:right"><a href="${pageContext.request.contextPath}/user/logout">注销</a></li>                                        
					<li style="float:right"><a href="#">好友申请（0）</a>&nbsp;&nbsp;&nbsp;</li>
					<li style="float:right"><a href="#">站内信（0）</a>&nbsp;&nbsp;&nbsp;</li>
					<li style="float:right"><a href="${pageContext.request.contextPath}/user/detail?userName=${userName}">${userName}</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
                	</c:if>
                </ul>
            </div>
        </div>

     <ul class="dropdown">
            <li>
                <a href="${pageContext.request.contextPath}/toindex" >首页</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/tomemory">旅游记忆</a>
            </li>
            <li>
				<a href="${pageContext.request.contextPath}/totraveller">结伴游</a>
			</li>
            <li>
				<a href="${pageContext.request.contextPath}/tostrategy">景点攻略</a>
			</li>
		</ul>
		 <div class="navSearch">
			<form action="../memory/memory_search.htm" method="get" id="searchForm" target="_blank">
				<input name="k" type="text" class="top-search-input" id="searchKey" value="搜索旅游记忆" maxlength="50" autocomplete="off"/>
                <input name="" type="submit" value="搜索" class="search_btn">
            </form>
			<div id="keyword_tip_content"></div>
		</div>
	</div>
</div>      

<div id="container">
	<div class="mainWrap cf">
				<div class="search-box">
					<div class="search-body">
						<ul class="search-tab">
							<li class="select" >
                				<a href="#" >目的地</a>
            				</li>
            				<li  >
                                <a href="#" >时间</a>
                            </li>
						</ul>
						<form method="get"  action="traveller_search.htm" id="f1" class="search-form">
							<input type="text" id="k2" name="k"  class=" input-search" value="" autocomplete="off">
							<input  type="submit" class="search-btn" value="搜索">
						</form>
					</div>
				</div>
				
			<div class="ui-box cf">
				<div class="ui-title">
					<h2 class="ui-title-cnt fn-left"><em>最新发布</em> (3858篇帖子)</h2>
				</div>
				<ul class=" travel-log-list gonglue-list">
					<li>
						<a target="_blank" href="#" class="gonglue_img fn-left">
							<img src="${pageContext.request.contextPath}/statics/images/images_user/3aedfe2ee2f96e8778c5a61176f0d6ed_c.jpg" alt="【2013年7月1日-2013年7月5日】苏州行" width="130" height="130" /> 
						</a>
						<div class="gonglue_info fn-left">
							<h3> <a target="_blank" href="traveller_detail.htm"  title="【2013年7月1日-2013年7月5日】苏州行">【2013年7月1日-2013年7月5日】苏州行</a></h3>
							<p>&nbsp;&nbsp;目的地：苏州</p>
							<p>&nbsp;&nbsp;行程：2013年7月1日 至 2013年7月5日</p>
							<p>&nbsp;&nbsp;发布者: <a target="_blank" href="#">路趣小游</a>&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2013-03-15 16:51:22</p>	
						</div>
					</li>
					<li>
						<a target="_blank" href="#" class="gonglue_img fn-left">
							<img src="${pageContext.request.contextPath}/statics/images/images_user/76ca11b55c7c0d0e7f35d45949b0289b_c.jpg" alt="【2013年7月2日-2013年7月2日】百侯镇" width="130" height="130" /> 
						</a>
						<div class="gonglue_info fn-left">
							<h3> <a target="_blank" href="traveller_detail.htm"  title="【2013年7月1日-2013年7月5日】苏州行">【2013年7月1日-2013年7月5日】百侯镇</a></h3>
							<p>&nbsp;&nbsp;目的地：百侯镇</p>
							<p>&nbsp;&nbsp;行程：2013年7月1日 至 2013年7月5日</p>
							<p>&nbsp;&nbsp;发布者: <a target="_blank" href="#">路趣小游</a>&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2013-03-15 16:51:22</p>	
						</div>
					</li>
					<li>
						<a target="_blank" href="#" class="gonglue_img fn-left">
							<img src="${pageContext.request.contextPath}/statics/images/images_user/e15faad1da662c685aff6d2d0ae13ce2_c.jpg" alt="【2013年7月2日-2013年7月2日】婺源" width="130" height="130" /> 
						</a>
						<div class="gonglue_info fn-left">
							<h3> <a target="_blank" href="traveller_detail.htm"  title="【2013年7月1日-2013年7月5日】婺源">【2013年7月1日-2013年7月5日】婺源</a></h3>
							<p>&nbsp;&nbsp;目的地：婺源</p>
							<p>&nbsp;&nbsp;行程：2013年7月1日 至 2013年7月5日</p>
							<p>&nbsp;&nbsp;发布者: <a target="_blank" href="#">路趣小游</a>&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2013-03-15 16:51:22</p>	
						</div>
					</li>
					<li>
						<a target="_blank" href="#" class="gonglue_img fn-left">
							<img src="${pageContext.request.contextPath}/statics/images/images_user/6f2c19ed430e457235c76dff76a7ce57_c.jpg" alt="【2013年7月2日-2013年7月2日】深圳" width="130" height="130" /> 
						</a>
						<div class="gonglue_info fn-left">
							<h3> <a target="_blank" href="traveller_detail.htm"  title="【2013年7月1日-2013年7月5日】深圳">【2013年7月1日-2013年7月5日】深圳</a></h3>
							<p>&nbsp;&nbsp;目的地：深圳</p>
							<p>&nbsp;&nbsp;行程：2013年7月1日 至 2013年7月5日</p>
							<p>&nbsp;&nbsp;发布者: <a target="_blank" href="#">路趣小游</a>&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2013-03-15 16:51:22</p>	
						</div>
					</li>
					<li>
						<a target="_blank" href="#" class="gonglue_img fn-left">
							<img src="${pageContext.request.contextPath}/statics/images/images_user/3771bde6633cf9e9b78636f1c91010de_c.jpg" alt="【2013年7月2日-2013年7月2日】碉堡楼" width="130" height="130" /> 
						</a>
						<div class="gonglue_info fn-left">
							<h3> <a target="_blank" href="#"  title="【2013年7月1日-2013年7月5日】碉堡楼">【2013年7月1日-2013年7月5日】碉堡楼</a></h3>
							<p>&nbsp;&nbsp;目的地：碉堡楼</p>
							<p>&nbsp;&nbsp;行程：2013年7月1日 至 2013年7月5日</p>
							<p>&nbsp;&nbsp;发布者: <a target="_blank" href="#">路趣小游</a>&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2013-03-15 16:51:22</p>		
						</div>
					</li>
				</ul>
				<div class="ui-title-subcnt fn-right">
					<a target="_blank" href="#" >+查看更多</a>
				</div>
			</div>  
		</div>
</div>

<!-- 底部footer 开始-->
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
