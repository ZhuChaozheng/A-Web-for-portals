<%@ page contentType="text/html;  charset=UTF-8" %>
<%@ page import="cn.model.Admin" %>
<%@ page import="cn.model.Liuyan" %>
<%@ page import="cn.core.*" %>
<%@ page import="java.util.*" %>
<html>
<head>
<title>manage_liuyan</title>
</head>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
<body> 
<table width="98%" > 
  <tr align="center"> 
    <td colspan="4" class="TableTitle1" >网站留言管理</td> 
  </tr> 
  <tr align="center"> 
    <td width="40%"height="27" class="TableTitle1">标题</td> 
    <td width="30%" class="TableTitle1">留言时间</td> 
    <td width="13%" class="TableTitle1">姓名</td> 
    <td width="17%" class="TableTitle1">删除</td> 
  </tr>   
  <%BasetableFactory bf=BasetableFactory.getInstance();
      int submit_page=ParamUtils.getIntParameter(request,"page");
      Collection coll=bf.ListLiuyan(submit_page,"order by utime desc");
      if(coll==null||coll.size()<=0)
      {%> 
  <tr align="center"> 
    <td height="27" colspan="4" bgcolor="#FFFFFF">当前要闻记录为空</td> 
  </tr>   
  <%}
      else{Iterator it=coll.iterator(); 
  while(it.hasNext()){
        Liuyan ly=(Liuyan)it.next();%> 
  <tr align="center"> 
    <td height="27" bgcolor="#FFFFFF">
    <a target="_self" href="info_liuyan.jsp?lyid=<%=ly.getLyid()%>"><%=ly.getTitle()%></a>
    </td> 
    <td bgcolor="#FFFFFF"><%=ly.getUtime()%></td> 
    <td bgcolor="#FFFFFF">
    <%=ly.getName()%> 
    </td> 
    <td bgcolor="#FFFFFF">
    <a href="modify_liuyan.jsp?action=del&lyid=<%=ly.getLyid()%>" onClick="javascript:return confirm('你确定删除该新闻吗？')">
    <img src="../images/del.gif" border="0"></a></td> 
  </tr>   <%}%> 
  <tr align="right"> 
    <td height="27" colspan="4" bgcolor="#E9F2F6">
    <%=HtmlUtils.table(bf.getRow("liuyan"),submit_page,"manage_liuyan.jsp")%></td> 
  </tr>   <%}%> 
</table> 
</body>
</html>
