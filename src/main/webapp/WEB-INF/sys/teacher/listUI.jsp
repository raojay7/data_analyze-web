<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>教师信息列表</title>
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
								<form class="top_search_form" method="post"/>
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


						<table class="easyui-datagrid" title="教师信息维护" style="width:100%;height:458px">
						<thead>

						<tr>
							<th data-options="field:'salaryId',width:80,halign:'center'">工资号</th>
							<th data-options="field:'name',width:100,halign:'center'">姓名</th>
							<th data-options="field:'gender',width:80,halign:'center'">性别</th>
							<th data-options="field:'office',width:120,halign:'center'">科室</th>

							<th data-options="field:'birthday',width:180,halign:'center'">生日</th>
							<th data-options="field:'race',width:160,halign:'center'">名族</th>
							<th data-options="field:'identity',width:80,halign:'center'">身份</th>
							<th data-options="field:'hometown',width:100,halign:'center'">籍贯</th>

							<th data-options="field:'politics_status',width:80,halign:'center'">政治面貌</th>
							<th data-options="field:'join_time',width:200,halign:'center'">加入时间</th>
							<th data-options="field:'joinSchoolTime',width:200,halign:'center'">入校时间</th>
							<th data-options="field:'joinJobTime',width:200,halign:'center'">参加工作时间</th>


							<th data-options="field:'job',width:130,halign:'center'">聘任岗位</th>
							<th data-options="field:'job_status',width:100,halign:'center'">在职状态</th>
							<th data-options="field:'authorized',width:80,halign:'center'">编制</th>
							<th data-options="field:'on_status',width:100,halign:'center'">在岗状态</th>

							<th data-options="field:'department',width:80,halign:'center'">工作部门</th>
							<th data-options="field:'job_reason',width:100,halign:'center'">进入原因</th>
							<th data-options="field:'attendance_category',width:80,halign:'center'">考勤类别</th>
							<th data-options="field:'job_level',width:100,halign:'center'">职级</th>

							<th data-options="field:'administrativePost',width:80,halign:'center'">行政职务</th>
							<th data-options="field:'profAndTechPost',width:100,halign:'center'">专业技术职务</th>
							<th data-options="field:'specialExperience',width:80,halign:'center'">特别经历</th>
							<th data-options="field:'lastDegree',width:100,halign:'center'">最后学历</th>

							<th data-options="field:'degree',width:80,halign:'center'">学位</th>
							<th data-options="field:'degreeTime',width:200,halign:'center'">学位时间</th>
							<th data-options="field:'lastDegree',width:80,halign:'center'">学历归属</th>
							<th data-options="field:'subject',width:100,halign:'center'">隶属学科</th>

							<th data-options="field:'remark',width:100,halign:'center'">备注</th>
							<th data-options="field:'mentorType',width:80,halign:'center'">导师类型</th>
							<th data-options="field:'major',width:160,halign:'center'">专业</th>

							<th data-options="field:'post_type',width:120,halign:'center'">岗位类型</th>
							<th data-options="field:'graduate_provence',width:120,halign:'center'">毕业学校省份</th>



							<th data-options="field:'op',width:120,halign:'center'">
								操作
							</th>

						</tr>



						</thead>
						<tbody>


						<c:forEach items="${pageResult.list}" var="item">


						<tr>
							<td>${item.salary_id}</td>
							<td>${item.name}</td>
							<td>

								<c:if test="${item.gender == true}">
									男
								</c:if>

								<c:if test="${item.gender == false}">
									女
								</c:if>

							</td>
							<td>${item.office}</td>

							<td>${item.birthday}</td>

							<td>${item.race}</td>
							<td>${item.identity}</td>
							<td>${item.hometown}</td>

							<td>${item.politics_status}</td>


							<td>${item.join_time}</td>
							<td>${item.join_school_time}</td>
							<td>${item.join_job_time}</td>

							<td>${item.job}</td>
							<td>${item.job_status}</td>
							<td>

								<c:if test="${item.authorized == true}">
									正在编制
								</c:if>

								<c:if test="${item.authorized == false}">
									非在编
								</c:if>

							</td>
							<td>${item.on_status}</td>

							<td>${item.department}</td>
							<td>${item.join_reason}</td>
							<td>${item.attendance_category}</td>
							<td>${item.job_level}</td>

							<td>${item.administrative_post}</td>
							<td>${item.prof_and_tech_post}</td>
							<td>${item.special_experience}</td>
							<td>${item.last_edu_background}</td>

							<td>${item.degree}</td>
							<td>${item.degree_time}</td>
							<td>${item.last_degree}</td>
							<td>${item.subject}</td>

							<td>${item.remark}</td>
							<td>${item.mentor_type}</td>
							<td>${item.major}</td>
							<td>${item.post_type}</td>
							<td>${item.graduate_province}</td>

							<td>
								<a class="l-btn" href="${pageContext.request.contextPath}/sys_teacher/editUI.do?salary_id=${item.salary_id}"> 编辑</a>
								&nbsp;&nbsp;&nbsp;
								<a class="l-btn" href="${pageContext.request.contextPath}/sys_teacher/delete.do?salary_id=${item.salary_id}"> 删除</a>

							</td>
						</tr>

						</c:forEach>
						<!--分页-->
						<tr>

							<td>

							</td>

							<td>
								总共${pageResult.totalPage}页
							</td>

							<td>
								当前第${pageResult.page}页
							</td>

							<td>

								<form method="post" action="${pageContext.request.contextPath}/sys_teacher/selectPageList.do">

								    <input name="pageNo" style="width: 30px" type="number" value="1"/>

									<input type="submit" value="跳转"/>

								</form>

							</td>


							<td>
								<a class="l-btn" href="javascript:doGoPage('${pageResult.page - 1}')">上一页</a>
								&nbsp;&nbsp;
								<a class="l-btn" href="javascript:doGoPage('${pageResult.page + 1}')">下一页</a>
							</td>

							<td>

								<form method="post" action="${pageContext.request.contextPath}/sys_teacher/selectPageList.do">

									<input name="key_word" style="width: 50px" type="text" placeholder="姓名"/>

									<input type="submit" value="搜索"/>

								</form>


							</td>

							<td>
								<a class="l-btn" href="${pageContext.request.contextPath}/sys_teacher/addUI.do">添 &nbsp;&nbsp; 加</a>
							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>


							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>


							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>

							<td>

							</td>





						</tr>


						</tbody>


					</table>



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

    <script language="javascript">

		function doGoPage(pageNo) {

			if (pageNo > ${pageResult.totalPage}){
			    pageNo = ${pageResult.totalPage};
			}

            document.forms[0].action = "${pageContext.request.contextPath}/sys_teacher/selectPageList.do?pageNo="+pageNo;
            document.forms[0].submit();
        }

	</script>

</body>
</html>
