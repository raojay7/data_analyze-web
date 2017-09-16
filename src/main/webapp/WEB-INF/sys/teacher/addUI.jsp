<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>教师信息添加</title>
	<!--[if lt IE 9]>


    <script src="${pageContext.request.contextPath}/resource/sys/Javascript/Flot/excanvas.js"></script>
    <![endif]-->
	<!-- The Fonts -->

	<!-- The Main CSS File -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/sys/CSS/style.css" />
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/resource/sys/Javascript/jQuery/jquery-1.7.2.min.js"></script>


	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/sys/jquery-easyui/themes/default/easyui.css">

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/sys/jquery-easyui/themes/icon.css">

	<script type="text/javascript" src="${pageContext.request.contextPath}/resource/sys/jquery-easyui/jquery.min.js"></script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resource/sys/jquery-easyui/jquery.easyui.min.js"></script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resource/sys/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>



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
				<span class="label">您好！管理员用户</span>
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
								<form class="top_search_form"/>
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


	<div class="wrapper contents_wrapper">
		
		<aside class="sidebar">
			<ul class="tab_nav">
				<li class="active_tab i_32_dashboard">
					<a href="${pageContext.request.contextPath}/sys_home.do" title="General Info">
						<span class="tab_label">主面板</span>
						<span class="tab_info"></span>
					</a>
				</li>

				<li class="i_32_tables">
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

				<div class="g_12">

					<div class="easyui-panel" title="添加" style="width:100%;max-width:400px;padding:30px 60px;">
						<form id="ff" method="post" action="${pageContext.request.contextPath}/sys_teacher/add.do">
							<div style="margin-bottom:20px">
								<input type="text" class="easyui-textbox" name="salary_id" style="width:100%" data-options="label:'工资号:',required:true">
							</div>
							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="name" style="width:100%" data-options="label:'姓名:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<select class="easyui-combobox" name="gender" label="性别" style="width:100%">
									<option value="1">男</option>
									<option value="0">女</option>
								</select>
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="office" style="width:100%" data-options="label:'科室:',required:true">
					        </div>


							<div style="margin-bottom:20px">
								<input class="easyui-datetimebox" type="datetime" name="birthday" label="生日:" labelPosition="left" style="width:100%;">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="race" style="width:100%" data-options="label:'名族:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="identity" style="width:100%" data-options="label:'身份:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="hometown" style="width:100%" data-options="label:'籍贯:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="politics_status" style="width:100%" data-options="label:'政治面貌:',required:true">
							</div>


							<div style="margin-bottom:20px">
								<input class="easyui-datetimebox" type="datetime" name="join_time" label="加入时间:" labelPosition="left" style="width:100%;">
							</div>


							<div style="margin-bottom:20px">
								<input class="easyui-datetimebox" type="datetime" name="join_school_time" label="入校时间:" labelPosition="left" style="width:100%;">
							</div>


							<div style="margin-bottom:20px">
								<input class="easyui-datetimebox" type="datetime" name="join_job_time" label="参加工作时间:" labelPosition="left" style="width:100%;">
							</div>


							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="job" style="width:100%" data-options="label:'聘任岗位:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="job_status" style="width:100%" data-options="label:'在值状态:',required:true">
							</div>


							<div style="margin-bottom:20px">
								<select class="easyui-combobox" name="authorized" label="编制" style="width:100%">
									<option value="1">正式在编</option>
								    <option value="0">非在编</option>
								</select>
							</div>



							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="on_status" style="width:100%" data-options="label:'在岗状态:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="department" style="width:100%" data-options="label:'工作部门:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="join_reason" style="width:100%" data-options="label:'进入原因:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="attendance_category" style="width:100%" data-options="label:'考勤类别:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="job_level" style="width:100%" data-options="label:'职级:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="administrative_post" style="width:100%" data-options="label:'行政职务:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="prof_and_tech_post" style="width:100%" data-options="label:'专业技术职务:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="special_experience" style="width:100%" data-options="label:'特别经历:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="last_edu_background" style="width:100%" data-options="label:'最后学历:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="degree" style="width:100%" data-options="label:'学位:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-datetimebox" type="datetime" name="degree_time" label="学位时间:" labelPosition="left" style="width:100%;">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="last_degree" style="width:100%" data-options="label:'学历归属:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="subject" style="width:100%" data-options="label:'隶属学科:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="remark" style="width:100%" data-options="label:'备注:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="mentor_type" style="width:100%" data-options="label:'导师类型:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="major" style="width:100%" data-options="label:'专业:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="post_type" style="width:100%" data-options="label:'岗位类型:',required:true">
							</div>

							<div style="margin-bottom:20px">
								<input class="easyui-textbox" name="graduate_province" style="width:100%" data-options="label:'毕业学校省份:',required:true">
							</div>

							<div style="text-align:center;padding:5px 0">
								<input type="submit" class="easyui-linkbutton" style="width:80px"/>
							</div>


						</form>

					</div>


				</div>

				<!-- Separator -->
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
