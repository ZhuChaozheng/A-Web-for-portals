<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="cn.core.BasetableFactory" %>
<%@ page import="cn.model.New" %>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link href="css/new.css" rel="stylesheet" type="text/css">
<table>
<tr>
<td >
<div class="roundedRectangle">
<p>通知公告</p>
</div>
<div id="i"><a href="list_bid.jsp?bid=1" style="color:#CDCDC1;font-size:18px;"
      onmouseover="this.style.color='#4A4A4A'"
      onmouseout="this.style.color='#A1A1A1'"
      target="_self">more</a>
</div>
</tr>
<tr>
        <td height="10px"></td>
      </tr>
  <tr>
  <td>
  <marquee marquee onmouseover=this.stop();
  onmouseout=this.start(); 
  trueSpeed scrollAmount=1 scrollDelay=35 direction=up>
    <table>
      
      <%BasetableFactory bf=BasetableFactory.getInstance();
      Collection coll=bf.ListNew(1000,"where bid=1 ORDER BY utime DESC");
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
        <td>
        <a href="info_new.jsp?nid=<%=n.getNid()%>" title="<%=n.getTitle()%>"><%=n.getTitle()%></a>
        </td>
        <td class="right"><%=stime%></td>
      </tr>
      <%}}%>
      <tr>
        <td colspan="3" height="4px"></td>
      </tr>
    </table>
    </marquee>
    </td>
  </tr>
</table>
<map name="Map" id="Map">
<area shape="rect" coords="0,0,10,20" href="list_new.jsp" />
</map>