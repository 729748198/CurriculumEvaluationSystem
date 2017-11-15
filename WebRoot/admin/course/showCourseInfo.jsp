<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="couBean" class="admin.bean.course.CourseInfo"/>
<jsp:useBean id="sqlBean" class="admin.bean.course.CourseSqlBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
a {
	list-style-type: none;
	padding: 0px;
	margin: 0px;
	color: #53e3a6;
	text-decoration: none;
}

a:hover {
	color: cyan;
}
</style>
  </head>
  
  <body style="background-color: #FFF;">
  
  <!-- 判断用户是不是直接打开这个网址，而有没有通过登录界面登录 -->
		<%
			String userName = (String) session.getAttribute("userName");
			if (userName == null) {
		%>
		<script>
	    alert(" 您未登录，请从登录界面登录！");
	    //这个问题谨记，很实用
		top.location.href="index.jsp";
 		</script>
		<%
			}
		%>
		<table border=1 bgcolor="#ffffff" width=100%>
<tr align="center">
  <td>课程编号</td>
  <td>教师编号</td>
  <td>任课老师</td>
  <td>课程名称</td>
  <td>开课学期</td>
  <td>开课单位</td>
  <td>上课时间</td>
  <td>上课地点</td>
  <td>学分</td>
  <td>备注</td>
  <td>操作</td>
</tr>

			<%
				String sql = "select couNum,teaInfo.teaNum,teaName,couName,couTerm,couFrom,couTime,couPlace,couCredit,couRemarks from CourseInfo inner join teaInfo on CourseInfo.teaNum=teaInfo.teaNum";
				java.util.List list = sqlBean.showAllCou(sql);
				for (java.util.Iterator it = list.iterator(); it.hasNext();) {
					couBean = (admin.bean.course.CourseInfo) it.next();
			%>
			<tr>
				<td><%=couBean.getCouNum() %></td>
				<td><%=couBean.getTeaNum() %></td>
				<td><%=couBean.getTeaName() %></td>
				<td><%=couBean.getCouName() %></td>
				<td><%=couBean.getCouTerm() %></td>
				<td><%=couBean.getCouFrom() %></td>
				<td><%=couBean.getCouTime() %></td>
				<td><%=couBean.getCouPlace() %></td>
				<td><%=couBean.getCouCredit() %></td>
				<td><%=couBean.getCouRemarks() %></td>
				<td align="center">
					<a href="searchByCouNum?couNum=<%=couBean.getCouNum() %>">更新</a>
					<a href="deleteCou?couNum=<%= couBean.getCouNum() %>"
						onclick="return confirm('确定删除?')">删除</a>
				</td>
			</tr>
			<%
				}
			%>


		</table>

	</body>
</html>
