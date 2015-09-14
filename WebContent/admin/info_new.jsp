<%@ page contentType="text/html;  charset=UTF-8" %>
<%@ page import="cn.model.New" %>
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
    <td colspan="2" class="TableTitle1" >详细信息</td> 
  </tr>  
   <%BasetableFactory bf=BasetableFactory.getInstance();
   String nid=ParamUtils.getRequestString(request,"nid");
   New n=bf.SearchNew("WHERE nid='"+nid+"'");
   if(n!=null&&n.getNid()>0){ %> 
  <tr align="center"> 
    <td width="40%" class="TableTitle1">标题</td> 
    <td width="60%" align="left" bgcolor="#FFFFFF">&nbsp;<%=n.getTitle()%> </td> 
  </tr> 
   <tr align="center"> 
    <td height="7" class="TableTitle1">发布时间</td> 
    <td height="7" align="left" bgcolor="#FFFFFF">&nbsp;<%=n.getUtime()%></td> 
  </tr> 
  <tr align="center"> 
    <td height="7" class="TableTitle1">作者</td> 
    <td height="7" align="left" bgcolor="#FFFFFF">&nbsp;<%=n.getAuthor()%></td> 
  </tr> 
  <tr align="center"> 
    <td height="7" class="TableTitle1">文章来源</td> 
    <td height="7" align="left" bgcolor="#FFFFFF">&nbsp;<%=n.getSource()%></td> 
  </tr> 
   <tr align="center"> 
    <td height="7" class="TableTitle1">图片位置</td> 
    <td height="7" align="left" bgcolor="#FFFFFF">&nbsp;<%=n.getNpic()%></td> 
  </tr> 
  <tr align="center"> 
    <td height="100" class="TableTitle1">要闻内容</td>
   
    <td align="left" valign="top" bgcolor="#FFFFFF" ><%=n.getContent()%> </td> 
  </tr> 
  <%}%> 
</table> 
<table width="80%"  border="0" cellspacing="0" cellpadding="0"> 
  <tr> 
    <td height="50" colspan="5" align="right">
 <a href="#" onClick="Jscript:history.back(); return false;">返回</a></td> 
  </tr> 
</table> 
</body>
</html>
