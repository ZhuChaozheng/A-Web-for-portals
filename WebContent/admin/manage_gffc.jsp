<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="cn.model.Admin" %>
<%@ page import="cn.model.Gffc" %>
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
<title>manage_gffc</title>
</head>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
<body> 
<table width="98%" > 
  <tr align="center"> 
    <td colspan="3" class="TableTitle1" >国防风采管理</td> 
  </tr> 
  <tr align="center"> 
    <td colspan="2" bgcolor="#FFFFFF">&nbsp;</td> 
    <td bgcolor="#FFFFFF"><a href="add_gffc.jsp" target="_self" >添加国防风采</a></td> 
  </tr> 
  <tr align="center"> 
    <td height="27" class="TableTitle1">名称</td> 
    <td class="TableTitle1">图片位置</td> 
    <td width="30%" class="TableTitle1">删除</td> 
  </tr>   
  <%BasetableFactory bf=BasetableFactory.getInstance();
      int submit_page=ParamUtils.getIntParameter(request,"page");
      Collection coll=bf.ListGffc(submit_page,"order by gid desc");
      if(coll==null||coll.size()<=0)
      {%> 
  <tr align="center"> 
    <td height="27" colspan="4" bgcolor="#FFFFFF">当前要闻记录为空</td> 
  </tr>   
  <%}
      else{Iterator it=coll.iterator(); 
  while(it.hasNext()){
        Gffc gc=(Gffc)it.next();%> 
  <tr align="center"> 
    <td height="27" bgcolor="#FFFFFF"><%=gc.getName()%>
    </td> 
    <td bgcolor="#FFFFFF"><%=gc.getGpic()%></td> 
    <td bgcolor="#FFFFFF">
    <a href="modify_gffc.jsp?action=del&gid=<%=gc.getGid()%>" onClick="javascript:return confirm('你确定删除该风采吗？')">
    <img src="../images/del.gif" border="0"></a></td> 
  </tr>   <%}%> 
  <tr align="right"> 
    <td height="27" colspan="4" bgcolor="#E9F2F6">
    <%=HtmlUtils.table(8,bf.getRow("gffc"),submit_page,"manage_gffc.jsp","_self")%></td> 
  </tr>   <%}%> 
</table> 
</body>
</html>
