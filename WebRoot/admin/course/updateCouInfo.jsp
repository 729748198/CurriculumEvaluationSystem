<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="courseBean" class="admin.bean.course.CourseInfo" scope="request" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
  height: 770px;
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
  <div class="wrapper">
  <div class="container">
 <center>
  <h2 style="color:cyan">&nbsp;�� �� �� �� �� Ϣ</h2>
  <form action="updateCou" method="post" name=form class="form">
  <table border=0 background="#ffffff">
  <tr><td>�γ̱��: </td>  
  <td><input type="text" name="couNum" value=<jsp:getProperty name="courseBean" property="couNum" />  readonly /></td></tr>
  <tr><td>��ʦ���:</td>       
  <td><input type="text" name="teaNum" value=<jsp:getProperty name="courseBean" property="teaNum" /> readonly /></td></tr>
  <tr><td>�γ�����:</td>
  <td> <input type="text" name="couName" value=<jsp:getProperty name="courseBean" property="couName" /> />
  </td></tr> 
  <tr><td>����ѧ��:</td>       
  <td><input type="text" name="couTerm" value=<jsp:getProperty name="courseBean" property="couTerm" /> /></td></tr> 
  <tr><td>���ε�λ:</td>       
  <td><input type="text" name="couFrom" value=<jsp:getProperty name="courseBean" property="couFrom" /> /></td></tr>
  <tr><td>�Ͽ�ʱ��:</td>       
  <td><input type="text" name="couTime" value=<jsp:getProperty name="courseBean" property="couTime" /> /></td></tr>
  <tr><td>�Ͽεص�:</td>       
  <td><input type="text" name="couPlace" value=<jsp:getProperty name="courseBean" property="couPlace" /> /></td></tr>
  <tr><td>�Ͽ�ѧ��:</td>       
  <td><input type="text" name="couCredit" value=<jsp:getProperty name="courseBean" property="couCredit" /> /></td></tr>
  <tr><td>��ע:</td>
  <td><textArea name="couRemarks" rows=8 cols=24 
  style="background-color: rgba(255, 255, 255, 0.2);border-radius:3px;font-size: 18px;color: white;"
   ><jsp:getProperty name="courseBean" property="couRemarks" /></textArea></td></tr> 
  <tr><td>&nbsp;<button type="submit" >�޸�</button></td> 
  <td>&nbsp;&nbsp;&nbsp;<button type="reset">����</button></td></tr> 
  </table>
  </form>
  </center>
  </div>
</div>
    
  </body>
</html>
