<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="cn.model.Admin" %>
<%@ page import="cn.core.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>�Ӻ���ѧ������</title>
<link href="css/css.css" rel="stylesheet" type="text/css">
<link href="css/new.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
function news(){
	if(form2.title.value==""){
		alert("����������Ϊ��");	return false;
	}
	if(form2.content.value==""){
		alert("����д��������");	return false;
	}
}
</script>
</head>
<body > 
   <jsp:include page="top.jsp"></jsp:include>
    <table > 
        <tr> 
    <td><div class="float"><jsp:include page="left.jsp"/></div></td>
    <td class="sixth">
<table width="710px"  id="font1"> 
  <tr align="center"> 
    <td colspan="3"  class="TableTitle1">��վ����</td>
  </tr> 
  <form name="form2" method="post" action="admin/modify_liuyan.jsp"> 
    <tr align="center"> 
      <td width="30%" class="TableTitle1">����</td> 
      <td width="70%" align="left" bgcolor="#FFFFFF"> 
      <input type="text" name="title"
      style="width: 200; height: 25;border:1px solid #C6E2FF;
       font-family:'����',Serif;font-size:15px;" 
      onmouseover="this.style.backgroundColor='#F0F8FF'"
      onmouseout="this.style.backgroundColor='#ffffff'"> 
      </td> 
    </tr>
    <tr align="center">
    <td class="TableTitle1">����</td>
      <td align="left" bgcolor="#FFFFFF"> 
      <input name="name" type="text"
      style="width: 100; height: 25;border:1px solid #C6E2FF;
       font-family:'����',Serif;font-size:15px;" 
      onmouseover="this.style.backgroundColor='#F0F8FF'"
      onmouseout="this.style.backgroundColor='#ffffff'"> </td>
    </tr>
    <tr align="center">
    <td class="TableTitle1">��ϵ�绰</td>
      <td align="left" bgcolor="#FFFFFF"> 
      <input name="tel" type="text"
       style="width: 120; height: 25;border:1px solid #C6E2FF;
       font-family:'����',Serif;font-size:15px;" 
      onmouseover="this.style.backgroundColor='#F0F8FF'"
      onmouseout="this.style.backgroundColor='#ffffff'">
       </td>
    </tr>
    <tr align="center">
    <td class="TableTitle1">��������</td>
      <td align="left" bgcolor="#FFFFFF"> 
      <input name="mail" type="text"
       style="width: 170; height: 25;border:1px solid #C6E2FF;
       font-family:'����',Serif;font-size:15px;" 
      onmouseover="this.style.backgroundColor='#F0F8FF'"
      onmouseout="this.style.backgroundColor='#ffffff'">
       </td>
    </tr>
    <tr align="center"> 
      <td height="27" class="TableTitle1">����Ҫ������</td> 
      <td align="left" bgcolor="#FFFFFF"> 
      <textarea name="content" 
       style="width: 400; height: 200;
      border:1px solid #C6E2FF;
       font-family:'����',Serif;font-size:15px;" 
      onmouseover="this.style.backgroundColor='#F0F8FF'"
      onmouseout="this.style.backgroundColor='#ffffff'"></textarea> </td> 
    </tr> 
    <tr align="center"> 
      <td height="27" colspan="2" bgcolor="#FFFFFF"> 
      <input type="hidden" name="action" value="add">  
        <input name="Submit" type="submit" 
        style="background-color:#AEEEEE;width:60;
        height:30;border-radius: 8px;border-color:#F0F8FF;opacity:0.7;"
        onmouseover="this.style.backgroundColor='#B0E0E6';this.style.opacity=1;"
      onmouseout="this.style.backgroundColor='#AEEEEE';this.style.opacity=0.7;" 
        onClick=" return news()" value="�ύ"> 
&nbsp;&nbsp; 
      <input name="Submit2" type="reset" 
      style="background-color:#AEEEEE;width:60;
        height:30;border-radius: 8px;border-color:#F0F8FF;opacity:0.7;"
        onmouseover="this.style.backgroundColor='#B0E0E6';this.style.opacity=1;"
      onmouseout="this.style.backgroundColor='#AEEEEE';this.style.opacity=0.7;" 
      value="����"> </td> 
    </tr> 
  </form> 
</table> 
<table width="710px"> 
  <tr id="font1"> 
    <td height="50" colspan="5" align="right"  >
    <a href="#" onClick="Jscript:history.back();return false; ">����</a></td> 
  </tr> 
</table> 
</td></tr>
</table>
<div id="f"><jsp:include page="bottom.jsp"/></div>
</body>
</html>
