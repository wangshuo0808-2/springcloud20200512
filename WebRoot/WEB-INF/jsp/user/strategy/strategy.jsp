<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh">
    <head >
	<meta charset="utf-8" />
    <title>景点攻略 | 驴友网</title>
    <meta name="Keywords" content="" />
    <meta name="Description" content="" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="mobile-agent" content="format=html5; url=http://m.roadqu.com">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/global.css" media="all">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/boxy,jquery.fancybox-1.3.4.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/css_user/cityguide.css"  />
    <style>
    	.parkInf{
			float:left;
    	}
    	.lookMoreUrl{
    		float:right;
    	}
    </style>
</head>
   
<body id="profile-homepage">
<div class="header">
    <div class="headWrap">
        <div class="headTop fn-clear">
            <h1 class="logo">&nbsp; 
                <a href="index.htm" title="驴友网" style="float: left;" >驴友网</a>
            </h1>
            <h2 class="slogan" title="在旅途中相遇">在旅途中相遇</h2>

            <div class="loginInfo">                
                <ul class="not_login">
                   <c:if test="${userName==null}">
                    <li style="float:right"><a href="${pageContext.request.contextPath}/toregister" class="btn_reg">注册</a></li>
                    <li  style="float:right"><a href="${pageContext.request.contextPath}/tologin"  id="top-nav-login" class="btn_login">登录</a></li>
					</c:if>
				<c:if test="${userName!=null }">
					<li style="float:right"><a href="${pageContext.request.contextPath}/user/logout">注销</a></li>                                        
					<li style="float:right"><a href="../notice/apply.htm">好友申请（0）</a>&nbsp;&nbsp;&nbsp;</li>
					<li style="float:right"><a href="../notice/message.htm">站内信（0）</a>&nbsp;&nbsp;&nbsp;</li>
					<li style="float:right"><a href="${pageContext.request.contextPath}/user/detail?userName=${userName}">${userName}</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
                </c:if>
                </ul>
            </div>
        </div>

	  <ul class="dropdown">
            <li>
                <a href="${pageContext.request.contextPath}/notice/list2">首页</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/tomemory">旅游记忆</a>
            </li>
            <li>
				<a href="${pageContext.request.contextPath}/totraveller">结伴游</a>
			</li>
            <li class="current">
				<a href="${pageContext.request.contextPath}/park/queryAllParks">景点攻略</a>
			</li>
		</ul>
		<div class="navSearch">
			<form action="${pageContext.request.contextPath}/park/showParkFrame2" method="get" id="searchForm" target="_blank">
				<input type="hidden" name="tourType" value="${tourType}"/>
				<input name="parkName" type="text" class="top-search-input" id="searchKey" value="搜索景区攻略" maxlength="50" autocomplete="off" value=<c:if test="${parkName==null or parkName==''}">"搜索景点攻略"</c:if><c:if test="${parkName!=null}">"${parkName}"</c:if>/>
                <input name="" type="submit" value="搜索" class="search_btn">
            </form>
			<div id="keyword_tip_content"></div>
		</div>
	</div>
</div>


<div id="container">
	<div id="mainWrapper" class="cf"> 
	<!-- 名胜古迹   begin -->   
		
	<div class="ui-box fn-clear">
			<div class="ui-title">
				<h2 class="ui-title-cnt fn-left">
					<em>人文古迹</em>
				</h2>  
				<div class="lookMoreUrl">
					<a href="${pageContext.request.contextPath}/park/showParkFrame?tourType=0">查看更多</a>
				</div>
			</div>
		<c:forEach items="${parkList}" var="park" varStatus="status">
			<c:if test="${park.tourType==0}">
			<c:if test="${status.count>=1 && status.count<=7}">
			<div class="parkInf">
				<a href="${pageContext.request.contextPath}/park/queryParkById?parkId=${park.parkId}"><img src="${pageContext.request.contextPath}/statics/images/images_user/${park.photo}" width="190" height="190"></a>
				<p class="historic"></p>
				<ul class="tag-info fn-clear">
					<li><a href="strategy_detail.htm" target="_blank">${park.parkName}</a></li>
					<li><a href="strategy_detail.htm" target="_blank">${park.bestMonth}</a></li>
					<li><a href="strategy_detail.htm" target="_blank">${park.suitPeople}</a></li>
				</ul>
			</div>
			</c:if>
			</c:if>	
		</c:forEach>
	</div>
	<!-- 名胜古迹 end -->  
	
	
	<!-- 自然风光 begin -->  	
		<div class="ui-box fn-clear">
			<div class="ui-title">
				<h2 class="ui-title-cnt fn-left"><em>自然风光</em></h2>  
				<div class="lookMoreUrl">
					<a href="${pageContext.request.contextPath}/park/showParkFrame?tourType=1">查看更多</a>
				</div>  
			</div>
			
		<c:forEach items="${parkList}" var="park" varStatus="status">
			<c:if test="${park.tourType==1}">
			<c:if test="${status.count>=1 && status.count<=11}">
				<div class="parkInf">
					<a href="${pageContext.request.contextPath}/park/queryParkById?parkId=${park.parkId}"><img src="${pageContext.request.contextPath}/statics/images/images_user/${park.photo}" width="190" height="190"></a>
					<p class="historic"></p>
					<ul class="tag-info fn-clear">
						<li><a href="strategy_detail.htm" target="_blank">${park.parkName}</a></li>
						<li><a href="strategy_detail.htm" target="_blank">${park.bestMonth}</a></li>
						<li><a href="strategy_detail.htm" target="_blank">${park.suitPeople}</a></li>
					</ul><span>&nbsp;&nbsp;&nbsp;</span>
				</div>
			</c:if>
			</c:if>	
		</c:forEach>
		</div>
		<!-- 自然风光  end --> 
		
		<!-- 游乐园    begin --> 
		<div class="ui-box fn-clear">
			<div class="ui-title">
				<h2 class="ui-title-cnt fn-left"><em>游乐园</em></h2>  
				<div class="lookMoreUrl">
					<a href="${pageContext.request.contextPath}/park/showParkFrame?tourType=2">查看更多</a>
				</div>  
			</div>
			
		<c:forEach items="${parkList}" var="park" varStatus="status">
			<c:if test="${park.tourType==2}">
			<c:if test="${status.count>=1 && status.count<=15}">
				<div class="parkInf">
					<a href="${pageContext.request.contextPath}/park/queryParkById?parkId=${park.parkId}"><img src="${pageContext.request.contextPath}/statics/images/images_user/${park.photo}" width="190" height="190"></a>
					<p class="historic"></p>
					<ul class="tag-info fn-clear">
						<li><a href="strategy_detail.htm" target="_blank">${park.parkName}</a></li>
						<li><a href="strategy_detail.htm" target="_blank">${park.bestMonth}</a></li>
						<li><a href="strategy_detail.htm" target="_blank">${park.suitPeople}</a></li>
					</ul><span>&nbsp;&nbsp;&nbsp;</span>
				</div>
			</c:if>
			</c:if>	
		</c:forEach>
		</div>
		<!-- 游乐园    end --> 
		
		
		
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
			<p><span>版权所有 TCJC056班
			<a href="#" >王硕</a><a href="#" > 王馨德</a><a href="#" >周梨香</a><a href="#" >汪树平</a><a href="#" >秦川</a><a href="#" >张京</a><a href="#" >程杰</a>
			</span></p><%--
            <div class="sns">
				<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				关注我们： </span><a href="#" class="login_sina">新浪微博 </a><a href="#" class="login_qq">腾讯微博</a>
				<a href="#" title="360绿色网站"><img src="http://trust.360.cn/img.php?sn=5229&id=5" border="0" /></a> 
			<!-- WPA Button Begin -->
		<!-- WPA Button END -->
			</div>
		--%></div>
	</div>
</div>
<!-- footer end -->
</body>
</html>