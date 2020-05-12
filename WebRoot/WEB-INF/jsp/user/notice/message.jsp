<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh">
    <head>
        <meta charset="utf-8">
        <title>站内信 | 驴友网</title>
        <meta name="keywords" content="旅游社交，在旅途中享受激情与欢乐" />
        <meta name="description" content="旅游社交，在旅途中享受激情与欢乐"/>
        <link rel="shortcut icon" href="../favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta http-equiv="mobile-agent" content="format=html5; url=http://m.roadqu.com">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/global.css" media="all">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/css_user/boxy,jquery.fancybox-1.3.4.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/css_user/huidong.css">
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
				<!-- 未登录 
                    <li style="float:right"><a href="../login/register.htm" class="btn_reg">注册</a></li>
                    <li  style="float:right"><a href="../login/login.htm"  id="top-nav-login" class="btn_login">登录</a></li>
				-->
					<li style="float:right"><a href="#">注销</a></li>                                        
					<li style="float:right"><a href="#">好友申请（0）</a>&nbsp;&nbsp;&nbsp;</li>
					<li style="float:right"><a href="#">站内信（0）</a>&nbsp;&nbsp;&nbsp;</li>
					<li style="float:right"><a href="#">chen10301002</a>&nbsp;&nbsp;&nbsp;&nbsp;</li>
                </ul>
            </div>
        </div>

       <ul class="dropdown">
            <li>
                <a href="index.jsp" >首页</a>
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
	<div class="mainWrap wide-wrap fn-clear">
		<div class="main">
			<!--comments-->
			<div id="comment" class="comment cnt-box fn-clear">
				<h2>站内信<span style="float:right"><a href="message_send.htm">发送站内信</a>&nbsp;&nbsp;</span></h2>
					<ul id="comment-list" class="comment-list">
						<li class="fn-clear">
							<div class="comment_headPic fn-left">
								<a href="#"><img width="75" height="75" alt="i闲逛" src="${pageContext.request.contextPath}/statics/images/images_user/default.jpg"> </a>
							</div>
							<div class="comment_info fn-right">
								<p>
									<a class="comment_user" href="#"> i闲逛</a>03月15日 23:54
									<label style="float:right"><a class="comment_user" href="#">删除</a></label>
									<label style="float:right"><a class="comment_user" href="#">回复</a></label>
								</p>
								<div class="comment_box">
									<div class="SA">
										<em>◆</em><span>◆</span>
                                    </div>
									<div class="comment_cnt">对风车岛倾心已久，憧憬着在蓝天、白云、大海、风车中尽情嬉戏，用相机框出最唯美的镜头。日落十分，坐在沙滩上，静静的享受着海风拂面，放空一切，慢慢地发呆的时光。 <a href='#' >#一起玩旅游圈之试玩团心声#</a> 
                                            
                                    </div>
                                </div>
                            </div>
                        </li>
						<li class="fn-clear">
							<div class="comment_headPic fn-left">
								<a href="#"><img width="75" height="75" alt="i闲逛" src="${pageContext.request.contextPath}/statics/images/images_user/default.jpg"> </a>
							</div>
							<div class="comment_info fn-right">
								<p>
									<a class="comment_user" href="#"> i闲逛</a>03月15日 23:54
									<label style="float:right"><a class="comment_user" href="#">删除</a></label>
									<label style="float:right"><a class="comment_user" href="#">回复</a></label>
								</p>
								<div class="comment_box">
									<div class="SA">
										<em>◆</em><span>◆</span>
                                    </div>
									<div class="comment_cnt">对风车岛倾心已久，憧憬着在蓝天、白云、大海、风车中尽情嬉戏，用相机框出最唯美的镜头。日落十分，坐在沙滩上，静静的享受着海风拂面，放空一切，慢慢地发呆的时光。 <a href='#' >#一起玩旅游圈之试玩团心声#</a> 
                                            
                                    </div>
                                </div>
                            </div>
                        </li>
						<li class="fn-clear">
							<div class="comment_headPic fn-left">
								<a href="#"><img width="75" height="75" alt="i闲逛" src="${pageContext.request.contextPath}/statics/images/images_user/default.jpg"> </a>
							</div>
							<div class="comment_info fn-right">
								<p>
									<a class="comment_user" href="#"> i闲逛</a>03月15日 23:54
									<label style="float:right"><a class="comment_user" href="#">删除</a></label>
									<label style="float:right"><a class="comment_user" href="#">回复</a></label>
								</p>
								<div class="comment_box">
									<div class="SA">
										<em>◆</em><span>◆</span>
                                    </div>
									<div class="comment_cnt">对风车岛倾心已久，憧憬着在蓝天、白云、大海、风车中尽情嬉戏，用相机框出最唯美的镜头。日落十分，坐在沙滩上，静静的享受着海风拂面，放空一切，慢慢地发呆的时光。 <a href='#' >#一起玩旅游圈之试玩团心声#</a> 
                                            
                                    </div>
                                </div>
                            </div>
                        </li>
						<li class="fn-clear">
							<div class="comment_headPic fn-left">
								<a href="#"><img width="75" height="75" alt="i闲逛" src="${pageContext.request.contextPath}/statics/images/images_user/default.jpg"> </a>
							</div>
							<div class="comment_info fn-right">
								<p>
									<a class="comment_user" href="#"> i闲逛</a>03月15日 23:54
									<label style="float:right"><a class="comment_user" href="#">删除</a></label>
									<label style="float:right"><a class="comment_user" href="#">回复</a></label>
								</p>
								<div class="comment_box">
									<div class="SA">
										<em>◆</em><span>◆</span>
                                    </div>
									<div class="comment_cnt">对风车岛倾心已久，憧憬着在蓝天、白云、大海、风车中尽情嬉戏，用相机框出最唯美的镜头。日落十分，坐在沙滩上，静静的享受着海风拂面，放空一切，慢慢地发呆的时光。 <a href='#' >#一起玩旅游圈之试玩团心声#</a> 
                                            
                                    </div>
                                </div>
                            </div>
                        </li>
					</ul>
					
					<!--分页-->
					<div class="no-pages cf">
						<strong>1</strong> <a href="?page=2&#comment">2</a>  <a href="?page=3&#comment">3</a> <a href="?page=4&#comment">4</a><a href="?page=2&#comment" class="pageBtn">下一页 &gt;&gt;</a>
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
