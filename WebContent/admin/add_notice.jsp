<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="cn.model.Admin" %>
<%@ page import="cn.core.*" %>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires",0);
response.setHeader("Pragma","no-cache");
if (!Crazyadept.UserIsOK(session)) return;%>
<html>
<head>
<title>add_notice</title>
</head>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
<script src="../js/validate.js"></script>
<script language="JavaScript">
function news(){
	if(form2.title.value==""){
		alert("���ű��ⲻ����Ϊ��");	return false;
	}
	if(form2.content.value==""){
		alert("����д��������");	return false;
	}
}
</script>
<body> 
<table width="98%"> 
  <tr align="center"> 
    <td colspan="3" class="TableTitle1" >���֪ͨ����</td>
  </tr> 
  <form name="form2" method="post" action="modify_notice.jsp"> 
    <tr align="center"> 
      <td width="26%" class="TableTitle1">֪ͨ�������</td> 
      <td width="37%" align="left" bgcolor="#FFFFFF"> 
      <input type="text" name="title" 
       style="width: 170; height: 25;border:1px solid #C6E2FF;
       font-family:'����',Serif;font-size:15px;" 
      onmouseover="this.style.backgroundColor='#F0F8FF'"
      onmouseout="this.style.backgroundColor='#ffffff'">  
      </td> 
    </tr>
    <tr align="center">
      <td class="TableTitle1">��Ŀ����</td>
      <td align="left" bgcolor="#FFFFFF"><select name="lid"
       style="width: 100; height: 25;border:1px solid #C6E2FF;
       font-family:'����',Serif;font-size:15px;" >
          <option value="30" selected></option>
          <option value="10" >����ѵ��</option> 
          <option value="20">ѧ�罨��</option>
          <option value="1">����ѡ��</option>
          <option value="2">�����ȵ�</option>
      </select></td>
    </tr>
    <tr align="center"> 
      <td height="27" class="TableTitle1">֪ͨ��������</td> 
      <td align="left" bgcolor="#FFFFFF"> 
      <textarea name="content"  style="width: 320; height: 200;
      border:1px solid #C6E2FF;
       font-family:'����',Serif;font-size:15px;" 
      onmouseover="this.style.backgroundColor='#F0F8FF'"
      onmouseout="this.style.backgroundColor='#ffffff'">
      </textarea> </td> 
    </tr> 
    <tr align="center"> 
      <td height="27" colspan="2" bgcolor="#FFFFFF"> 
      <input type="hidden" name="action" value="add"> 
        <input type="hidden" name="bid" value="1"> 
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
<table width="80%"  border="0" cellspacing="0" cellpadding="0"> 
  <tr> 
    <td height="50" colspan="5" align="right">
    <a href="#" onClick="Jscript:history.back(); return false;">����</a></td> 
  </tr> 
</table> 
</body>
</html>
