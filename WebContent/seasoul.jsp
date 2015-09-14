<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="cn.core.BasetableFactory" %>
<%@ page import="cn.model.SeaSoul" %>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link href="css/new.css" rel="stylesheet" type="text/css">
<table>
<tr>
<td>
<div class="roundedRectangle">
<p>海魂杂志</p>
</div>
</td>
<div id="l">
<a href="list_seasoul.jsp?" style="color:#B8B8B8;font-size:18px;"
      onmouseover="this.style.color='#4A4A4A'"
      onmouseout="this.style.color='#B8B8B8'"
      target="_self">more</a>
</div>
</tr>
<tr height="6px"></tr>
      <tr>
      <td><table><tr>
        <td height="4px"></td>
      </tr>
      <%BasetableFactory bf=BasetableFactory.getInstance();
      Collection coll=bf.ListSeaSoul(1000,"ORDER BY ssid DESC");
       if(coll==null||coll.size()<=0){%>
      <tr>
        <td height="25px">没有添加新闻</td>
      </tr>
      <%}else{
    Iterator it=coll.iterator();
    int i=0;
	while(it.hasNext()){
        SeaSoul s=(SeaSoul)it.next();
%>
      <tr>
      <td>
      <img src="images/db.gif" width="24px" height="24px"/></td>
        <td width="50px">
        <a href="<%=s.getLink()%>" title="<%=s.getName()%>" target="_blank"><%=s.getName()%></a>
        </td>
      </tr>
      <%}}%>
      <tr>
        <td colspan="2" height="4px"></td>
      </tr>
</table>
</td>
</tr>
</table>