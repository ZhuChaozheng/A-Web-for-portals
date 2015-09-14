<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="cn.model.Liuyan" %>
<%@ page import="cn.core.*" %>
<%@ page import="java.util.*" %>
<%if (!Crazyadept.UserIsOK(session)) return;%>
<htmL>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="98%" > 
  <tr align="center"> 
    <td colspan="2" class="TableTitle1" >网站留言详细信息</td> 
  </tr>  
   <%BasetableFactory bf=BasetableFactory.getInstance();
   String lyid=ParamUtils.getRequestString(request,"lyid");
   Liuyan ly=bf.SearchLiuyan("WHERE lyid='"+lyid+"'");
   if(ly!=null&&ly.getLyid()>0){ %> 
  <tr align="center"> 
    <td width="27%" class="TableTitle1">标题</td> 
    <td width="73%" align="left" bgcolor="#FFFFFF">&nbsp;<%=ly.getTitle()%> </td> 
  </tr> 
   <tr align="center"> 
    <td height="7" class="TableTitle1">留言时间</td> 
    <td height="7" align="left" bgcolor="#FFFFFF">&nbsp;<%=ly.getUtime()%></td> 
  </tr> 
  <tr align="center"> 
    <td height="7" class="TableTitle1">名字</td> 
    <td height="7" align="left" bgcolor="#FFFFFF">&nbsp;<%=ly.getName()%></td> 
  </tr> 
  <tr align="center"> 
    <td height="7" class="TableTitle1">联系电话</td> 
    <td height="7" align="left" bgcolor="#FFFFFF">&nbsp;<%=ly.getTel()%></td> 
  </tr> 
   <tr align="center"> 
    <td height="7" class="TableTitle1">电子邮箱</td> 
    <td height="7" align="left" bgcolor="#FFFFFF">&nbsp;<%=ly.getMail()%></td> 
  </tr> 
  <tr align="center"> 
    <td height="100" class="TableTitle1">留言内容</td> 
    <td align="left" valign="top" bgcolor="#FFFFFF"><%=ly.getContent()%> </td> 
  </tr> 
  <%}%> 
</table> 
<table width="80%" > 
  <tr> 
    <td height="50" colspan="5" align="right">
    <a href="#" onClick="Jscript:history.back(); return false;">返回</a></td> 
  </tr> 
</table> 
</body>
</html>