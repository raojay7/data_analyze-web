<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>数据维护系统主页</title>
	<!--[if lt IE 9]>

    <script src="${pageContext.request.contextPath}/resource/sys/Javascript/Flot/excanvas.js"></script>
    <![endif]-->

	<!-- The Main CSS File -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/sys/CSS/style.css" />
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/jQuery/jquery-1.7.2.min.js"></script>
	<!-- Flot -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/Flot/jquery.flot.js"></script>
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/Flot/jquery.flot.resize.js"></script>
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/Flot/jquery.flot.pie.js"></script>
	<!-- DataTables -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/DataTables/jquery.dataTables.min.js"></script>
	<!-- ColResizable -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/ColResizable/colResizable-1.3.js"></script>
	<!-- jQuryUI -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/jQueryUI/jquery-ui-1.8.21.min.js"></script>
	<!-- Uniform -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/Uniform/jquery.uniform.js"></script>
	<!-- Tipsy -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/Tipsy/jquery.tipsy.js"></script>
	<!-- Elastic -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/Elastic/jquery.elastic.js"></script>
	<!-- ColorPicker -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/ColorPicker/colorpicker.js"></script>
	<!-- SuperTextarea -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/SuperTextarea/jquery.supertextarea.min.js"></script>
	<!-- UISpinner -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/UISpinner/ui.spinner.js"></script>
	<!-- MaskedInput -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/MaskedInput/jquery.maskedinput-1.3.js"></script>
	<!-- ClEditor -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/ClEditor/jquery.cleditor.js"></script>
	<!-- Full Calendar -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/FullCalendar/fullcalendar.js"></script>
	<!-- Color Box -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/ColorBox/jquery.colorbox.js"></script>
	<!-- Kanrisha Script -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/kanrisha.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
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
				<img src="${pageContext.request.contextPath}/resource/sys/Images/user_avatar.png" alt="user_avatar" class="user_avatar" />
				<span class="label">您好！管理员用户${sessionScope.USER.acc_name}</span>
				<!-- Top Tooltip -->
				<div class="top_tooltip">
					<div>
						<ul class="user_options">
							<li class="i_16_logout"><a href="${pageContext.request.contextPath}/account/loginOut.do" title="注销"></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="top_links">
				<ul>
					<li class="i_22_search search_icon">
						<div class="top_tooltip right_direction">
							<div>
								<form class="top_search_form" />
									<input type="text" class="top_search_input" />
									<input type="submit" class="top_search_submit" value="" />
								</form>
							</div>
						</div>
					</li>

				</ul>
			</div>
		</div>
	</div>
	<header class="main_header">
		<div class="wrapper">
			<div class="logo">
				<a href="#" style="text-decoration: none;color: #83888b;font-size: 30px" title="Kanrisha Home">
					数据专家数据维护系统
				</a>
			</div>

		</div>
	</header>

	<div class="wrapper small_menu">
		<ul class="menu_small_buttons">

		</ul>
	</div>

	<div class="wrapper contents_wrapper">
		
		<aside class="sidebar">
			<ul class="tab_nav">
				<li class="i_32_dashboard">
					<a href="${pageContext.request.contextPath}/sys_home.do" title="General Info">
						<span class="tab_label">主面板</span>
						<span class="tab_info"></span>
					</a>
				</li>

				<li class="active_tab i_32_tables">
					<a href="${pageContext.request.contextPath}/sys_teacher/selectPageList.do" title="Some Rows">
						<span class="tab_label">教师基本信息</span>
					</a>
				</li>


				<li class="active_tab i_32_tables">
					<a href="${pageContext.request.contextPath}/sys_teach/selectUI.do" title="Some Rows">
						<span class="tab_label">本科教学工作量</span>
					</a>
				</li>

				<li class="active_tab i_32_tables">
					<a href="${pageContext.request.contextPath}/sys_teachsum/selectUI.do" title="Some Rows">
						<span class="tab_label">研究生教学工作量</span>
					</a>
				</li>


				<li class="active_tab i_32_tables">
					<a href="${pageContext.request.contextPath}/sys_papers/selectUI.do" title="Some Rows">
						<span class="tab_label">学术论文</span>
					</a>
				</li>

				<li class="active_tab i_32_tables">
					<a href="${pageContext.request.contextPath}/sys_projects/selectUI.do" title="Some Rows">
						<span class="tab_label">科研项目</span>
					</a>
				</li>

			</ul>
		</aside>

		<div class="contents">
			<div class="grid_wrapper">

				<div class="g_6 contents_header">
					<h3 class="i_16_dashboard tab_label">控制面板</h3>
					<div><span class="label"></span></div>
				</div>

				<div class="g_12 separator"><span></span></div>

				<!-- Quick Statistics -->
				<div class="g_3 quick_stats">
					<div class="big_stats visitor_stats">
						9827
					</div>
					<h5 class="stats_info">前台总访问量</h5>
				</div>
				<div class="g_3 quick_stats">
					<div class="big_stats tickets_stats">
						23
					</div>
					<h5 class="stats_info">总用户量</h5>
				</div>
				<div class="g_3 quick_stats">
					<div class="big_stats users_stats">
						982
					</div>
					<h5 class="stats_info">系统总数据记录数</h5>
				</div>
				<div class="g_3 quick_stats">
					<div class="big_stats orders_stats">
						2045
					</div>
					<h5 class="stats_info">后台管理登录账号数</h5>
				</div>

				<!-- Chats -->
				<div class="g_12">
					<div class="widget_header">
						<h4 class="widget_header_title wwIcon i_16_chats">操作说明</h4>
					</div>
					<div class="widget_contents noPadding">
						<div class="line_grid">
							<div class="g_2 g_2M">
								<img src="${pageContext.request.contextPath}/resource/sys/Images/Avatar/avatar1.png" alt="avatar" class="avatar" />
							</div>
							<div class="g_10 g_10M">
								<div class="message">
									<span class="label lwParagraph">
										先添加所有老师数据，在添加其他数据。
									</span>
								</div>
							</div>
						</div>
						<div class="line_grid">
							<div class="g_10 g_10M">
								<div class="message">
									<span class="label lwParagraph">
										注意修改数据数据格式，宁改数据，不删数据。
									</span>
								</div>
							</div>
							<div class="g_2 g_2M">
								<img src="${pageContext.request.contextPath}/resource/sys/Images/Avatar/avatar3.png" alt="avatar" class="avatar aR" />
							</div>
						</div>
						<div class="line_grid">
							<div class="g_2 g_2M">
								<img src="${pageContext.request.contextPath}/resource/sys/Images/Avatar/avatar1.png" alt="avatar" class="avatar" />
							</div>
							<div class="g_10 g_10M">
								<div class="message">
									<span class="label lwParagraph">
										管理账号暂时不提供注册功能。
									</span>
								</div>
							</div>
						</div>

					</div>
				</div>

				<div class="g_12 separator"><span></span></div>

			</div>
		</div>

	</div>

	<footer>
		<div class="wrapper">
			<span class="copyright">
				&copy; Copyright &copy; 2017.南昌大学信息工程学院 All rights reserved.
			</span>
		</div>
	</footer>
</body>
</html>
