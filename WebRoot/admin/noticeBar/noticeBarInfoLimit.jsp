<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sqlBean" class="admin.bean.noticeBar.NoticeBarSqlBean" />
<jsp:useBean id="noticeBarBean"
	class="admin.bean.noticeBar.NoticeBarInfo" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String mess = (String)request.getAttribute("alert");
	if(mess != null){ %>
	<script type="text/javascript">
	var mess = "<%=mess %>";
	alert(mess);
    </script>
<%	}
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
				<td>
					ͨ�������
				</td>
				<td>
					����
				</td>
				<td>
					����ʱ��
				</td>
				<td>
					����
				</td>
				<td>
					����
				</td>
				<td>
					�鿴���Ʋ���
				</td>
			</tr>

			<%
				String sql = "select * from  noticeBarInfo";
				java.util.List list = sqlBean.showAllNoticeBar(sql);
				for (java.util.Iterator it = list.iterator(); it.hasNext();) {
					noticeBarBean = (admin.bean.noticeBar.NoticeBarInfo) it.next();
			%>
			<tr>
				<td align="center"><%=noticeBarBean.getNoticeBarInfoNum()%></td>
				<td><%=noticeBarBean.getTitle()%></td>
				<td><%=noticeBarBean.getReleaseTime()%></td>
				<td><%=noticeBarBean.getAuthor()%></td>
				<td><%=noticeBarBean.getSmallContent()%></td>
				<td align="center">
					<form action="limitNotice?noticeBarInfoNum=<%=noticeBarBean.getNoticeBarInfoNum()%>" method="post" style="margin-top: 20px;">
						<select name="noticeBarLimit">
							<option value="0">
								ѧ��,��ʦ�鿴
							</option>
							<option value="1">
								ѧ���鿴
							</option>
							<option value="2">
								��ʦ�鿴
							</option>
							<option value="3">
								��ֹ�鿴
							</option>
						</select>
						<input type="submit" value="����" />
					</form>
				</td>
			</tr>
			<%
				}
			%>


		</table>

	</body>
</html>