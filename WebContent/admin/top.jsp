<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="cn.model.Admin" %>
<%@ page import="cn.core.*" %>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires",0);
response.setHeader("Pragma","no-cache");
Admin u=null;if (!Crazyadept.UserIsOK(session)) {
    out.println("<script>parent.location.href='../index.jsp';</script>");  
    return ;}else{    u=(Admin)session.getAttribute("user");}%>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires",0);
response.setHeader("Pragma","no-cache");
if (!Crazyadept.UserIsOK(session)) return;
%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../css/new.css" rel="stylesheet" type="text/css">
<table>
  <tr>
    <td height="170px" width="980px" valign="top" background="../images/gfshfhtgl.gif">
	<table > 
  <tr> 
       <td height="28" colspan="4" align="center"></td>
  </tr> 
  <tr> 
    <td width="680px" height="25" align="center">&nbsp;</td> 
    <td width="120px" align="right" >当前管理员[<%=u.getAid()%>]</td> 
    <td width="50px" align="right"><a href="../index.jsp" target="_parent">返回首页</a></td> 
    <td width="50px" align="center"><a href="exit.jsp" target="_parent">安全退出</a></td> 
  </tr>  
</table>	</td>
  </tr>
</table>