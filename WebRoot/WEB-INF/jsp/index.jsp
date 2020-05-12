<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>首页 | 驴友网</title>
    <meta name="Keywords" content="驴友网"/>
    <meta name="Description" content="旅游社交，在旅途中享受激情与欢乐"/>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="mobile-agent" content="format=html5; url=http://m.roadqu.com">
    <meta name="baidu-site-verification" content="fGdITGCHHMB5crjs" />
    <link rel="shortcut icon" href="favicon.ico"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta http-equiv="mobile-agent" content="format=html5; url=http://m.roadqu.com">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/global.css" media="all"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/boxy,jquery.fancybox-1.3.4.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/css_user/cityguide.css"  />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/css_user/index.css" media="all">
    <script type="text/javascript">
    var userjson = '';
    var c_cityinfo = '';
</script>
<!-- 合并jquery and $LAB -->
<script type="text/javascript" src="statics/js/jquery-1.4.4.min,LAB.min.js"></script>
</head>

<body>
<div class="header">
    <div class="headWrap">
        <div class="headTop fn-clear">
            <h1 class="logo">
                <a href="index.jsp" title="驴友网" style="float: left;" >驴友网</a>
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
            <li class="current">
                <a href="index.jsp" >首页</a>
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
				<input name="title" type="text" class="top-search-input" id="searchKey" value=<c:if test="${title==null or title==''}">"搜索旅游记忆"</c:if><c:if test="${title!=null}">"${title}"</c:if> maxlength="50" autocomplete="off"/>
                <input name="" type="submit" value="搜索" class="search_btn">
            </form>
			<div id="keyword_tip_content"></div>
		</div>
	</div>
</div>
<!--top end-->

<!--main body-->
<div id="container">


<div class="sceneInfo">
    <div class="sceneView fn-clear ">
        <div class="scenePic">
			<ul id="slider" class="slider">
            	<li>
					<a href="">
						<img src="${pageContext.request.contextPath}/statics/images/images_user/intro_201301102119_-1.jpg" width="530" height="325" alt="观澜版画村 画中有话" title="观澜版画村 画中有话">
					</a>
                    <div class="alpha-txt txt-info">
                        <h2>观澜版画村 画中有话</h2>
                        <p>久负盛名客家小村，都市繁华深处的一块净土，深圳最美丽的乡村。</p>
                    </div>
                </li>
                <li>
					<a href="">
						<img src="${pageContext.request.contextPath}/statics/images/images_user/intro_201301102121_-1.jpg" width="530" height="325" alt="玩水嬉游 海滩撒欢" title="玩水嬉游 海滩撒欢">
					</a>
                    <div class="alpha-txt txt-info">
                        <h2>玩水嬉游 海滩撒欢</h2>
                        <p>深圳拥有滩长、浪软、沙细的多个海滩，去寻找最休闲最娱乐最美丽的那片海滩吧。</p>
                    </div>
                </li>
                <li>
                    <a href="">
                        <img src="${pageContext.request.contextPath}/statics/images/images_user/intro_201301102121_-2.jpg" width="530" height="325" alt="大鹏古城 深圳发源地" title="大鹏古城 深圳发源地">
                    </a>
                    <div class="alpha-txt txt-info">
                        <h2>大鹏古城 深圳发源地</h2>
                        <p>古城小巷间，隐匿着多少失落的历史光阴，寻古探幽，发现历史与禅意。</p>
                    </div>
                </li>
                <li>
                    <a href="">
                        <img src="${pageContext.request.contextPath}/statics/images/images_user/intro_201301102121_-3.jpg" width="530" height="325" alt="大望梧桐  深圳桃花源" title="大望梧桐  深圳桃花源">
                    </a>
                    <div class="alpha-txt txt-info">
                        <h2>大望梧桐  深圳桃花源</h2>
                        <p>不经意间，在深圳大望，发现那么一个地方，只一眼，所有小时候的记忆呼之欲出。 </p>
                    </div>
                </li>
                <li>
                    <a href="">
                        <img src="${pageContext.request.contextPath}/statics/images/images_user/intro_201301102121_-4.jpg" width="530" height="325" alt="一街两制  中英街" title="一街两制  中英街">
                    </a>
                    <div class="alpha-txt txt-info">
                        <h2>一街两制  中英街</h2>
                        <p>沧桑和繁华的中英街，深圳特有的、全世界独一无二的“一街两制”免税商业街。 </p>
                    </div>
                </li>
			</ul>
		</div>
        <div class="sceneIntro">
            <div class="sceneIntro-head">
                <h2 class="fn-left">系统公告</h2></div>
			<p><span class="fn-clear">欢迎进入驴友网，更多公告信息动态更新......</span></p><br />
				
            <div class="scene-subcnt">
            	
            	<c:forEach items="${page.list}" var="va">
            	<marquee direction=down  scrolldelay="500" onmouseover=this.stop() onmouseout=this.start()>
                <ul class="guide-tag">
                    <li> <a href="#" class="wantGo" ></a>标题：${va.title}</li>
                    <li class="gone"><a href="#" class="aleadyGo" >内容：${va.content}</a></li>
                    <li class="tuijian"><a href="#" class="share-city" id="share-city"></a>发布者：驴友网管理处&nbsp;&nbsp;&nbsp;&nbsp;发布时间：<fmt:formatDate value="${va.releaseTime}" pattern="yyyy-MM-dd hh:mm"/></li>
                	
                	<%--不经意间，scrolldelay="1000" scrollamount="1000"只一眼，所有小时候的记忆呼之欲出 ,古城小巷，隐匿多少失落的历史光阴，发现历史与禅意,久负盛名客家小村，都市繁华深处的一块净土
                --%></ul></marquee></c:forEach>
            </div>
			<div class="scoreSec"><br /><br /><br/><br /><br />
				<ul class="scene-thumbnail" id="scene-thumbnail">
					<li>
						<a href="${pageContext.request.contextPath}/statics/images/images_user/5f45080874b9502e80cbfcc3e10c6dd3-175-175.jpg" target="_blank"
						   rel="gallery" class="thumbnail">
							<img src="${pageContext.request.contextPath}/statics/images/images_user/5f45080874b9502e80cbfcc3e10c6dd3-175-175_c.jpg" alt="teamleader" width="70" height="70"></a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/statics/images/images_user/8ec44886bac029c30e931b67be5922ec-175-175.jpg" target="_blank"
						   rel="gallery" class="thumbnail">
							<img src="${pageContext.request.contextPath}/statics/images/images_user/8ec44886bac029c30e931b67be5922ec-175-175_c.jpg" alt="teamleader" width="70" height="70"></a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/statics/images/images_user/d28a4f38621a9c8c7cfce41ddc367a68-175-175.jpg" target="_blank"
						   rel="gallery" class="thumbnail">
							<img src="${pageContext.request.contextPath}/statics/images/images_user/d28a4f38621a9c8c7cfce41ddc367a68-175-175_c.jpg" alt="小u" width="70" height="70"></a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/statics/images/images_user/f7896dc56b2f4d349da6a945d10b2546-175-175.jpg" target="_blank"
						   rel="gallery" class="thumbnail">
							<img src="${pageContext.request.contextPath}/statics/images/images_user/f7896dc56b2f4d349da6a945d10b2546-175-175_c.jpg" alt="teamleader" width="70" height="70"></a>
					</li>
					<li class="more-link">
						<a href="city/pic/shenzhen">更多图片</a>
					</li>
				</ul>
			</div>
		</div>
    </div>
</div>

<!--热门旅游记忆-->
<div class="ui-box fn-clear">
    <div class="ui-title">
        <h2 class="ui-title-cnt fn-left"><em>旅游记忆</em></h2>
        <div class="ui-title-subcnt fn-right"><a target="_blank" href="${pageContext.request.contextPath}/memory/list3">+更多</a></div>
    </div>
    <ul class="poi_hot" id="poi_hot">
		<li>
            <a title="惠州罗浮山" href="${pageContext.request.contextPath}/memory/detail3?title=惠州罗浮山">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/login_poi_2013031109501.jpg" alt="惠州罗浮山" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="惠州罗浮山" href="${pageContext.request.contextPath}/memory/detail3?title=惠州罗浮山">惠州罗浮山</a></p>
            <div class="alpha-txt intro_info">
                <p>惠州罗浮山风景区是春天爬山、泡温泉休闲好去处。</p>
            </div>
		</li>
		<li>
            <a title="西丽水库" href="${pageContext.request.contextPath}/memory/detail3?title=西丽水库">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/login_poi_2013031109362.jpg" alt="西丽水库" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="西丽水库" href="${pageContext.request.contextPath}/memory/detail3?title=西丽水库">西丽水库</a></p>
            <div class="alpha-txt intro_info">
                <p>西丽水库历史悠久，风景优美，是春天骑行的好去处。</p>
            </div>
		</li>
		<li>
            <a title="婺源" href="${pageContext.request.contextPath}/memory/detail3?title=婺源">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/login_poi_2013031109523.jpg" alt="婺源" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="婺源" href="${pageContext.request.contextPath}/memory/detail3?title=婺源">婺源</a></p>
            <div class="alpha-txt intro_info">
                <p>漫步在婺源油菜花田间，不知有多么的诗情画意。</p>
            </div>
		</li>
		<li>
            <a title="小坑国家森林公园" href="${pageContext.request.contextPath}/memory/detail3?title=小坑国家森林公园">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/login_poi_2013031110074.jpg" alt="小坑国家森林公园" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="小坑国家森林公园" href="${pageContext.request.contextPath}/memory/detail3?title=小坑国家森林公园">小坑国家森林公园</a></p>
            <div class="alpha-txt intro_info">
                <p>韶关小坑国家森林公园清新宁静，诗歌释放压力的好地方。</p>
            </div>
		</li>  
    </ul>
</div>
<!--热门旅游记忆- end-->


</div>
</div>
<!--main body end-->

<div class="footer " >
    <div class="footerWrap fn-clear">
<div class="foot">
		<p><span>版权所有TCJC056班</span><br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>周梨香</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>王硕</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>汪树平</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>王馨德</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>秦川</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>张京</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>程杰</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</p>
       
		</div>
	</div>
</div>
<!-- footer end -->


<a href="#map_picker_content" id="mappickerfancybox" class="disnone">更改</a>
<div class="disnone" id="map_picker_wrap">
    <div id="map_picker_content"></div>
</div>

<!-- STUFF YOU NEED FOR BEAUTYTIPS -->
<!--[if IE]>
<script src="/static/js/excanvas.js" type="text/javascript" charset="utf-8"></script><![endif]-->
<!-- /STUFF -->

<!-- 图片加载透明文字开始 -->
<script type="text/javascript">
    $(document).ready(function () {

        // 幻灯片
        $("#poi_hot li,#wanfa_pic li:first").hover(function () {
            var $this = $(this);
            $this.find('div.intro_info').show();

        }, function () {
            var $this = $(this);
            $this.find('div.intro_info').hide();

        })
        $LAB.script("statics/js/jquery.bxSlider.min.js")
                .wait(function () {
                    $('#slider').bxSlider({ auto:true, pager:true});
                    $('#link-list').bxSlider({ speed:1000});
                })
        $("#guide_nav li").hover(function () {
            var $this = $(this);
            $this.addClass("guide_nav_item_hover");


        }, function () {
            var $this = $(this);
            $this.removeClass("guide_nav_item_hover");

        })

        //youhui pop

        var isInDiscountCard = false;


        $("#youhui-hot>li").bt(
                {
                    fill:'#FFFFFF',
                    strokeStyle:'#BFBFA8',
                    cornerRadius:5,
                    padding:20,
                    width:285,
                    spikeLength:10,
                    spikeGirth:10,
                    ajaxPath:["$(this).attr('data-href')"],
                    closeWhenOthersOpen:true,


                    hideTip:function (box, callback) {
                        if (!isInDiscountCard) {
                            $(box).hide();

                            callback();
                        }
                    },
                    hoverIntentOpts:{
                        interval:300,
                        timeout:1000
                    }

                });

        $('#pop-discount').live('mouseenter', function () {

            isInDiscountCard = true;
        });

        $('#pop-discount').live('mouseleave', function () {

            isInDiscountCard = false;
            $("#container").trigger('click');
        });

    });
	
</script>
<!-- 图片加载透明文字结束 -->
</body>
</html>

