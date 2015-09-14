<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="cn.core.BasetableFactory" %>
<%@ page import="cn.model.New" %>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link href="css/new.css" rel="stylesheet" type="text/css">
<table >
<tr>
<td>
<div class="roundedRectangle">
<p>军事动态</p>
</div>
</td>
<div id="k">
<a href="list_bid.jsp?bid=2" style="color:#CDCDC1;font-size:18px;"
      onmouseover="this.style.color='#4A4A4A'"
      onmouseout="this.style.color='#A1A1A1'"
      target="_self">more</a>
</div>
</tr>
<tr height="6px"></tr>
  <tr>
  <td>
    <table>
      <tr>
        <td height="4px"></td>
      </tr>
      <%BasetableFactory bf=BasetableFactory.getInstance();
      Collection coll=bf.ListNew(1000,"where bid=2 order by utime desc");
if(coll==null||coll.size()<=0){%>
      <tr>
        <td height="25px">没有添加新闻</td>
      </tr>
      <%}else{
    Iterator it=coll.iterator();
    int i=0;
	while(it.hasNext()){
        New n=(New)it.next();
        String ltime=n.getUtime();
        String stime=ltime.substring(0,10);
%>
      <tr>
      <td>
      <img src="images/db.gif" width="24px" height="24px"/></td>
        <td  height="10px" class="left">
        <a href="info_new.jsp?nid=<%=n.getNid()%>" title="<%=n.getTitle()%>"><%=n.getTitle()%></a>
        </td>
        <td class="right"><%=stime%></td>
      </tr>
      <%}}%>
      <tr>
        <td colspan="3" height="4px"></td>
      </tr>
    </table>
    </td>
  </tr>
</table>