<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html  lang="zh">
<head >
	<meta charset="utf-8">
    <title>操作成功</title>
        <meta name="Keywords" content="驴友网" />
        <meta name="Description" content="旅游社交，在旅途中享受激情与欢乐" />
		<meta http-equiv="refresh" content="3;url="${pageContext.request.contextPath}/index">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/css1/global.css"  />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/css1/css/reg.css"  />
        <link rel="stylesheet"  href="${pageContext.request.contextPath}/statics/css/css1/boxy,jquery.fancybox-1.3.4.css" />
        <script type="text/javascript">
			var userjson = '';
			var c_cityinfo = '';
		</script>
		<!-- 合并jquery and $LAB -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/js1/static/min/s1/jquery-1.4.4.min,LAB.min.js?t=201301111415"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/js1/static/js/html5.js?t=201301111415"></script>
</head>

<body id="reg" >
<!--top-->
<div class="header">
    <div class="headWrap">
        <div class="headTop fn-clear">
            <h1 class="logo">
                <a href="index.htm" title="驴友网" style="float: left;" >驴友网</a>
            </h1>
            <h2 class="slogan" title="在旅途中相遇">在旅途中相遇</h2>

            <div class="loginInfo">                
                <ul class="not_login">
                    <li style="float:right"><a href="#">好友申请（0）</a></li>
					<li style="float:right"><a href="#">站内信（0）</a>&nbsp;&nbsp;&nbsp;</li>
					<li style="float:right"><a href="#">chen10301002</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
                </ul>
            </div>
        </div>

        <ul class="dropdown">
            <li>
                <a href="../index.htm" >首页</a>
            </li>
            <li>
                <a href="memory/memory.htm">旅游记忆</a>
            </li>
            <li>
				<a href="traveller/traveller.htm">结伴游</a>
			</li>
            <li>
				<a href="strategy/strategy.htm">景点攻略</a>
			</li>
		</ul>
				 
		<div class="navSearch">
			<form action="memory/memory_search.htm" method="get" id="searchForm" target="_blank">
				<input name="k" type="text" class="top-search-input" id="searchKey" value="搜索旅游记忆" maxlength="50" autocomplete="off"/>
                <input name="" type="submit" value="搜索" class="search_btn">
            </form>
			<div id="keyword_tip_content"></div>
		</div>
	</div>
</div>
<!--top end-->
        
<div id="container"  class="noXtips cf">
	<div class="main">
		<h2>操作成功</h2>
		<br /><br /><br />
		<pre>                  <font style="font-size:16px; font-family:'新宋体'">操作成功，3s后跳转，点击<a href="#"> 这里 </a>立即跳转</font></pre>
			
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
