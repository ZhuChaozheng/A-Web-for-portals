<%@ page contentType="text/html;  charset=GBK" %>
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
<title>add_lastednews</title>
</head>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
<script src="../js/validate.js"></script>
<script language="JavaScript">
function news(){
	if(form2.name.value==""){
		alert("人物名字不允许为空");	return false;
	}
	if(form2.content.value==""){
		alert("人物事迹不允许为空");	return false;
	}
	if(form2.summary.value==""){
		alert("人物摘要不允许为空");	return false;
	}
}
</script>
<body> 
<table width="98%" > 
  <tr align="center"> 
    <td colspan="3" class="TableTitle1" >添加模范人物</td>
  </tr> 
  <form name="form2" method="post" action="modify_model.jsp"> 
    <tr align="center"> 
      <td width="23%" class="TableTitle1">模范人物名字</td> 
      <td width="37%" align="left" bgcolor="#FFFFFF"> 
      <input type="text" name="name"
       style="width: 100; height: 25;border:1px solid #C6E2FF;
       font-family:'楷体',Serif;font-size:15px;" 
      onmouseover="this.style.backgroundColor='#F0F8FF'"
      onmouseout="this.style.backgroundColor='#ffffff'"> 
      </td> 
     
    </tr>
    <tr align="center"> 
      <td height="27" class="TableTitle1">模范人物摘要</td> 
      <td align="left" bgcolor="#FFFFFF"> 
      <textarea name="summary" 
       style="width: 320; height: 100;border:1px solid #C6E2FF;
       font-family:'楷体',Serif;font-size:15px;" 
      onmouseover="this.style.backgroundColor='#F0F8FF'"
      onmouseout="this.style.backgroundColor='#ffffff'">
</textarea> </td> 
 <td rowspan="1" align="center" bgcolor="#FFFFFF">
      <a onClick="javascript:self.location='upfile_model.jsp';"> 
      <img src="../images/ico/select.gif"  width=64 height=64 >
      <% String filename=(String)session.getAttribute("mpic"); 
      session.removeAttribute("mpic");
      filename="images/model/"+filename;
      %>
      <input type="hidden" name="mpic" value="<%=filename%>">
      </a></td>
    </tr> 
    <tr align="center"> 
      <td height="27" class="TableTitle1">模范人物事迹</td> 
      <td align="left" bgcolor="#FFFFFF"> 
      <textarea name="content" 
       style="width: 320; height: 200;border:1px solid #C6E2FF;
       font-family:'楷体',Serif;font-size:15px;" 
      onmouseover="this.style.backgroundColor='#F0F8FF'"
      onmouseout="this.style.backgroundColor='#ffffff'">
      </textarea> </td> 
    </tr> 
    <tr align="center"> 
      <td height="27" colspan="2" bgcolor="#FFFFFF"> 
      <input type="hidden" name="action" value="add"> 
        <input name="Submit" type="submit" 
        style="background-color:#AEEEEE;width:60;
        height:30;border-radius: 8px;border-color:#F0F8FF;opacity:0.7;"
        onmouseover="this.style.backgroundColor='#B0E0E6';this.style.opacity=1;"
      onmouseout="this.style.backgroundColor='#AEEEEE';this.style.opacity=0.7;" 
         onClick=" return news()" value="提交"> 
&nbsp;&nbsp; 
      <input name="Submit2" type="reset" 
      style="background-color:#AEEEEE;width:60;
        height:30;border-radius: 8px;border-color:#F0F8FF;opacity:0.7;"
        onmouseover="this.style.backgroundColor='#B0E0E6';this.style.opacity=1;"
      onmouseout="this.style.backgroundColor='#AEEEEE';this.style.opacity=0.7;" 
       value="重置"> </td> 
    </tr> 
  </form> 
</table> 
<table width="80%"  border="0" cellspacing="0" cellpadding="0"> 
  <tr> 
    <td height="50" colspan="5" align="right">
    <a href="#" onClick="Jscript:history.back(); return false;">返回</a></td> 
  </tr> 
</table> 
</body>
</html>
