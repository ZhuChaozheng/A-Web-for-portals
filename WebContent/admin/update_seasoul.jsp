<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="cn.model.SeaSoul" %>
<%@ page import="cn.core.*" %>
<%if (!Crazyadept.UserIsOK(session)) return;%>
<html>
<head>
<title>update_seasoul</title>
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
<table width="98%"  align="center"> 
  <tr align="center"> 
    <td colspan="2" class="TableTitle1" >��־��Ϣ�޸�</td> 
  </tr> 
  <%
BasetableFactory bf=BasetableFactory.getInstance();
String ssid=ParamUtils.getRequestString(request,"ssid");
SeaSoul ss=bf.SearchSeaSoul("WHERE ssid='"+ssid+"'");
if(ss!=null&&ss.getSsid()>0){
 %> 
  <form name="form2" method="post" action="modify_seasoul.jsp"> 
    <tr align="center"> 
      <td class="TableTitle1" >��־����</td> 
      <td  align="left" >
      <INPUT value="<%=ss.getName()%>" name="name" type="text" 
       style="width: 170; height: 25;border:1.5px solid #C6E2FF;
       font-family:'����',Serif;font-size:15px;" 
      onmouseover="this.style.backgroundColor='#F0F8FF'"
      onmouseout="this.style.backgroundColor='#ffffff'"></td> 
    </tr> 
    <tr align="center"> 
      <td class="TableTitle1" >��־����</td> 
      <td align="left" >
      <input name="link" type="text"        
      style="width: 230; height: 25;border:1.5px solid #C6E2FF;
      font-family:'����',Serif;font-size:13px;" 
      onmouseover="this.style.backgroundColor='#F0F8FF'"
      onmouseout="this.style.backgroundColor='#ffffff'" value="<%=ss.getLink()%>"></td> </tr>
    <tr align="center"> 
      <td height="4" colspan="2" bgcolor="#FFFFFF">
       <input type="hidden" name="action" value="modify"> 
        <input type="hidden" name="ssid" value="<%=ss.getSsid()%>"> 
        <input name="Submit"  
        style="background-color:#AEEEEE;width:60;
        height:30;border-radius: 8px;border-color:#F0F8FF;"
        onmouseover="this.style.backgroundColor='#A4D3EE'"
      onmouseout="this.style.backgroundColor='#AEEEEE'" 
         type="submit" onClick="return news()" value="�ύ"> 
&nbsp;&nbsp; 
      <input name="Submit2" 
      style="background-color:#AEEEEE;width:60;
        height:30;border-radius: 8px;border-color:#F0F8FF;"
        onmouseover="this.style.backgroundColor='#A4D3EE'"
      onmouseout="this.style.backgroundColor='#AEEEEE'" 
      type="reset" value="����"></td> 
    </tr> 
  </form> 
</table> 
<%}%> 
<table width="80%"  border="0" cellspacing="0" cellpadding="0"> 
  <tr> 
    <td height="50" colspan="5" align="right">
  <a href="#" onClick="Jscript:history.back(); return false;">����</a></td> 
  </tr> 
</table> 
</body>
</html>
