<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

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

		<center>
			<form action="selectByTeaPraiseInfo" method="post">
				<select name="select">
					<option value="teaPraiseListInfo.teaNum" selected>
						��ʦ���
					</option>
					<option value="teaName">
						��ʦ����
					</option>
					<option value="couName">
						�γ�����
					</option>
				</select>
				<input type="text" name="userInfo"
					style="width: 160px; height: 25px" />
				<input type="submit" value="����" />
			</form>
		</center>

		<table border=1 bgcolor="#ffffff" width=100%>
			<tr align="center">
				<td>
					��ʦ��������
				</td>
				<td>
					�γ̱��
				</td>
				<td>
					�γ�����
				</td>
				<td>
					��ʦ���
				</td>
				<td>
					��ʦ����
				</td>
				<td>
					����ѧ��
				</td>
				<td>
					������ƽ������
				</td>
				
			</tr>
			<jsp:useBean id="teaPraiseBean" class="admin.bean.commentCourse.TeaPraiseListInfo" scope="request" /> 
			<%
				java.util.List list = (List)request.getAttribute("list");
				for (java.util.Iterator it = list.iterator(); it.hasNext();) {
					teaPraiseBean = (admin.bean.commentCourse.TeaPraiseListInfo) it.next();
			%>
			<tr>
			    <td><%=teaPraiseBean.getTeaPraiseListNum() %></td>
				<td><%=teaPraiseBean.getCouNum() %></td>
				<td><%=teaPraiseBean.getCouName() %></td>
				<td><%=teaPraiseBean.getTeaNum() %></td>
				<td><%=teaPraiseBean.getTeaName() %></td>
				<td><%=teaPraiseBean.getCouTerm() %></td>
				<td><%=teaPraiseBean.getTheAllAvgScore() %></td>
			</tr>
			<%
				}
			%>


		</table>

	</body>
</html>

