<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>学术论文列表</title>
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


				<li class="i_32_tables">
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


					<form id="form" method="post">



						<table class="easyui-datagrid" title="${sessionScope.SELECT}-学术论文" style="width:100%;height:458px">
						<thead>

						<tr>
							<th data-options="field:'salary_id',width:160,halign:'center'">工资号</th>
							<th data-options="field:'ids_num',width:100,halign:'center'">收录号</th>
							<th data-options="field:'year',width:100,halign:'center'">年份</th>
							<th data-options="field:'author',width:120,halign:'center'">作者姓名</th>

							<th data-options="field:'level',width:180,halign:'center'">刊物级别</th>
							<th data-options="field:'title',width:180,halign:'center'">论文题目</th>


							<th data-options="field:'op',width:120,halign:'center'">
								操作
							</th>

						</tr>

						</thead>
						<tbody>

						<tr>

						<c:forEach items="${pageResult.list}" var="item">


                            <td>${item.salary_id}</td>
							<td>${item.ids_num}</td>
							<td>${item.year}</td>
							<td>${item.author}</td>

							<td>${item.level}</td>
							<td>${item.title}</td>


							<td>
								<a class="l-btn" href="${pageContext.request.contextPath}/sys_papers/editUI.do?id=${item._id}"> 编辑</a>
								&nbsp;&nbsp;&nbsp;
								<a class="l-btn" href="${pageContext.request.contextPath}/sys_papers/delete_dynamic.do?id=${item._id}"> 删除</a>

							</td>
						</tr>

						</c:forEach>

						<!--分页-->
						<tr>



							<td>
								总共${pageResult.totalPage}页,当前第${pageResult.page}页
							</td>

							<td>
								<form method="post" action="${pageContext.request.contextPath}/sys_papers/selectPageListDynamic.do">

									<input name="key_word" style="width: 50px" type="text" placeholder="负责人"/>

									<input type="submit" value="搜索"/>

								</form>
							</td>

							<td>

								<form method="post" action="${pageContext.request.contextPath}/sys_papers/selectPageListDynamic.do">

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
								<a class="l-btn" href="${pageContext.request.contextPath}/sys_papers/addUI.do"> 添&nbsp;&nbsp;加</a>
							</td>
							<td>

							</td>

							<td>

							</td>



						</tr>


						</tbody>


					</table>


					</form>

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

            document.forms[0].action = "${pageContext.request.contextPath}/sys_papers/selectPageListDynamic.do?pageNo="+pageNo;
            document.forms[0].submit();
        }

	</script>

</body>
</html>
