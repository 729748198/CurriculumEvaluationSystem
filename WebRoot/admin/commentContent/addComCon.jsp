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
  width: 300px;
  height: 35px;
  border-radius: 3px;
  padding: 10px 15px;
  margin: 0 auto 12px auto;
  display: block;
  font-size: 15px;
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

<script type="text/javascript">
 function click(){
 alert("���ӳɹ�!");
 }
</script>
  </head>
  
  <body>

<div class="wrapper">
  <div class="container">
 <center>
  <h2 style="color:cyan">&nbsp;�� �� �� �� �� �� ��</h2>
  <form action="addComCon" method="post" name=form class="form">
  <table border=0 background="#ffffff">
  <tr><td>��һ������: </td>  
  <td><input type="text" name="theFirstCon" /></td></tr>
  <tr><td>�ڶ�������:</td>       
  <td><input type="text" name="theSecondCon" /></td></tr>
  <tr><td>����������:</td>
  <td><input type="text" name="theThirdCon" /></td></tr> 
  <tr><td>����������:</td>       
  <td><input type="text" name="theFourthCon" /></td></tr> 
  <tr><td>����������:</td>       
  <td><input type="text" name="theFifthCon" /></td></tr>
  <tr><td>����������:</td>       
  <td><input type="text" name="theSixthCon" /></td></tr>
  <tr><td>����������:</td>       
  <td><input type="text" name="theSeventhCon" /></td></tr>
  <tr><td>�ڰ�������:</td>       
  <td><input type="text" name="theEighthCon" /></td></tr>
  <tr><td>�ھ�������:</td>       
  <td><input type="text" name="theNinthCon" /></td></tr>
  <tr><td>��ʮ������:</td>       
  <td><input type="text" name="theTenthCon" /></td></tr>
  <tr><td>��ע��Ϣ:</td>
  <td><textArea name="comConRemarks" rows=6 cols=30 
  style="background-color: rgba(255, 255, 255, 0.2);border-radius:3px;font-size: 18px;color: white;"></textArea></td></tr> 
  <tr align="center"><td><button type="submit" onclick="click()">�ύ</button></td> 
  <td>&nbsp;&nbsp;<button type="reset">����</button></td></tr> 
  </table>
  </form>
  </center>
  </div>
</div>


  </body>
</html>