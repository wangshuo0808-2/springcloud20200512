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
	<title>个人中心 | 驴友网</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="mobile-agent" content="format=html5; url=http://m.roadqu.com">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/global.css" media="all">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/boxy,jquery.fancybox-1.3.4.css">
	<link  href="${pageContext.request.contextPath}/statics/css/css_user/aboutus.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/css_user/huidong.css">
		
	<script type="text/javascript">
		var userjson = '';
		var c_cityinfo = '';
	</script>
	<!-- 合并jquery and $LAB -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-2.1.4.min.js"></script>
  	<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-2.1.4.min.js"></script>
  	<script type="text/javascript">
  		$(function(){
  			$("a[name=del]").click(function(){
			var thisa=$(this);
			var id=thisa.attr("id");
			//提示是否删除
			if(confirm("确定删除旅游记忆吗?")){
				$.get("${pageContext.request.contextPath}/memory/delete1",{"id":id},
					function(result){
						if(result.row=="success"){
							
							location.href="${pageContext.request.contextPath}/memory/list2?userName=${userName}";
							alert("删除成功！")
						}
					})
			}
		})
	})
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
                <!-- 未登录 
                    <li style="float:right"><a href="../login/register.htm" class="btn_reg">注册</a></li>
                    <li  style="float:right"><a href="../login/login.htm"  id="top-nav-login" class="btn_login">登录</a></li>
				-->
					<li style="float:right"><a href="${pageContext.request.contextPath}/user/logout">注销</a></li>                                        
					<li style="float:right"><a href="#">好友申请（0）</a>&nbsp;&nbsp;&nbsp;</li>
					<li style="float:right"><a href="#">站内信（0）</a>&nbsp;&nbsp;&nbsp;</li>
					<li style="float:right"><a href="${pageContext.request.contextPath}/user/detail?userName=${userName}">${userName}</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
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
			<form action="${pageContext.request.contextPath}/memory/list2" method="get" id="searchForm" target="_blank">
				<input type="hidden" name="userName" value="${userName}"/>
				<input name="title" type="text" class="top-search-input" id="searchKey" value=<c:if test="${title==null or title==''}">"搜索旅游记忆"</c:if><c:if test="${title!=null}">"${title}"</c:if>  maxlength="50" autocomplete="off"/>
                <input name="" type="submit" value="搜索" class="search_btn">
            </form>
			<div id="keyword_tip_content"></div>
		</div>
	</div>
</div>
<!--top end-->

<div id="container" class="fn-clear">
	<div class="bottom">
    	<div class="bottom_t"></div>
        <div class="bottom_c h650">
       	  <div class="bottom_c_l">
           	  <div class="title01"> 动态 </div>
              <div class="list01 bk">
                <ul>
                    <li>
						<a href="#"><div class="icon_bot"><img src="${pageContext.request.contextPath}/statics/images/images_user/help13.png"></div>我的动态</a>
					</li>
                    <li>
						<a href="#"><div class="icon_bot"><img src="${pageContext.request.contextPath}/statics/images/images_user/help13.png"></div>好友动态</a>
					</li>
                </ul>
			</div>
           	  <div class="title01"> 我的记忆 </div>
              <div class="list01 bk">
                <ul>
                    <li>
						<a href="${pageContext.request.contextPath}/touser_memory_add?userName=${userName}"><div class="icon_bot"><img src="${pageContext.request.contextPath}/statics/images/images_user/help12.png"></div>发布新记忆</a>
					</li>
                    <li class="un">
						<a href="#"><div class="icon_bot"><img src="${pageContext.request.contextPath}/statics/images/images_user/help14.png"></div>全部记忆</a>
					</li>
                </ul>
			</div>	
           	  <div class="title01"> 相约驴友 </div>
              <div class="list01 bk">
                <ul>
                    <li>
						<a href="#"><div class="icon_bot"><img src="${pageContext.request.contextPath}/statics/images/images_user/help12.png"></div>发起旅游</a>
					</li>
                    <li>
						<a href="#"><div class="icon_bot"><img src="${pageContext.request.contextPath}/statics/images/images_user/help13.png"></div>我发起的旅游</a>
					</li>
                </ul>
			</div>
           	  <div class="title01"> 我的好友 </div>
              <div class="list01 bk">
                <ul>
                    <li>
						<a href="#"><div class="icon_bot"><img src="${pageContext.request.contextPath}/statics/images/images_user/help12.png"></div>好友列表</a>
					</li>
                </ul>
			</div>
           	  <div class="title01">账号管理</div>
              <div class="list01 bk">
                <ul>
                    <li>
						<a href="${pageContext.request.contextPath}/user/detail?userName=${userName}"><div class="icon_bot"><img src="${pageContext.request.contextPath}/statics/images/images_user/help12.png"></div>基本信息</a>
					</li><%--
                    <li>
						<a href="#"><div class="icon_bot"><img src="${pageContext.request.contextPath}/statics/images/images_user/help13.png"></div>修改头像</a>
					</li>
                    --%><li>                    
						<a href="${pageContext.request.contextPath}/topassword_change?userName=${userName}"> <div class="icon_bot"><img src="${pageContext.request.contextPath}/statics/images/images_user/help14.png"></div>修改密码</a>
					</li>
                </ul>
			</div>											
		</div>
		
		<div class="bottom_c_r">
			<h2 style="width:680px; height:40px; line-height:41px; background:#83bb4a url(${pageContext.request.contextPath}/statics/images/images_user/reg-title-bg.png) repeat-x; 
						color:#fefefe; text-indent:25px; font-size:20px; font-family:\9ED1\4F53; font-weight:400;">全部记忆</h2>
			<ul id="comment-list" class="comment-list">
			
			<%--<c:forEach items="${page.list}" var="m">
				<li class="fn-clear">
					<div >
						<p>
						
							<a class="comment_user" href="../memory/memory_detail.htm"><img width="75" height="75" alt="i闲逛" >
							<fmt:formatDate value="${m.submitTime }" pattern="yyyy年MM月dd日"/>
							-【<fmt:formatDate value="${m.submitTime+5*60*60*24}" pattern="yyyy年MM月dd日"/>】${m.title}
							</a>
							
							<img alt="" src="${basePath}${m.photo}" width="20px" height="20px">
							<label style="float:right">
								<a class="comment_user" href="#">删除</a>
							</label>
						</p>
						
						<div class="comment_box">
							<div class="comment_cnt"> 
								类别：${m.memoryType}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								发布时间：<fmt:formatDate value="${m.submitTime }" pattern="yyyy-MM-dd hh:mm"/>    
							</div>
						</div>
					</div>
				</li>
				</c:forEach>
				--%><c:forEach items="${page.list}" var="m">
				<li class="fn-clear">
					<div >
						<p>
							<a class="comment_user" href="${pageContext.request.contextPath}/memory/detail2?id=${m.travelMemoryId}"><img width="75" height="75" alt="i闲逛" src="${basePath}${m.photo}">${m.title}</a>
							<label style="float:right"><a class="comment_user" name="del" id=${m.travelMemoryId} href="#">删除</a></label>
						</p>
						<div class="comment_box">
							<div class="comment_cnt"> 
								类别：${m.memoryType}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								发布时间：<fmt:formatDate value="${m.submitTime }" pattern="yyyy-MM-dd hh:mm"/>    
							</div>
						</div>
					</div>
				</li>
				</c:forEach>
				<%--<li class="fn-clear">
					<div >
						<p>
							<a class="comment_user" href="../memory/memory_detail.htm"><img width="75" height="75" alt="i闲逛" src="${pageContext.request.contextPath}/statics/images/images_user/0_201301211158_youhui.jpg">【2013年7月1日-2013年7月5日】苏州行</a>
							<label style="float:right"><a class="comment_user" href="#">删除</a></label>
						</p>
						<div class="comment_box">
							<div class="comment_cnt"> 
								类别：面朝大海&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								发布时间：2013-03-15 16:51:22    
							</div>
						</div>
					</div>
				</li>--%>
			</ul>
			<!--分页-->
			<div class="no-pages cf">
				<c:if test="${page.pageNo>1}">
    			<a href="${pageContext.request.contextPath}/memory/list2?userName=${userName}&title=${title}&pageNo=1">首页</a>
    			<a href="${pageContext.request.contextPath}/memory/list2?userName=${userName}&title=${title}&pageNo=${page.pageNo-1}">上一页</a>
    			</c:if>
    			<c:if test="${page.pageNo<=1}">
				<a>首页</a>
				<a>上一页</a>
				</c:if>
				<c:if test="${page.pageNo<page.totalPageCount}">
    			<a href="${pageContext.request.contextPath}/memory/list2?userName=${userName}&title=${title}&pageNo=${page.pageNo+1}">下一页</a>
    			<a href="${pageContext.request.contextPath}/memory/list2?userName=${userName}&title=${title}&pageNo=${page.totalPageCount}">末页</a>
    			</c:if>
				<c:if test="${page.pageNo>=page.totalPageCount}">
				<a>下一页</a>
				<a>末页</a>
				</c:if>
    			第${page.pageNo}页/共${page.totalPageCount}页
			</div>
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
			<p><span>版权所有TCJC056班</span><br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>周梨香</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>王硕</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>汪树平</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>王馨德</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>秦川</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>张京</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>程杰</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</p>
            <%--<div class="sns">
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
