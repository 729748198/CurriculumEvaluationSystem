<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="comConBean" class="admin.bean.commentContent.CommentContent" />
<jsp:useBean id="sqlBean" class="admin.bean.commentContent.ComConSqlBean" />
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
	</center>

		<table border=1 bgcolor="#ffffff" width=120%>
			<tr align="center">
				<td>
					���̿����ݱ��
				</td>
				<td>
					��һ������
				</td>
				<td>
					�ڶ�������
				</td>
				<td>
					����������
				</td>
				<td>
					����������
				</td>
				<td>
					����������
				</td>
				<td>
					����������
				</td>
				<td>
				           ����������
				</td>
				<td>
				           �ڰ�������
				</td>
				<td>
				           �ھ�������
				</td>
				<td>
				           ��ʮ������
				</td>
				<td>
				           ��ע˵��
				</td>
				<td>
					����
				</td>
			</tr>
			
			<%
			    String sql = "select * from commentContent";
			    java.util.List list = sqlBean.showAllComCon(sql);
				for (java.util.Iterator it = list.iterator();it.hasNext();) {
					comConBean = (admin.bean.commentContent.CommentContent)it.next();
			 %>
			<tr>
				<td align="center"><%=comConBean.getComConNum() %></td>
				<td width=150px><%=comConBean.getTheFirstCon() %></td>
				<td width=100px><%=comConBean.getTheSecondCon() %></td>
				<td width=100px><%=comConBean.getTheThirdCon() %></td>
				<td width=100px><%=comConBean.getTheFourthCon() %></td>
				<td width=100px><%=comConBean.getTheFifthCon() %></td>
				<td width=100px><%=comConBean.getTheSixthCon() %></td>
				<td width=100px><%=comConBean.getTheSeventhCon() %></td>
				<td width=100px><%=comConBean.getTheEighthCon() %></td>
				<td width=100px><%=comConBean.getTheNinthCon() %></td>
				<td width=100px><%=comConBean.getTheTenthCon() %></td>
				<td width=100px><%=comConBean.getComConRemarks() %></td>
				<td align="center" width=100px>
					<a href="searchByComConNum?comConNum=<%=comConBean.getComConNum() %>">�޸�</a>
					<a href="deleteComCon?comConNum=<%= comConBean.getComConNum() %>"
						onclick="return confirm('ȷ��ɾ��?')">ɾ��</a>
				</td>
			</tr>
			<%
			  }
			%>

		</table>

	</body>
</html>