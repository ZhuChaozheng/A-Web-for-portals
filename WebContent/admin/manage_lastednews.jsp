<%@ page contentType="text/html;  charset=GBK" %>
<%@ page import="cn.model.Admin" %>
<%@ page import="cn.model.New" %>
<%@ page import="cn.core.*" %>
<%@ page import="java.util.*" %>
<html>
<head>
<title>manage_lastednews</title>
</head>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
<body> 
<table width="98%"> 
  <tr align="center"> 
    <td colspan="4" class="TableTitle1" >最新要闻管理</td> 
  </tr> 
  <tr align="center"> 
    <td colspan="3" bgcolor="#FFFFFF">&nbsp;</td> 
    <td bgcolor="#FFFFFF"><a href="add_lastednews.jsp" target="_self" >添加最新要闻</a></td> 
  </tr> 
  <tr align="center"> 
    <td height="27" class="TableTitle1">最新要闻标题</td> 
    <td class="TableTitle1">发布时间</td> 
    <td width="10%" class="TableTitle1">作者</td> 
    <td width="30%" class="TableTitle1">修改删除</td> 
  </tr>   
  <%BasetableFactory bf=BasetableFactory.getInstance();
      int submit_page=ParamUtils.getIntParameter(request,"page");
      Collection coll=bf.ListNew(submit_page,"where bid=0 order by utime desc");
      if(coll==null||coll.size()<=0)
      {%> 
  <tr align="center"> 
    <td height="27" colspan="4" bgcolor="#FFFFFF">当前要闻记录为空</td> 
  </tr>   
  <%}
      else{Iterator it=coll.iterator(); 
  while(it.hasNext()){
        New n=(New)it.next();%> 
  <tr align="center"> 
    <td height="27" bgcolor="#FFFFFF">
    <a target="_self" href="info_new.jsp?nid=<%=n.getNid()%>"><%=n.getTitle()%></a>
    </td> 
    <td bgcolor="#FFFFFF"><%=n.getUtime()%></td> 
    <td bgcolor="#FFFFFF">
    <%=n.getAuthor()%> 
    </td> 
    <td bgcolor="#FFFFFF">
    <a href="update_lastednews.jsp?action=modify&nid=<%=n.getNid()%>">
    <img src="../images/modify.gif" border="0"></a>&nbsp;&nbsp;
    <a href="modify_lastednews.jsp?action=del&nid=<%=n.getNid()%>" onClick="javascript:return confirm('你确定删除该新闻吗？')">
    <img src="../images/del.gif" border="0"></a></td> 
  </tr>   <%}%> 
  <tr align="right"> 
    <td height="27" colspan="4" bgcolor="#E9F2F6">
    <%=HtmlUtils.table(8,bf.getRow("new where bid=0"),submit_page,"manage_lastednews.jsp","_self")%></td> 
  </tr>   <%}%> 
</table> 
</body>
</html>
