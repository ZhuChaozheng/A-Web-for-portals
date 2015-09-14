<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="cn.model.Admin" %>
<%@ page import="cn.model.SeaSoul" %>
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
    <td colspan="3" class="TableTitle1" >杂志管理</td> 
  </tr> 
  <tr align="center"> 
    <td colspan="2" bgcolor="#FFFFFF">&nbsp;</td> 
    <td bgcolor="#FFFFFF"><a href="add_seasoul.jsp" target="_self" >添加杂志</a></td> 
  </tr> 
  <tr align="center"> 
    <td height="27" class="TableTitle1">杂志名称</td> 
    <td class="TableTitle1">杂志链接</td> 
    <td width="30%" class="TableTitle1">修改删除</td> 
  </tr>   
  <%BasetableFactory bf=BasetableFactory.getInstance();
      int submit_page=ParamUtils.getIntParameter(request,"page");
      Collection coll=bf.ListSeaSoul(submit_page,"order by ssid desc");
      if(coll==null||coll.size()<=0)
      {%> 
  <tr align="center"> 
    <td height="27" colspan="4" bgcolor="#FFFFFF">当前要闻记录为空</td> 
  </tr>   
  <%}
      else{Iterator it=coll.iterator(); 
  while(it.hasNext()){
        SeaSoul ss=(SeaSoul)it.next();%> 
  <tr align="center"> 
    <td height="27" bgcolor="#FFFFFF"><%=ss.getName()%>
    </td> 
    <td bgcolor="#FFFFFF"><%=ss.getLink()%></td> 
    <td bgcolor="#FFFFFF">
    <a href="update_seasoul.jsp?action=modify&ssid=<%=ss.getSsid()%>">
    <img src="../images/modify.gif" border="0"></a>&nbsp;&nbsp;
    <a href="modify_seasoul.jsp?action=del&ssid=<%=ss.getSsid()%>" onClick="javascript:return confirm('你确定删除该杂志吗？')">
    <img src="../images/del.gif" border="0"></a></td> 
  </tr>   <%}%> 
  <tr align="right"> 
    <td height="27" colspan="4" bgcolor="#E9F2F6">
    <%=HtmlUtils.table(8,bf.getRow("seasoul"),submit_page,"manage_seasoul.jsp","_self")%></td> 
  </tr>   <%}%> 
</table> 
</body>
</html>
