<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="cn.model.New" %>
<%@ page import="cn.core.*" %>
<%if (!Crazyadept.UserIsOK(session)) return;%>
<html>
<head>
<title>update_affiche</title>
</head>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
<script src="../js/validate.js"></script>
<script language="JavaScript">
function news(){
	if(form2.title.value==""){
		alert("���ⲻ����Ϊ��");	return false;
	}
	if(form2.content.value==""){
		alert("����д����");	return false;
	}
}
</script>
<body> 
<table width="98%" > 
  <tr align="center"> 
    <td colspan="2" class="TableTitle1" >֪ͨ������ϸ��Ϣ�޸�</td> 
  </tr> 
  <%
BasetableFactory bf=BasetableFactory.getInstance();
String nid=ParamUtils.getRequestString(request,"nid");
New n=bf.SearchNew("WHERE nid='"+nid+"'");
if(n!=null&&n.getNid()>0){
 %> 
  <form name="form2" method="post" action="modify_notice.jsp"> 
    <tr align="center"> 
      <td width="40%" class="TableTitle1" >�������</td> 
      <td width="60%" align="left" bgcolor="#FFFFFF">
      <input type="text" name="title" value="<%=n.getTitle()%>"
      style="width: 170; height: 25;border:1px solid #C6E2FF;
       font-family:'����',Serif;font-size:15px;" 
      onmouseover="this.style.backgroundColor='#F0F8FF'"
      onmouseout="this.style.backgroundColor='#ffffff'">
      </td> 
    </tr> 
    <tr align="center"> 
      <td height="100" class="TableTitle1" >��������</td> 
      <td align="left" valign="top" bgcolor="#FFFFFF">
      <textarea name="content"  class="textarea"
       style="width: 320; height: 200;border:1px solid #C6E2FF;
       font-family:'����',Serif;font-size:15px;" 
      onmouseover="this.style.backgroundColor='#F0F8FF'"
      onmouseout="this.style.backgroundColor='#ffffff'">
      <%=n.getContent()%>
      </textarea></td> 
    </tr> 
    <tr align="center"> 
      <td height="3" class="TableTitle1" >����ʱ��</td> 
      <td height="3" align="left" bgcolor="#FFFFFF">&nbsp;<%=n.getUtime()%></td> 
    </tr> 
    <tr align="center"> 
      <td height="4" colspan="2" bgcolor="#FFFFFF">
       <input type="hidden" name="action" value="modify"> 
        <input type="hidden" name="nid" value="<%=n.getNid()%>"> 
        <input name="Submit" type="submit"
        style="background-color:#AEEEEE;width:60;
        height:30;border-radius: 8px;border-color:#F0F8FF;opacity:0.7;"
        onmouseover="this.style.backgroundColor='#B0E0E6';this.style.opacity=1;"
      onmouseout="this.style.backgroundColor='#AEEEEE';this.style.opacity=0.7;" 
      onClick="return news()" value="�ύ"> 
&nbsp;&nbsp; 
      <input name="Submit2" type="reset" value="����"
       style="background-color:#AEEEEE;width:60;
        height:30;border-radius: 8px;border-color:#F0F8FF;opacity:0.7;"
        onmouseover="this.style.backgroundColor='#B0E0E6';this.style.opacity=1;"
      onmouseout="this.style.backgroundColor='#AEEEEE';this.style.opacity=0.7;" ></td> 
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
