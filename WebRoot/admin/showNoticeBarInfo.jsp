<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sqlBean" class="admin.bean.NoticeBarSqlBean" />
<jsp:useBean id="noticeBarBean" class="admin.bean.NoticeBarInfo" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
	<head>
		<base href="<%=basePath%>">

		<meta charset="gb2312">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="renderer" content="webkit">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

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
  <td>ͨ�������</td>
  <td>����</td>
  <td>����ʱ��</td>
  <td>����</td>
  <td>����</td>
  <td>�鿴����</td>
  <td>����</td>
</tr>

			<%
				String sql = "select * from  noticeBarInfo";
				java.util.List list = sqlBean.showAllNoticeBar(sql);
				for (java.util.Iterator it = list.iterator(); it.hasNext();) {
					noticeBarBean = (admin.bean.NoticeBarInfo) it.next();
			%>
			<tr>
				<td><%=noticeBarBean.getNoticeBarInfoNum() %></td>
				<td><%=noticeBarBean.getTitle() %></td>
				<td><%=noticeBarBean.getReleaseTime() %></td>
				<td><%=noticeBarBean.getAuthor() %></td>
				<td><%=noticeBarBean.getSmallContent() %></td>
				<td><%=noticeBarBean.getLimitMess() %></td>
				<td align="center">
					<a href="searchByNoticeNum?noticeBarInfoNum=<%=noticeBarBean.getNoticeBarInfoNum() %>">����</a>
					<a href="deleteNotice?noticeBarInfoNum=<%= noticeBarBean.getNoticeBarInfoNum() %>"
						onclick="return confirm('ȷ��ɾ��?')">ɾ��</a>
				</td>
			</tr>
			<%
				}
			%>


		</table>

	</body>
</html>
