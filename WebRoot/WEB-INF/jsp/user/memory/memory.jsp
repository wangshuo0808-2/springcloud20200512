<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>旅游记忆 | 驴友网</title>
    <meta name="Keywords" content="驴友网"/>
    <meta name="Description" content="旅游社交，在旅途中享受激情与欢乐"/>
    <meta name="baidu-site-verification" content="fGdITGCHHMB5crjs" />
    <link rel="shortcut icon" href="favicon.ico"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta http-equiv="mobile-agent" content="format=html5; url=http://m.roadqu.com">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/global.css" media="all"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/boxy,jquery.fancybox-1.3.4.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/css_user/index.css" media="all">
    <script type="text/javascript">
    var userjson = '';
    var c_cityinfo = '';
</script>
<!-- 合并jquery and $LAB -->

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
<!--面朝大海-->
<div class="ui-box fn-clear">
    <div class="ui-title">
        <h2 class="ui-title-cnt fn-left"><em>面朝大海</em></h2>
        <div class="ui-title-subcnt fn-right"><a  href="${pageContext.request.contextPath}/memory/list3">+更多</a></div>
    </div><%--target="_blank"
    --%><ul class="poi_hot" id="poi_hot">
		<li>
            <a target="_blank" title="海南三亚亚龙湾" href="${pageContext.request.contextPath}/memory/detail3?title=海南三亚亚龙湾">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/海南三亚亚龙湾.jpg" alt="海南三亚亚龙湾" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="海南三亚亚龙湾" href="${pageContext.request.contextPath}/memory/detail3?title=海南三亚亚龙湾"">海南三亚亚龙湾</a></p>
            <div class="alpha-txt intro_info">
                <p>海南亚龙湾位于三亚市东南28公里处，是海南最南端的一个半月形海湾，全长约7.5公里，是海南名景之一。</p>
            </div>
		</li>
		<li>
            <a target="_blank" title="青岛海岸" href="${pageContext.request.contextPath}/memory/detail3?title=青岛海岸">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/青岛.jpg" alt="青岛海岸" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="青岛海岸" href="${pageContext.request.contextPath}/memory/detail3?title=青岛海岸">青岛海岸</a></p>
            <div class="alpha-txt intro_info">
                <p>现代的高层建筑与传统的别墅建筑巧妙地结合在一起，景色非常秀丽。</p>
            </div>
		</li>
		<li>
            <a target="_blank" title="西班牙地中海沿岸沙滩风光" href="${pageContext.request.contextPath}/memory/detail3?title=西班牙地中海沿岸沙滩风光">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/西班牙地中海.jpg" alt="西班牙地中海沿岸沙滩风光" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="西班牙地中海沿岸沙滩风光" href="${pageContext.request.contextPath}/memory/detail3?title=西班牙地中海沿岸沙滩风光">西班牙地中海沿岸沙滩风光</a></p>
            <div class="alpha-txt intro_info">
                <p>地中海气候和你生活的气候是有些相反的，冬天不冷，夏天不热。</p>
            </div>
		</li>
		<li>
            <a target="_blank" title="水城威尼斯" href="${pageContext.request.contextPath}/memory/detail3?title=水城威尼斯">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/水城威尼斯2.jpg" alt="水城威尼斯" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="水城威尼斯" href="${pageContext.request.contextPath}/memory/detail3?title=水城威尼斯">水城威尼斯</a></p>
            <div class="alpha-txt intro_info">
                <p>威尼斯是一个美丽的水上城市，它建筑在最不可能建造城市的地方-水上,威尼斯的风情总离不开“水”，蜿蜒的水巷，流动的清波，她就好像一个漂浮在碧波上浪漫的梦，诗情画意久久挥之不去。</p>
            </div>
		</li>  
    </ul>
</div>
<!--面朝大海- end-->

<!--古镇时光-->
<div class="ui-box fn-clear">
    <div class="ui-title">
        <h2 class="ui-title-cnt fn-left"><em>古镇时光</em></h2>
        <div class="ui-title-subcnt fn-right"><a target="_blank" href="memory_list.htm">+更多</a></div>
    </div>
    <ul class="poi_hot" id="poi_hot">
		<li>
            <a target="_blank" title="杭州塘栖" href="${pageContext.request.contextPath}/memory/detail3?title=杭州塘栖">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/杭州塘栖古镇2.jpeg" alt="杭州塘栖" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="杭州塘栖" href="${pageContext.request.contextPath}/memory/detail3?title=杭州塘栖">杭州塘栖</a></p>
            <div class="alpha-txt intro_info">
                <p>塘栖古镇 塘栖，地处杭嘉湖平原南端，是浙北重镇、江南水乡名镇，是闻名遐迩的“鱼米之乡、花果之地、丝绸之府、枇杷之乡”。</p>
            </div>
		</li>
		<li>
            <a target="_blank" title="丽江古城" href="${pageContext.request.contextPath}/memory/detail3?title=丽江古城">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/丽江古城2.jpg" alt="丽江古城" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="丽江古城" href="${pageContext.request.contextPath}/memory/detail3?title=丽江古城">丽江古城</a></p>
            <div class="alpha-txt intro_info">
                <p>丽江古城是一座没有城墙的古城，她依山傍水，风景秀丽。古城内光滑的石板路、手工建造的土木结构房屋、无处不在的小桥流水，无一不在向世人展示着她的恬静清幽。</p>
            </div>
		</li>
		<li>
            <a target="_blank" title="西塘古镇" href="${pageContext.request.contextPath}/memory/detail3?title=西塘古镇">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/西塘古镇.jpg" alt="西塘古镇" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="西塘古镇" href="${pageContext.request.contextPath}/memory/detail3?title=西塘古镇">西塘古镇</a></p>
            <div class="alpha-txt intro_info">
                <p>西塘是生活着的千年古镇 春秋的水唐宋的镇，明清的建筑和现代的人 西塘景区有很多玩的。</p>
            </div>
		</li>
		<li>
            <a target="_blank" title="西递宏村" href="${pageContext.request.contextPath}/memory/detail3?title=西递宏村">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/西递宏村.jpg" alt="西递宏村" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="西递宏村" href="${pageContext.request.contextPath}/memory/detail3?title=西递宏村">西递宏村</a></p>
            <div class="alpha-txt intro_info">
                <p>中国画里的乡村，整体规划合理布局建造了堪称“中华一绝”的古水系牛形村落，成为当今世界历史文化遗产的一大奇迹。</p>
            </div>
		</li>  
    </ul>
</div>
<!--古镇时光- end-->

<!--吃货血拼-->
<div class="ui-box fn-clear">
    <div class="ui-title">
        <h2 class="ui-title-cnt fn-left"><em>吃货血拼</em></h2>
        <div class="ui-title-subcnt fn-right"><a target="_blank" href="memory_list.htm">+更多</a></div>
    </div>
    <ul class="poi_hot" id="poi_hot">
		<li>
            <a target="_blank" title="成都锦里" href="${pageContext.request.contextPath}/memory/detail3?title=成都锦里">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/成都锦里2.jpg" alt="成都锦里" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="成都锦里" href="${pageContext.request.contextPath}/memory/detail3?title=成都锦里">成都锦里</a></p>
            <div class="alpha-txt intro_info">
                <p>三国文化与成都民俗作内涵，集旅游购物、休闲娱乐为一体。成都版清明上河图——“锦里”，是感受浪漫休闲的精神驿站，是体验三国文化与成都民俗的魅力街区。</p>
            </div>
		</li>
		<li>
            <a target="_blank" title="武汉户部巷" href="${pageContext.request.contextPath}/memory/detail3?title=武汉户部巷">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/武汉户部巷2.jpg" alt="武汉户部巷" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="武汉户部巷" href="${pageContext.request.contextPath}/memory/detail3?title=武汉户部巷">武汉户部巷</a></p>
            <div class="alpha-txt intro_info">
                <p>老通城的三鲜豆皮、四季美的汤包、蔡林记的热干面、顺香居的烧梅、福庆和的牛肉米粉、糯米包油条、小桃园的煨汤、田启恒的糊汤粉、谢荣德的面窝这是武汉八大小吃，还有其他各类美食难以详述。</p>
            </div>
		</li>
		<li>
            <a target="_blank" title="香港旺角" href="${pageContext.request.contextPath}/memory/detail3?title=香港旺角">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/香港旺角.jpg" alt="香港旺角" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="香港旺角" href="${pageContext.request.contextPath}/memory/detail3?title=香港旺角">香港旺角</a></p>
            <div class="alpha-txt intro_info">
                <p>旺角满街都是小吃，以油麻地和旺角交接的登打士街为代表，充满着各种小吃，深受香港本地青年的钟爱。</p>
            </div>
		</li>
		<li>
            <a target="_blank" title="西安永兴坊" href="${pageContext.request.contextPath}/memory/detail3?title=西安永兴坊">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/西安永兴坊2.jpg" alt="西安永兴坊" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="西安永兴坊" href="${pageContext.request.contextPath}/memory/detail3?title=西安永兴坊">西安永兴坊</a></p>
            <div class="alpha-txt intro_info">
                <p>西安新城区东新街永兴坊 永兴坊融合了陕西的特色小吃为一体，不出西安市就可以品尝全陕西的特色美食。</p>
            </div>
		</li>  
    </ul>
</div>
<!--吃货血拼- end-->

<!--户外撒野-->
<div class="ui-box fn-clear">
    <div class="ui-title">
        <h2 class="ui-title-cnt fn-left"><em>户外撒野</em></h2>
        <div class="ui-title-subcnt fn-right"><a target="_blank" href="memory_list.htm">+更多</a></div>
    </div>
    <ul class="poi_hot" id="poi_hot">
		<li>
            <a target="_blank" title="惠州罗浮山" href="${pageContext.request.contextPath}/memory/detail3?title=惠州罗浮山">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/login_poi_2013031109501.jpg" alt="惠州罗浮山" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="惠州罗浮山" href="${pageContext.request.contextPath}/memory/detail3?title=惠州罗浮山">惠州罗浮山</a></p>
            <div class="alpha-txt intro_info">
                <p>惠州罗浮山风景区是春天爬山、泡温泉休闲好去处。</p>
            </div>
		</li>
		<li>
            <a target="_blank" title="西丽水库" href="${pageContext.request.contextPath}/memory/detail3?title=西丽水库">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/login_poi_2013031109362.jpg" alt="西丽水库" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="西丽水库" href="${pageContext.request.contextPath}/memory/detail3?title=西丽水库">西丽水库</a></p>
            <div class="alpha-txt intro_info">
                <p>西丽水库历史悠久，风景优美，是春天骑行的好去处。</p>
            </div>
		</li>
		<li>
            <a target="_blank" title="婺源" href="${pageContext.request.contextPath}/memory/detail3?title=婺源">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/login_poi_2013031109523.jpg" alt="婺源" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="婺源" href="${pageContext.request.contextPath}/memory/detail3?title=婺源">婺源</a></p>
            <div class="alpha-txt intro_info">
                <p>漫步在婺源油菜花田间，不知有多么的诗情画意。</p>
            </div>
		</li>
		<li>
            <a target="_blank" title="小坑国家森林公园" href="${pageContext.request.contextPath}/memory/detail3?title=小坑国家森林公园">
				<img src="${pageContext.request.contextPath}/statics/images/images_user/login_poi_2013031110074.jpg" alt="小坑国家森林公园" width="221" height="300">
            </a>
            <p class="alpha-txt alpha-txt-green"><a target="_blank" title="小坑国家森林公园" href="小坑国家森林公园" href="${pageContext.request.contextPath}/memory/detail3?title=小坑国家森林公园">小坑国家森林公园</a></p>
            <div class="alpha-txt intro_info">
                <p>韶关小坑国家森林公园清新宁静，诗歌释放压力的好地方。</p>
            </div>
		</li>  
    </ul>
</div>
</div>
<!--户外撒野- end-->
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
