<%@ page contentType="text/html;  charset=UTF-8" %>
<%@ page import="cn.model.Model" %>
<%@ page import="cn.core.*" %>
<%@ page import="java.util.*" %>
<%if (!Crazyadept.UserIsOK(session)) return;%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>info_new</title>
</head>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
<body > 
<table width="98%" > 
  <tr align="center"> 
    <td colspan="2" class="TableTitle1" >模范先锋详细信息</td> 
  </tr>  
   <%BasetableFactory bf=BasetableFactory.getInstance();
   String mid=ParamUtils.getRequestString(request,"mid");
   Model m=bf.SearchModel("WHERE mid='"+mid+"'");
   if(m!=null&&m.getMid()>0){ %> 
  <tr align="center"> 
    <td width="40%" class="TableTitle1">姓名</td> 
    <td width="60%" align="left" bgcolor="#FFFFFF">&nbsp;<%=m.getName()%> </td> 
  </tr> 
   <tr align="center"> 
    <td height="7" class="TableTitle1">更新时间</td> 
    <td height="7" align="left" bgcolor="#FFFFFF">&nbsp;<%=m.getUtime()%></td> 
  </tr> 
   <tr align="center"> 
    <td height="7" class="TableTitle1">图片位置</td> 
    <td height="7" align="left" bgcolor="#FFFFFF">&nbsp;<%=m.getMpic()%></td> 
  </tr> 
  <tr align="center"> 
    <td height="100" class="TableTitle1">人物摘要</td>
    <td align="left" valign="top" bgcolor="#FFFFFF" ><%=m.getSummary()%> </td> 
  </tr> 
  <tr align="center"> 
    <td height="100" class="TableTitle1">人物事迹</td>
    <td align="left" valign="top" bgcolor="#FFFFFF" ><%=m.getContent()%> </td> 
  </tr> 
  <%}%> 
</table> 
<table width="80%" > 
  <tr> 
    <td height="50"  align="right">
 <a href="#" onClick="Jscript:history.back(); return false;">返回</a></td> 
  </tr> 
</table> 
</body>
</html>
