<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class="teacher.bean.TeaInfo" />
<jsp:useBean id="sqlBean" class="teacher.bean.TeaSql" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<style type="text/css">
.wrapper {
  background: #50a3a2;
  background: -webkit-linear-gradient(top left, #50a3a2 0%, #53e3a6 100%);
  background: linear-gradient(to bottom right, #50a3a2 0%, #53e3a6 100%);
  opacity: 0.8;
  width: 100%;
  overflow: hidden;

}
.container {
  max-width: 600px;
  margin: 0 auto;
  height: 620px;
  text-align: center;
}
form {
  padding: 20px 0;
  position: relative;
  z-index: 2;
}
form input {
  -webkit-appearance: none;
     -moz-appearance: none;
          appearance: none;
  outline: 0;
  border: 1px solid rgba(255, 255, 255, 0.4);
  background-color: rgba(255, 255, 255, 0.2);
  width: 250px;
  border-radius: 3px;
  padding: 10px 15px;
  margin: 0 auto 10px auto;
  display: block;
  text-align: center;
  font-size: 18px;
  color: white;
  font-weight: 300;
}
form button {
  -webkit-appearance: none;
     -moz-appearance: none;
          appearance: none;
  outline: 0;
  background-color: white;
  border: 0;
  padding: 10px 15px;
  color: #53e3a6;
  border-radius: 3px;
  width: 125px;
  cursor: pointer;
  font-size: 18px;
  -webkit-transition-duration: 0.25s;
          transition-duration: 0.25s;
}
form button:hover {
	 background-color: rgb(32,178,170);
	 color:white;
}
</style>
  </head>
  
  <body>
  <!-- 判断用户是不是直接打开这个网址，而有没有通过登录界面登录 -->
<%
	String userName=(String)session.getAttribute("userName");
 	if(userName==null){
 		%>
 		<script type="text/javascript">
 		alert("您未登录，请从登录界面登录！");
 		//这个问题谨记，很实用
 		top.location.href="index.jsp";
 		</script>
 		<% 
 	}
%>
  <div class="wrapper">
  <div class="container">
 <center>
  <h2 style="color:gray">个 人 信 息</h2>
  <form action="updateTea?tableName=teacher/personInfo/viewTeaInfo.jsp" method="post" name=form class="form">
  <table border=0 background="#ffffff">
  
  <%
	int accountNum=(Integer)session.getAttribute("accountNum");//获取学生账号
	String condition = "select * from teaInfo where teaNum="+accountNum;
	java.util.List list = sqlBean.showTeaInfo(condition);
	java.util.Iterator it = list.iterator();
	bean = (teacher.bean.TeaInfo) it.next();
   %>
   
  <tr><td>教师编号: </td>  
  <td><input type="text" name="teaNum" value=<%=bean.getTeaNum() %>  readonly /></td></tr>
  <tr><td>姓名:</td>       
  <td><input type="text" name="teaName" value=<%=bean.getTeaName() %> /></td></tr>
  <tr><td>性别:</td>
  <td> 
  <% 
    String sex = bean.getTeaSex();
    if(sex.equals("男")){ %>
    <select name="teaSex">
    <option value="男" selected>--男性--</option>
    <option value="女" >--女性--</option>
    </select>   
<%  }
    else if(sex.equals("女")){ %>
    <select name="teaSex">
  <option value="男" >--男性--</option>
  <option value="女" selected>--女性--</option>
  </select>
<%  }
  %>
  </td></tr> 
  <tr><td>出生日期:</td>       
  <td><input type="text" name="teaBirthday" value=<%=bean.getTeaBirthday() %> /></td></tr> 
  <tr><td>院系专业及班级:</td>       
  <td><input type="text" name="teaForm" value=<%=bean.getTeaForm() %> /></td></tr>
  <tr><td>联系电话:</td>       
  <td><input type="text" name="teaPhone" value=<%=bean.getTeaPhone() %> /></td></tr>
  <tr><td>备注:</td>
  <td><textArea name="teaRemarks" rows=8 cols=24 
  style="background-color: rgba(255, 255, 255, 0.2);border-radius:3px;font-size: 18px;color: white;"
   ><%=bean.getTeaRemarks() %></textArea></td></tr> 
  <tr><td>&nbsp;<button type="submit" >修改</button></td> 
  <td>&nbsp;&nbsp;&nbsp;<button type="reset">重置</button></td></tr> 
  </table>
  </form>
  </center>
  </div> 
</div>
    
  </body>
</html>
