<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="couBean" class="admin.bean.CourseInfo"/>
<jsp:useBean id="sqlBean" class="admin.bean.CourseSqlBean" />
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
		<table border=1 bgcolor="#ffffff" width=100%>
<tr align="center">
  <td>�γ̱��</td>
  <td>��ʦ���</td>
  <td>�γ�����</td>
  <td>����ѧ��</td>
  <td>���ε�λ</td>
  <td>�Ͽ�ʱ��</td>
  <td>�Ͽεص�</td>
  <td>ѧ��</td>
  <td>��ע</td>
  <td>����</td>
</tr>

			<%
				String sql = "select * from CourseInfo order by couNum";
				java.util.List list = sqlBean.showAllCou(sql);
				for (java.util.Iterator it = list.iterator(); it.hasNext();) {
					couBean = (admin.bean.CourseInfo) it.next();
			%>
			<tr>
				<td><%=couBean.getCouNum() %></td>
				<td><%=couBean.getTeaNum() %></td>
				<td><%=couBean.getCouName() %></td>
				<td><%=couBean.getCouTerm() %></td>
				<td><%=couBean.getCouFrom() %></td>
				<td><%=couBean.getCouTime() %></td>
				<td><%=couBean.getCouPlace() %></td>
				<td><%=couBean.getCouCredit() %></td>
				<td><%=couBean.getCouRemarks() %></td>
				<td align="center">
					<a href="searchByCouNum?couNum=<%=couBean.getCouNum() %>">����</a>
					<a href="deleteCou?couNum=<%= couBean.getCouNum() %>"
						onclick="return confirm('ȷ��ɾ��?')">ɾ��</a>
				</td>
			</tr>
			<%
				}
			%>


		</table>

	</body>
</html>
