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

	</head>

	<body style="background-color: #FFF;">

		<center>
			<form action="selectByCommentCouInfo" method="post">
				<select name="select">
					<option value="couNum" selected>
						�γ̱��
					</option>
					<option value="stuNum">
						ѧ�����
					</option>
				</select>
				<input type="text" name="userInfo"
					style="width: 160px; height: 25px" />
				<input type="submit" value="����" />
			</form>
		</center>

		<table border=1 bgcolor="#ffffff" width=130%>
			<tr align="center">
				<td>
					���̿γ̱��
				</td>
				<td>
					�γ̱��
				</td>
				<td>
					ѧ�����
				</td>
				<td>
					����ʱ��
				</td>
				<td>
					first����
				</td>
				<td>
					second����
				</td>
				<td>
					third����
				</td>
				<td>
					fourth����
				</td>
				<td>
					fifth����
				</td>
				<td>
					sixth����
				</td>
				<td>
					seventh����
				</td>
				<td>
					eighth����
				</td>
				<td>
					ninth����
				</td>
				<td>
					tenth����
				</td>
				<td>
					������
				</td>
				<td>
					�ܷ���
				</td>
				<td>
					ƽ������
				</td>
			</tr>
			<jsp:useBean id="commentCouBean" class="admin.bean.CommentCouInfo" />
			<jsp:useBean id="sqlBean" class="admin.bean.CommentCouSqlBean" />
			<%
                String sql = "select * from commentCouInfo";
				java.util.List list = sqlBean.showAllCommentCou(sql);
				for (java.util.Iterator it = list.iterator(); it.hasNext();) {
					commentCouBean = (admin.bean.CommentCouInfo) it.next();
			%>
			<tr>
			    <td><%=commentCouBean.getComCouNum() %></td>
				<td><%=commentCouBean.getCouNum() %></td>
				<td><%=commentCouBean.getStuNum() %></td>
				<td><%=commentCouBean.getComDate() %></td>
				<td><%=commentCouBean.getComFirstScore() %></td>
				<td><%=commentCouBean.getComSecondScore() %></td>
				<td><%=commentCouBean.getComThirdScore() %></td>
				<td><%=commentCouBean.getComFourthScore() %></td>
				<td><%=commentCouBean.getComFifthScore() %></td>
				<td><%=commentCouBean.getComSixthScore() %></td>
				<td><%=commentCouBean.getComSeventhScore() %></td>
				<td><%=commentCouBean.getComEighthScore() %></td>
				<td><%=commentCouBean.getComNinthScore() %></td>
				<td><%=commentCouBean.getComTenthScore() %></td>
				<td><%=commentCouBean.getComLeaMsg() %></td>
				<td><%=commentCouBean.getComTotalScore() %></td>
				<td><%=commentCouBean.getComAvgScore() %></td>
			</tr>
			<%
				}
			%>


		</table>

	</body>
</html>
