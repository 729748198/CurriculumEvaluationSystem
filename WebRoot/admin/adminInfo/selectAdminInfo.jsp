<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="adminBean" class="admin.bean.admin.AdminInfo" />
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
	<form action="selectByAdminInfo" method="post">
	<select name="select">
	<option value="adminNum" selected>����Ա���</option>
	<option value="adminName">����</option>
	</select>
	<input type="text" name="userInfo" style="width:160px;height:25px" />
	<input type="submit" value="����"/>
	</form>
	</center>

		<table border=1 bgcolor="#ffffff" width=90% align="center">
			<tr align="center">
				<td>
					����Ա���
				</td>
				<td>
					����
				</td>
				<td>
					��ϵ�绰
				</td>
				<td>
					Ȩ�޵ȼ�
				</td>
				<td>
					��ע
				</td>
				<td>
					����
				</td>
			</tr>

			<%
				java.util.List list = (List)request.getAttribute("list");
				for (java.util.Iterator it = list.iterator(); it.hasNext();) {
					adminBean = (admin.bean.admin.AdminInfo) it.next();
			%>
			<tr>
				<td><%=adminBean.getAdminNum() %></td>
				<td><%=adminBean.getAdminName() %></td>
				<td><%=adminBean.getAdminPhone() %></td>
				<td><%=adminBean.getAdminLimit() %></td>
				<td><%=adminBean.getAdminRemarks() %></td>
				<td align="center">
					<a href="searchByAdminNum?adminNum=<%=adminBean.getAdminNum() %>">����</a>
					&nbsp;
					<a href="deleteAdmin?adminNum=<%= adminBean.getAdminNum() %>"
						onclick="return confirm('ȷ��ɾ��?')">ɾ��</a>
				</td>
			</tr>
			<%
				}
			%>


		</table>

	</body>
</html>
