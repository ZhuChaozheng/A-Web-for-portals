<%@ page contentType="text/html;  charset=UTF-8" %>
<%@ page import="cn.model.Admin" %>
<%@ page import="cn.core.*" %>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires",0);
response.setHeader("Pragma","no-cache");
if (!Crazyadept.UserIsOK(session)) {
	response.sendRedirect("../user_logon.jsp");
}
%>
<html>
<head>
<title>管理员控制台</title>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
</head>
<body>
<table width="980px" align="center" >
  <tr >
    <td height="170" colspan="2"> 
    <iframe src="top.jsp" frameborder="0" scrolling="no" name="topFrame" height="100%" width="100%" >
 	</iframe>
 	</td>
  </tr>
  <tr>
    <td width="200px" align="left" valign="top"><jsp:include page="left.jsp"/></td>
    <td align="center">
    <table width="600px" height="400"><tr><td valign="top"><br/>
          <iframe src="main.jsp" name="mainFrame" frameborder="0" width="98%" height="98%"></iframe>
 		</td>
 		</tr>
 		</table>
 	</td>
  </tr>
  <tr>
    <td colspan="2" align="center"><jsp:include page="bottom.jsp"/></td>
  </tr>
</table>
</body> 
</html>
