<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html  lang="zh">
<head>
	<meta charset="utf-8">
	<title>旅游记忆 | 驴友网</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="mobile-agent" content="format=html5; url=http://m.roadqu.com">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/global.css" media="all">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/boxy,jquery.fancybox-1.3.4.css">
	<link  href="${pageContext.request.contextPath}/statics/css/css_user/aboutus.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
		var userjson = '';
		var c_cityinfo = '';
	</script>

</head>
<body>
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
                <a href="${pageContext.request.contextPath}/notice/list2" >首页</a>
            </li>
            <li class="current">
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
			<form action="${pageContext.request.contextPath}/memory/list3" method="get" id="searchForm" target="_blank">
				<input name="title" type="text" class="top-search-input" id="searchKey" value=<c:if test="${title==null or title==''}">"搜索旅游记忆"</c:if><c:if test="${title!=null}">"${title}"</c:if> maxlength="50" autocomplete="off"/>
                <input type="hidden" name="memoryType" value="${memoryType}"/>
                <input name="" type="submit" value="搜索" class="search_btn">
            </form>
			<div id="keyword_tip_content"></div>
		</div>
	</div>
</div>
<!--top end-->

<div id="container" class="fn-clear">
<div class="main">
	<div class="bottom">
    	<div class="bottom_t"></div>
        <div class="bottom_c h650">
       	  <div class="bottom_c_l">
           	  <div class="title01"> 记忆分类 </div>
              <div class="list01 bk">
                <ul>
                    <li class="un">
						<a href="${pageContext.request.contextPath}/memory/list3?memoryType=面朝大海"><div class="icon_bot"><img src="${pageContext.request.contextPath}/statics/images/images_user/help12.png"></div>面朝大海</a>
					</li>
                    <li>
						<a href="${pageContext.request.contextPath}/memory/list3?memoryType=古镇时光"><div class="icon_bot"><img src="${pageContext.request.contextPath}/statics/images/images_user/help13.png"></div>古镇时光</a>
					</li>
                    <li>                    
						<a href="${pageContext.request.contextPath}/memory/list3?memoryType=吃货血拼"> <div class="icon_bot"><img src="${pageContext.request.contextPath}/statics/images/images_user/help14.png"></div>吃货血拼</a>
					</li>
                    <li>                    
						<a href="${pageContext.request.contextPath}/memory/list3?memoryType=户外撒野"> <div class="icon_bot"><img src="${pageContext.request.contextPath}/statics/images/images_user/help14.png"></div>户外撒野</a>
					</li>
                </ul>
			</div>
		</div>
		
		<div class="bottom_c_r">
			<ul class="zhuanti-list">
				<c:forEach items="${page.list}" var="t">
				<li class="ui-box zhuanti-item">
					<a target="_blank" href="${pageContext.request.contextPath}/memory/detail2?id=${t.travelMemoryId}"><img  src="${basePath}${t.photo}" alt="${t.title}" width="250" height="180"></a>
					<div class="zhuanti-info fn-right"><br /><br />
						<a href="${pageContext.request.contextPath}/memory/detail2?id=${t.travelMemoryId}"><h3>${t.title}</h3></a><br /><br />
						<p>类别：${t.memoryType}&nbsp;&nbsp;&nbsp;&nbsp;发布者：${t.userName}&nbsp;&nbsp;&nbsp;&nbsp;发布时间：<fmt:formatDate value="${t.submitTime }" pattern="yyyy-MM-dd hh:mm"/></p>
					</div>
				</li>
				</c:forEach>
				<%--<li class="ui-box zhuanti-item">
					<a target="_blank" href="memory_detail.htm"><img src="${pageContext.request.contextPath}/statics/images/images_user/login_poi_2013031109501.jpg" alt="惠州罗浮山" width="300" height="200"></a>
					<div class="zhuanti-info fn-right"><br /><br />
						<a href="memory_detail.htm"><h3>惠州罗浮山</h3></a><br /><br />
						<p>类别：面朝大海&nbsp;&nbsp;&nbsp;&nbsp;发布者：禾木&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2013-07-01</p>
					</div>
				</li>
				<li class="ui-box zhuanti-item">
					<a target="_blank" href="memory_detail.htm"><img src="${pageContext.request.contextPath}/statics/images/images_user/login_poi_2013031109501.jpg" alt="惠州罗浮山" width="300" height="200"></a>
					<div class="zhuanti-info fn-right"><br /><br />
						<a href="memory_detail.htm"><h3>惠州罗浮山</h3></a><br /><br />
						<p>类别：面朝大海&nbsp;&nbsp;&nbsp;&nbsp;发布者：禾木&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2013-07-01</p>
					</div>
				</li>
			--%></ul>
			<!--分页-->
			<div class="no-pages">
			<c:if test="${page.pageNo>1}">
    			<a href="${pageContext.request.contextPath}/memory/list3?memoryType=${memoryType}&title=${title}&pageNo=1">首页</a>
    			<a href="${pageContext.request.contextPath}/memory/list3?memoryType=${memoryType}&title=${title}&pageNo=${page.pageNo-1}">上一页</a>
    			</c:if>
    			<c:if test="${page.pageNo<=1}">
				<a>首页</a>
				<a>上一页</a>
				</c:if>
				<c:if test="${page.pageNo<page.totalPageCount}">
    			<a href="${pageContext.request.contextPath}/memory/list3?memoryType=${memoryType}&title=${title}&pageNo=${page.pageNo+1}">下一页</a>
    			<a href="${pageContext.request.contextPath}/memory/list3?memoryType=${memoryType}&title=${title}&pageNo=${page.totalPageCount}">末页</a>
    			</c:if>
				<c:if test="${page.pageNo>=page.totalPageCount}">
				<a>下一页</a>
				<a>末页</a>
				</c:if>
    			第${page.pageNo}页/共${page.totalPageCount}页</div>
    			</div>
			<!--分页-->
		</div>
		</div>
        <div class="bottom_b"></div>
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
			<p><span>版权所有TCJC056班</span><br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>周梨香</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>王硕</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>汪树平</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>王馨德</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>秦川</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>张京</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>程杰</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</p><%--
            <div class="sns">
				<span>关注我们： </span><a href="#" class="login_sina">新浪微博 </a><a href="#" class="login_qq">腾讯微博</a>
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
