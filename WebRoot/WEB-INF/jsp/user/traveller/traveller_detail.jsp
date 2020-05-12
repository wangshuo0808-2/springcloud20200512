<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>结伴游 | 驴友网</title>
    <meta charset="utf-8">
    <meta name="Keywords" content="" />
    <meta name="Description" content="" />
    <link rel="shortcut icon"  href="favicon.ico" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="mobile-agent" content="format=html5; url=http://m.roadqu.com">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/global.css" media="all">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/boxy,jquery.fancybox-1.3.4.css">
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/css_user/youhui.css" media="all">
    <script type="text/javascript">
		var userjson = '';
		var c_cityinfo = '';
	</script>
</head>

<body>
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
<!--top end-->

<!--main body-->
<div id="container">

    <div class="ui-box fn-clear ">
        <div class="city-guide">
            <div class="fn-left">
				<a href="#">【2013年7月1日-2013年7月5日】苏州行</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发帖时间：2013年3月24日
            </div>
		 </div>
		 
        <!-- 发帖人 -->
        <div class="tag-list menu_select cf">
        	<span class="tag-notes fn-left">发帖人：</span>
            <span class="tag-cnt fn-right" id="lyq"><a title="禾木" href="#" data-lyq="0">禾木</a></span>
        </div>
         <!--end 发帖人 -->
		 
		 <!-- 目的地 -->
        <div class="tag-list menu_select cf">
        	<span class="tag-notes fn-left">目的地：</span>
            <span class="tag-cnt fn-right" id="lyq"><a title="苏州" href="#" class="tag-current" data-lyq="0">苏州</a></span>
        </div>
         <!--end 目的地 -->
		 
		  <!-- 行程安排 -->
        <div class="tag-list menu_select cf">
        	<span class="tag-notes fn-left">行程安排：</span>
            <span class="tag-cnt fn-right" id="lyq"><a href="#" data-lyq="0">2013年7月1日</a> <a href="#">至</a> <a href="#" data-lyq="0">2013年7月5日</a></span>
        </div>
         <!--end 行程安排 -->
		 
		 <!-- 联系方式 -->
        <div class="tag-list menu_select cf">
        	<span class="tag-notes fn-left">联系方式：</span>
            <span class="tag-cnt fn-right" id="lyq"><a href="#" class="tag-current" data-lyq="0">15201345955</a></span>
        </div>
         <!--end 联系方式 -->
		 
		 <!-- 帖子详情 -->
        <div class="tag-list menu_select cf">
        	<span class="tag-notes fn-left">详情：</span>
            <span class="tag-cnt fn-right" id="lyq">苏州（Suzhou），中国华东地区特大城市之一，首批历史文化名城，中国十大重点风景旅游城市之一。地处长江三角洲，位于江苏省东南部，古称吴郡。苏州古城始建于公元前514年的吴王阖闾时期，建城史逾2500年，又因城西南有山曰姑苏，于隋开皇九年（589年）更名为苏州。苏州历史悠久，人文荟萃，以“上有天堂，下有苏杭”而驰声海内，秀丽、典雅且有“甲江南”声名的苏州园林，小桥流水环绕姑苏城内，令人心驰神往。苏州是长江三角洲经济圈北翼重要的副中心城市之一，苏州作为一座现代化程度较高的城市，是江苏省重要的的经济、对外贸易、工商业中心和重要的文化、艺术、教育和交通枢纽，同时中国最具经济活力城市、国家卫生城市、国家环保模范城市和全国文明城市之一。诚征驴友同行。</span>
        </div>
         <!--end 帖子详情 -->
    </div>
  

</div>
</div>

<!--main body end-->

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
