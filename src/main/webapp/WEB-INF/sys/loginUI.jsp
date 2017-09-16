<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>数据维护系统登陆</title>
	<!--[if lt IE 9]>
		<!--<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>-->
		<!--<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>-->
		<script src="${pageContext.request.contextPath}/resource/sys/Javascript/Flot/excanvas.js"></script>
	<![endif]-->
	<!-- The Fonts -->
	<!--<link href="http://fonts.useso.com/css?family=Oswald|Droid+Sans:400,700" rel="stylesheet">-->
	<!-- The Main CSS File -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/sys/CSS/style.css">
</head>
<body>
	<!-- Change Pattern -->
	<div class="changePattern">
		<span id="pattern1"></span>
		<span id="pattern2"></span>
		<span id="pattern3"></span>
		<span id="pattern4"></span>
		<span id="pattern5"></span>
		<span id="pattern6"></span>
	</div>
	<!-- Top Panel -->
	<div class="top_panel">
		<div class="wrapper">
			<div class="user">
				<img src="${pageContext.request.contextPath}/resource/sys/Images/user_avatar.png" alt="user_avatar" class="user_avatar">
				<!--<span class="label"><a href="#">Sign Up</a></span>-->
			</div>
		</div>
	</div>

	<div class="wrapper contents_wrapper">
		
		<div class="login">
			<div class="widget_header">
				<h4 class="widget_header_title wwIcon i_16_login">登录</h4>
			</div>
			<div class="widget_contents lgNoPadding">
				<form action="${pageContext.request.contextPath}/account/login.do" method="post">
				<div class="line_grid">
					<div class="g_2 g_2M"><span class="label">用户名：</span></div>
					<div class="g_10 g_10M">
						<input class="simple_field tooltip" name="acc_login" title="Your Username" type="text" placeholder="Username"></div>
					<div class="clear"></div>
				</div>
				<div class="line_grid">
					<div class="g_2 g_2M"><span class="label">密码：</span></div>
					<div class="g_10 g_10M">
						<input class="simple_field tooltip" name="acc_pass" title="Your Password" type="password">
					</div>
					<div class="clear"></div>
				</div>
				<div class="line_grid">
					<div class="g_6"><input class="submitIt simple_buttons" value="Log In" type="submit">
					</div>
					<div class="clear"></div>
				</div>

					${requestScope.msg}

				</form>
			</div>
		</div>

	</div>
<div style="display:none">

</div>
</body>
</html>