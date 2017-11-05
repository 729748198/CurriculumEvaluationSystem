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
			<form action="selectByTeaInfo" method="post">
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
			<jsp:useBean id="teaPraiseBean" class="admin.bean.TeaPraiseListInfo" />
			<jsp:useBean id="sqlBean" class="admin.bean.TeaPraiseListSqlBean" />
			<%
                String sql = "select teaPraiseListNum,teaPraiseListInfo.couNum,courseInfo.couName,"+
                "teaPraiseListInfo.teaNum,teaName,teaPraiseListInfo.couTerm,theAllAvgScore from teaPraiseListInfo "+
                "inner join courseInfo on teaPraiseListInfo.couNum=courseInfo.couNum inner join "+
                "teaInfo on teaPraiseListInfo.teaNum=teaInfo.teaNum";
				java.util.List list = sqlBean.showAllTeaPraise(sql);
				for (java.util.Iterator it = list.iterator(); it.hasNext();) {
					teaPraiseBean = (admin.bean.TeaPraiseListInfo) it.next();
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
