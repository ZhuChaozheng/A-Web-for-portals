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
    <td colspan="4" class="TableTitle1" >����Ҫ�Ź���</td> 
  </tr> 
  <tr align="center"> 
    <td colspan="3" bgcolor="#FFFFFF">&nbsp;</td> 
    <td bgcolor="#FFFFFF"><a href="add_lastednews.jsp" target="_self" >�������Ҫ��</a></td> 
  </tr> 
  <tr align="center"> 
    <td height="27" class="TableTitle1">����Ҫ�ű���</td> 
    <td class="TableTitle1">����ʱ��</td> 
    <td width="10%" class="TableTitle1">����</td> 
    <td width="30%" class="TableTitle1">�޸�ɾ��</td> 
  </tr>   
  <%BasetableFactory bf=BasetableFactory.getInstance();
      int submit_page=ParamUtils.getIntParameter(request,"page");
      Collection coll=bf.ListNew(submit_page,"where bid=0 order by utime desc");
      if(coll==null||coll.size()<=0)
      {%> 
  <tr align="center"> 
    <td height="27" colspan="4" bgcolor="#FFFFFF">��ǰҪ�ż�¼Ϊ��</td> 
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
    <a href="modify_lastednews.jsp?action=del&nid=<%=n.getNid()%>" onClick="javascript:return confirm('��ȷ��ɾ����������')">
    <img src="../images/del.gif" border="0"></a></td> 
  </tr>   <%}%> 
  <tr align="right"> 
    <td height="27" colspan="4" bgcolor="#E9F2F6">
    <%=HtmlUtils.table(8,bf.getRow("new where bid=0"),submit_page,"manage_lastednews.jsp","_self")%></td> 
  </tr>   <%}%> 
</table> 
</body>
</html>
