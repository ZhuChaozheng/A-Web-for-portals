<%@ page contentType="text/html;  charset=UTF-8" %>
<%@ page import="cn.model.Admin" %>
<%@ page import="cn.model.Model" %>
<%@ page import="cn.core.*" %>
<%@ page import="java.util.*" %>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires",0);
response.setHeader("Pragma","no-cache");
if (!Crazyadept.UserIsOK(session)){ 
	out.println("<script>parent.location.href='../index.jsp';</script>");
    return ;}%>
<html>
<head>
<title>manage_model</title>
</head>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
<body> 
<table width="98%" > 
  <tr align="center"> 
    <td colspan="3" class="TableTitle1" >模范先锋管理</td> 
  </tr> 
  <tr align="center"> 
    <td colspan="2" bgcolor="#FFFFFF">&nbsp;</td> 
    <td bgcolor="#FFFFFF"><a href="add_model.jsp" target="_self" >添加模范人物</a></td> 
  </tr> 
  <tr align="center"> 
    <td height="27" class="TableTitle1">模范人物姓名</td> 
    <td class="TableTitle1">发布时间</td> 
    <td width="30%" class="TableTitle1">修改删除</td> 
  </tr>   
  <%BasetableFactory bf=BasetableFactory.getInstance();
      int submit_page=ParamUtils.getIntParameter(request,"page");
      Collection coll=bf.ListModel(submit_page,"order by utime desc");
      if(coll==null||coll.size()<=0)
      {%> 
  <tr align="center"> 
    <td height="27" colspan="4" bgcolor="#FFFFFF">当前模范人物为空</td> 
  </tr>   
  <%}
      else{Iterator it=coll.iterator(); 
  while(it.hasNext()){
        Model m=(Model)it.next();%> 
  <tr align="center"> 
    <td height="27" bgcolor="#FFFFFF">
    <a target="_self" href="info_model.jsp?mid=<%=m.getMid()%>"><%=m.getName()%></a>
    </td> 
    <td bgcolor="#FFFFFF"><%=m.getUtime()%></td> 
    <td bgcolor="#FFFFFF">
    <a href="update_model.jsp?action=modify&mid=<%=m.getMid()%>">
    <img src="../images/modify.gif" border="0"></a>&nbsp;&nbsp;
    <a href="modify_model.jsp?action=del&mid=<%=m.getMid()%>" onClick="javascript:return confirm('你确定删除该人物吗？')">
    <img src="../images/del.gif" border="0"></a></td> 
  </tr>   <%}%> 
  <tr align="right"> 
    <td height="27" colspan="4" bgcolor="#E9F2F6">
    <%=HtmlUtils.table(8,bf.getRow("model"),submit_page,"manage_model.jsp","_self")%></td> 
  </tr>   <%}%> 
</table> 
</body>
</html>
