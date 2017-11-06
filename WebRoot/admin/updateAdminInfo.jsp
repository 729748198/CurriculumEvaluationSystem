<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
  height: 450px;
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
<jsp:useBean id="adminBean" class="admin.bean.AdminInfo" scope="request" />
<div class="wrapper">
  <div class="container">
 <center>
  <h2 style="color:cyan">&nbsp;�� �� �� �� Ա �� Ϣ</h2>
  <form action="updateAdmin" method="post" name=form class="form">
  <table border=0 background="#ffffff">
  <tr><td>����Ա���: </td>  
  <td><input type="text" name="adminNum" value=<%= request.getAttribute("adminNum") %> readonly /></td></tr>
  <tr><td>����:</td>       
  <td><input type="text" name="adminName" value=<%= request.getAttribute("adminName") %> /></td></tr> 
  <tr><td>��ϵ�绰:</td>       
  <td><input type="text" name="adminPhone" value=<%= request.getAttribute("adminPhone") %> /></td></tr> 
  <tr><td>Ȩ�޵ȼ�:</td>       
  <td><input type="text" name="adminLimit" value=<%= request.getAttribute("adminLimit") %> /></td></tr>
  <tr><td>��ע:</td>
  <td><input type="text" name="adminRemarks" value=<%= request.getAttribute("adminRemarks") %> /></td></tr> 
  <tr><td>&nbsp;&nbsp;<button type="submit" >�޸�</button></td> 
  <td>&nbsp;&nbsp;&nbsp;&nbsp;<button type="reset">����</button></td></tr> 
  </table>
  </form>
  </center>
  </div>
</div>
  </body>
</html>
