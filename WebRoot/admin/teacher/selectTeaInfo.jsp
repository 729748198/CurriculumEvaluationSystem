<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="teaBean" class="admin.bean.teacher.TeaInfo" scope="request" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	String limitMess = (String) request.getAttribute("limitMess");
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
button{
   font-size:20px;
   width:50px;
   padding: 0px;
   margin-top: 20px;
   height:25px;
   background-color:#96FED1;
}
button:hover{
   background-color:white;
}
</style>
	</head>

	<body style="background-color: #FFF;">
		<center>
			<form action="selectByTeaInfo" method="post" name=form>
				<select name="select">
					<option value="teaNum" selected>
						��ʦ���
					</option>
					<option value="teaName">
						����
					</option>
					<option value="teaForm">
						��λ
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
					��ʦ���
				</td>
				<td>
					����
				</td>
				<td>
					�Ա�
				</td>
				<td>
					��������
				</td>
				<td>
					���ڵ�λ
				</td>
				<td>
					��ϵ�绰
				</td>
				<td>
					���
				</td>
				<td>
				  �Ƿ����Ƶ�¼
				</td>
				<td>
					����
				</td>
			</tr>

			<%
				java.util.List list = (List)request.getAttribute("list");
				for (java.util.Iterator it = list.iterator(); it.hasNext();) {
					teaBean = (admin.bean.teacher.TeaInfo) it.next();
			%>
			<tr>
				<td><%=teaBean.getTeaNum()%></td>
				<td><%=teaBean.getTeaName()%></td>
				<td><%=teaBean.getTeaSex()%></td>
				<td><%=teaBean.getTeaBirthday()%></td>
				<td><%=teaBean.getTeaForm()%></td>
				<td><%=teaBean.getTeaPhone()%></td>
				<td><%=teaBean.getTeaRemarks()%></td>
				<td align="center" valign="bottom">
					<form
						action="limitLogin?accountNum=<%=teaBean.getTeaNum()%>&tableName=admin/teacher/selectTeaInfo.jsp&table=teaInfo"
						method="post">
						<button type="submit" ><%=teaBean.getLimitMess() %></button>
					</form>
				</td>
				<td align="center">
					<a href="searchByTeaNum?teaNum=<%=teaBean.getTeaNum()%>">����</a>
					&nbsp;
					<a href="deleteTea?teaNum=<%=teaBean.getTeaNum()%>"
						onclick="return confirm('ȷ��ɾ��?')">ɾ��</a>
				</td>
			</tr>
			<%
				}
			%>

		</table>

	</body>
</html>
