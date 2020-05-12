<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh">
<head>
	<meta charset="utf-8" />
    <title>景点攻略 | 驴友网</title>
    <meta name="Keywords" content="" />
    <meta name="Description" content="" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="mobile-agent" content="format=html5; url=http://m.roadqu.com">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/global.css" media="all">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/boxy,jquery.fancybox-1.3.4.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/css_user/cityguide.css"  />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/css_user/youhui.css" media="all">
</head>
   
<body id="profile-homepage">
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.7.2.min.js"></script>
<script>
	$(function(){
		$("a[name=alreadyCount]").click(function(){
			var parkId=${park.parkId};
		    var alreadyVisitCount=${park.alreadyVisitCount};
			$.get("${pageContext.request.contextPath}/park/updateAlreadyCount",{"parkId":parkId,"alreadyVisitCount":alreadyVisitCount},function(result){
				if(result.updateInfo1=="success"){
					$("#alrFix").html(result.count);
				}
			});
		});
		
		$("a[name=wantCount]").click(function(){
			var parkId=${park.parkId};
		    var wantToVisitCount=${park.wantToVisitCount};
			$.get("${pageContext.request.contextPath}/park/updateWantCount",{"parkId":parkId,"wantToVisitCount":wantToVisitCount},function(result){
				if(result.updateInfo2=="success"){
					$("#wantFix").html(result.count);
				}
			});
		});
	})
</script>
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
                <a href="${pageContext.request.contextPath}/notice/list2" >首页</a>
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
				<input name=""parkName" type="text" class="top-search-input" id="searchKey" value="搜索旅游记忆" maxlength="50" autocomplete="off" value=<c:if test="${parkName==null or parkName==''}">"搜索景点攻略"</c:if><c:if test="${parkName!=null}">"${parkName}"</c:if>/>
                <input name="" type="submit" value="搜索" class="search_btn">
            </form>
			<div id="keyword_tip_content"></div>
		</div>
	</div>
</div>

<div id="container">
<div id="mainWrapper" class="cf"> 

	<div class="sceneInfo">
    	<div class="sceneView fn-clear ">
       		<div class="scenePic">
				<ul id="slider" class="slider">
					<li>
						<a href="#"><img src="${pageContext.request.contextPath}/statics/images/images_user/${park.photo}" width="530" height="325" alt="观澜版画村 画中有话" title="观澜版画村 画中有话"></a>
						<div class="alpha-txt txt-info">
                        	<h2>景区</h2>
                        	<p>${park.parkName}</p>
                    	</div>
                	</li>
				</ul>
			</div>
			
			<div class="sceneIntro">
				<div class="sceneIntro-head">
               		<h2 class="fn-left">城市印象</h2>
                	<div class="scene_share">
                    	<div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
                        	<span class="bds_more">分享到：</span>
                        	<a class="bds_tsina"></a>
                        	<a class="bds_tqq"></a>
                        	<a class="bds_kaixin001"></a>
                        	<a class="bds_renren"></a>
                       	 	<a class="bds_qzone"></a>
                   		</div>
                	</div>
            	</div>
				
				<p class="txt-desc-p">
                	<span class="fn-clear">${park.parkIntroduce}</span>
           		</p>

            <div class="scene-subcnt">
                <ul class="guide-tag">
                    <li> 
	                    <a name="wantCount" 
	                    class="wantGo" data-flag="0" 
	                    data-lid="d03f8050ea1ccf438b874a53f5bdf478">想去</a><span id="wantFix">${park.wantToVisitCount}</span>
                    </li>
                    <li class="gone">
                    	<a name="alreadyCount"
                    	class="aleadyGo" data-flag="0" 
                    	data-lid="d03f8050ea1ccf438b874a53f5bdf478">去过</a><span id="alrFix">${park.alreadyVisitCount}</span>
                    </li>
                    <li class="tuijian"><a href="#" class="share-city" id="share-city" data-cityid="291">推荐给朋友</a></li>
                </ul>
            </div>
            <div class="scoreSec">
            <a href="javascript:void(0);" onClick="javascript:return needLogin();" class="load-gonglue-btn" >下载城市攻略</a>                <a href="javascript:void(0);" onClick="javascript:return needLogin();" class="load-map-btn" >下载旅游地图</a>                            </div>
 
        </div>
    </div>
	
	<div class="ui-box fn-clear ">
	<!-- 发帖人 -->
        <div class="tag-list menu_select cf">
        	<span class="tag-notes fn-left">景点：</span>
            <span class="tag-cnt fn-right" id="lyq"><a href="#" data-lyq="0">${park.parkName}</a></span>
        </div>
         <!--end 发帖人 -->
        <!-- 发帖人 -->
        <div class="tag-list menu_select cf">
        	<span class="tag-notes fn-left">类型：</span>
            <span class="tag-cnt fn-right" id="lyq">
            	<a href="#" data-lyq="0">
            		<c:if test="${park.tourType==0}">
            			人文古迹
            		</c:if>
            		<c:if test="${park.tourType==1}">
            			自然风光
            		</c:if>
            		<c:if test="${park.tourType==2}">
            			游乐园
            		</c:if>
            	</a>
            </span>
        </div>
         <!--end 发帖人 -->
		 
		 <!-- 目的地 -->
        <div class="tag-list menu_select cf">
        	<span class="tag-notes fn-left">适宜人群：</span>
            <span class="tag-cnt fn-right" id="lyq"><a href="#" class="tag-current" data-lyq="0">${park.suitPeople}</a></span>
        </div>
         <!--end 目的地 -->
		 
		  <!-- 行程安排 -->
        <div class="tag-list menu_select cf">
        	<span class="tag-notes fn-left">适宜时间：</span>
            <span class="tag-cnt fn-right" id="lyq"><a href="#" data-lyq="0">${park.bestMonth}</a></span>
        </div>
         <!--end 行程安排 -->
		 
		 <!-- 联系方式 -->
        <div class="tag-list menu_select cf">
        	<span class="tag-notes fn-left">必备装备：</span>
            <span class="tag-cnt fn-right" id="lyq"><a href="#" class="tag-current" data-lyq="0">雨伞</a>
													<a href="#" data-lyq="0">外套</a><a href="#" data-lyq="0">运动鞋</a>
													<a href="#" data-lyq="0">充电器</a><a href="#" data-lyq="0">银行卡</a></span>
        </div>
         <!--end 联系方式 -->
		  <!-- 联系方式 -->
        <div class="tag-list menu_select cf">
        	<span class="tag-notes fn-left">注意事项：</span>
            <span class="tag-cnt fn-right" id="lyq">1、出门在外，安全第一（人身、财产、证件）；2、穿衣佩戴，应时应景；3、自备药品，有备无患；4、入乡随俗，尊重为要</span>
        </div>
         <!--end 联系方式 -->
		 
		 <!-- 帖子详情 -->
        <!--<div class="tag-list menu_select cf">
        	<span class="tag-notes fn-left">详情：</span>
            <span class="tag-cnt fn-right" id="lyq">深圳梧桐山风景名胜区位于东经113 °17'～114 °18',北纬22 °23'～22 °43'的沿海地区，在深圳经济特区东部，西临深圳水库，东至盐田港，南北均临近特区边界。风景名胜区邻近繁华市区，面临南海大鹏湾，与香港新界山脉相连、溪水相通，具备了国内风景区名胜区中独特的地理位置。</span>
        </div>
         --><!--end 帖子详情 -->
    </div>
</div>	
</div>
</div>

<script type="text/javascript" id="bdshare_js" data="type=tools&amp;mini=1&amp;uid=718154" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
    var bds_config = {'bdText':'我正在光临驴友网，精选的线路行程、旅游圈、专题和游记攻略，还有特色景点、住宿、美食、购物和交通服务等，可查看游玩地图，还能下载城市旅游攻略。（分享自路趣网）','bdPic':'http://www.roadqu.com/images/intro_201301102119_-1.jpg'};
    document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + new Date().getHours();
</script>

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
