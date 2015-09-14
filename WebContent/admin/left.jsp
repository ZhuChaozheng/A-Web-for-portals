<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="cn.model.Admin" %>
<%@ page import="cn.core.*" %>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires",0);
response.setHeader("Pragma","no-cache");
if (!Crazyadept.UserIsOK(session)) {
    out.println("<script>parent.location.href='../index.jsp';</script>");
    return ;
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<link href="../css/new.css" rel="stylesheet" type="text/css">
<body>
<ol>
<li><a href="manage_lastednews.jsp" target="mainFrame" >最新要闻管理</a></li>
<li><a href="manage_notice.jsp" target="mainFrame" >通知公告管理</a></li>
<li><a href="manage_model.jsp" target="mainFrame" >模范人物管理</a></li>
<li><a href="manage_military.jsp" target="mainFrame" >军事动态管理</a></li>
<li><a href="manage_seasoul.jsp" target="mainFrame">海魂在线管理</a></li>
<li><a href="manage_gffc.jsp" target="mainFrame">国防风采管理</a></li>
<li><a href="manage_liuyan.jsp" target="mainFrame">网站留言管理</a></li>
</ol> 
</body>
</html>
