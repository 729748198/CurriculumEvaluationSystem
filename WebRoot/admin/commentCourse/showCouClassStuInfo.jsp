<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="couClassBean" class="admin.bean.commentCourse.CouClassStuInfo"/>
<jsp:useBean id="sqlBean" class="admin.bean.commentCourse.CouClassStuSqlBean" />
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
			<form action="selectByCouClassStuInfo" method="post">
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
<table border=1 bgcolor="#ffffff" width=90% align="center">
<tr align="center">
  <td>�γ̰༶ѧ����Ϣ���</td>
  <td>�γ̱��</td>
  <td>ѧ�����</td>
  <td>�Ƿ�����</td>
  <td>����</td>
</tr>

			<%
				String sql = "select * from couClassStuInfo";
				java.util.List list = sqlBean.showAllCouClassStu(sql);
				for (java.util.Iterator it = list.iterator(); it.hasNext();) {
					couClassBean = (admin.bean.commentCourse.CouClassStuInfo) it.next();
			%>
			<tr>
				<td><%=couClassBean.getCouClassStuInfoNum() %></td>
				<td><%=couClassBean.getCouNum() %></td>
				<td><%=couClassBean.getStuNum() %></td>
				<td><%=couClassBean.getIsTeachMess() %></td>
				<td align="center">
				<a href="selectByCommentCouInfo?stuNum=<%=couClassBean.getStuNum() %>&couNum=<%=couClassBean.getCouNum() %>">���̷���</a>&nbsp;&nbsp;
				<a href="searchByStuNum?stuNum=<%=couClassBean.getStuNum() %>&tableName=admin/student/searchStuInfo.jsp">ѧ����Ϣ</a>
				</td>
			</tr>
			<%
				}
			%>


		</table>

	</body>
</html>
