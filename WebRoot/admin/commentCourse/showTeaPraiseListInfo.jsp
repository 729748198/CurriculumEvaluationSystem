<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="teaPraiseBean" class="admin.bean.commentCourse.TeaPraiseListInfo" />
<jsp:useBean id="sqlBean" class="admin.bean.commentCourse.TeaPraiseListSqlBean" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
	<head>
		<base href="<%=basePath%>">

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

		<script type="text/javascript">
	function postwith(to, p) {
		var myForm = document.createElement("form");
		myForm.method = "post";
		myForm.action = to;
		for ( var k in p) {
			var myInput = document.createElement("input");
			myInput.setAttribute("name", k);
			myInput.setAttribute("value", p[k]);
			myForm.appendChild(myInput);
		}
		document.body.appendChild(myForm);
		myForm.submit();
		document.body.removeChild(myForm);
	}
</script>
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
				<td>
					����
				</td>
			</tr>
			<%
				String sql = "select teaPraiseListNum,teaPraiseListInfo.couNum,couName,"
						+ "teaPraiseListInfo.teaNum,teaName,teaPraiseListInfo.couTerm,theAllAvgScore from teaPraiseListInfo "
						+ "inner join courseInfo on teaPraiseListInfo.couNum=courseInfo.couNum inner join "
						+ "teaInfo on teaPraiseListInfo.teaNum=teaInfo.teaNum";
				java.util.List list = sqlBean.showAllTeaPraise(sql);
				for (java.util.Iterator it = list.iterator(); it.hasNext();) {
					teaPraiseBean = (admin.bean.commentCourse.TeaPraiseListInfo) it.next();
			%>
			<tr>
				<td><%=teaPraiseBean.getTeaPraiseListNum()%></td>
				<td><%=teaPraiseBean.getCouNum()%></td>
				<td><%=teaPraiseBean.getCouName()%></td>
				<td><%=teaPraiseBean.getTeaNum()%></td>
				<td><%=teaPraiseBean.getTeaName()%></td>
				<td><%=teaPraiseBean.getCouTerm()%></td>
				<td><%=teaPraiseBean.getTheAllAvgScore()%></td>
				<td align="center">
					<a
						href="javascript:postwith('selectByCommentCouInfo',{'select':'couNum','userInfo':'<%=teaPraiseBean.getCouNum()%>'})">
						�鿴����</a>
				</td>
			</tr>
			<%
				}
			%>


		</table>

	</body>
</html>
