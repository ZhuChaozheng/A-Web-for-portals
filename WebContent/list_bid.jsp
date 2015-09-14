<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="cn.model.Admin" %>
<%@ page import="cn.model.New" %>
<%@ page import="cn.core.*" %>
<%@ page import="java.util.*" %>
<HTML>
<HEAD>
<TITLE>河海大学国防生</TITLE>
<style type="text/css">
#foot {
	width:100%;
	height:75px;
	background-color:#00669a;
	margin-top:2px;
}

#foot table {
	width:900px;
	color:#DDDDDD;
	font-size:13px;
	margin:0 auto;
}

#foot table tr{
	height:18px;
	text-align:left;
}
#address{
	text-align:right;
}
span{
font-family:Arial, Helvetica, sans-serif;
font-size:12px;
}
</style>
</HEAD>
<BODY windowc_onresizez="true">
<jsp:include page="top.jsp"></jsp:include>
<div id="container">
<DIV id=wrapper><!--中间部分  -->
 <%BasetableFactory bf=BasetableFactory.getInstance();
  int bid=ParamUtils.getIntParameter(request, "bid");
      int submit_page=ParamUtils.getIntParameter(request,"page");
      Collection coll=bf.ListNew(submit_page,"where bid="+bid+" order by utime desc");
      %>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD height=20 colSpan=4></TD></TR>
<TR>
<TD width=18></TD>
<TD valign=top width=248>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD height=30>
<TABLE height=30 cellSpacing=0 cellPadding=0 width=248 align=center background=images/listbg.gif border=0>
<TBODY>
 <%
     if(bid==0){%>
     <TR>
<TD class=biaoti31 align=center>最新要闻</TD></TR></TBODY></TABLE></TD></TR>
<TR>
<TD>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD width=20></TD>
<TD height=440 vAlign=top width=208>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD height=12></TD></TR>
<TR>
<TD>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD class=biaoti32 style="PADDING-LEFT: 15px" height=30><A href="list_bid.jsp?bid=0" target=_self>最新要闻</A></TD></TR>
<TR>
<TD bgColor=#d5d5d5 height=1 width=207></TD></TR>
<TD bgColor=#d5d5d5 height=1 width=207>
</TD>
</TBODY>
</TABLE>
</TD>
</TR>
</TBODY>
</TABLE>
</TD>
<TD width=20></TD></TR></TBODY></TABLE></TD></TR>
<TR>
<TD height=30></TD></TR></TBODY></TABLE></TD>
<TD width=20>　</TD>
<TD valign=top>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD height=20 colSpan=2><A title=返回首页 href="index.jsp">首页</A>
<SPAN class=posSplit>&nbsp;</SPAN>
<A title=最新要闻 href="list_bid.jsp?bid=0">最新要闻</A></TD></TR>
<TR>
<TD height=10 colSpan=2></TD></TR>
<TR>
<TD class=biaoti32 height=30 colSpan=2>最新要闻</TD></TR>
      <%}%>
      <%
     if(bid==1){%>
     <TR>
<TD class=biaoti31 align=center>通知公告</TD></TR></TBODY></TABLE></TD></TR>
<TR>
<TD>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD width=20></TD>
<TD height=440 vAlign=top width=208>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD height=12></TD></TR>
<TR>
<TD>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD class=biaoti32 style="PADDING-LEFT: 15px" height=30><A href="list_bid.jsp?bid=1" target=_self>通知公告</A></TD></TR>
<TR>
<TD bgColor=#d5d5d5 height=1 width=207></TD></TR>
<TD bgColor=#d5d5d5 height=1 width=207>
</TD>
</TR>
</TBODY>
</TABLE>
</TD>
</TR>
</TBODY>
</TABLE>
</TD>
<TD width=20></TD></TR></TBODY></TABLE></TD></TR>
<TR>
<TD height=30></TD></TR></TBODY></TABLE></TD>
<TD width=20>　</TD>
<TD vAlign=top>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD height=20 colSpan=2><A title=返回首页 href="index.jsp">首页</A>
<SPAN class=posSplit>&nbsp;</SPAN>
<A title=通知公告 href="list_bid.jsp?bid=1">通知公告</A></TD></TR>
<TR>
<TD height=10 colSpan=2></TD></TR>
<TR>
<TD class=biaoti32 height=30 colSpan=2>通知公告</TD></TR>
      <%}%>
      <%
     if(bid==2){%>
     <TR>
<TD class=biaoti31 align=center>军事动态</TD></TR></TBODY></TABLE></TD></TR>
<TR>
<TD>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD width=20></TD>
<TD height=440 vAlign=top width=208>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD height=12></TD></TR>
<TR>
<TD>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD class=biaoti32 style="PADDING-LEFT: 15px" height=30><A href="list_bid.jsp?bid=2" target=_self>军事动态</A></TD></TR>
<TR>
<TD bgColor=#d5d5d5 height=1 width=207></TD></TR>
<TD bgColor=#d5d5d5 height=1 width=207></TD></TR>
</TBODY>
</TABLE>
</TD>
</TR>
</TBODY>
</TABLE>
</TD>
<TD width=20></TD></TR></TBODY></TABLE></TD></TR>
<TR>
<TD height=30></TD></TR></TBODY></TABLE></TD>
<TD width=20>　</TD>
<TD vAlign=top>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD height=20 colSpan=2><A title=返回首页 href="index.jsp">首页</A>
<SPAN class=posSplit>&nbsp;</SPAN>
<A title=最新要闻 href="list_bid.jsp?bid=0">军事动态</A></TD></TR>
<TR>
<TD height=10 colSpan=2></TD></TR>
<TR>
<TD class=biaoti32 height=30 colSpan=2>军事动态</TD></TR>
      <%}%>
<TR>
<TD height=6 width=82><IMG src="images/bg2.gif" width=82 height=6></TD>
<TD background=images/bg3.gif width=615></TD></TR>
<TR>
<TD height=15 colSpan=2></TD></TR>
<TR>
<TD colSpan=2><LINK rel=stylesheet type=text/css href="/css/divwin.css">
<SCRIPT language=javascript src="/include/classbase.js"></SCRIPT>
<SCRIPT language=javascript src="/include/windowopener.js"></SCRIPT>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
       <%
      if(coll==null||coll.size()<=0)
      {%> 
  <tr align="center"> 
    <td height="27" colspan="2" bgcolor="#FFFFFF">当前要闻记录为空</td> 
  </tr>   
      <%}
      else{Iterator it=coll.iterator(); 
  while(it.hasNext()){
        New n=(New)it.next();%> 
<TR>
<TD height=26 width=12></TD>
<TD width=3 align=center><IMG src="images/icon.gif" width=3 height=3></TD>
<TD width=10></TD>
<TD class=ziti01>
<TABLE class=columnStyle cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD><A href="info_new.jsp?nid=<%=n.getNid()%>" target=_self title="<%=n.getTitle()%>"><FONT><%=n.getTitle()%></FONT></A></TD>
<TD width="14%" noWrap align=center><%=n.getUtime()%></TD></TR></TBODY></TABLE></TD></TR>
 <%}%> 
</TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD height=10 align=center><FONT style="FONT-SIZE: 9pt"><SPAN width="100%">
<TABLE style="BORDER-LEFT-WIDTH: 0px;
 BORDER-RIGHT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px;
  BORDER-COLLAPSE: collapse; BORDER-TOP-WIDTH: 0px;" cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
 <tr align="center"> 
    <td  height="27" colspan="4" >
    <%=HtmlUtils.table(bf.getRow("new where bid="+bid),submit_page,"list_bid.jsp")%></td> 
  </tr>   <%}%> 
</TBODY></TABLE></SPAN></FONT></TD></TR></TBODY></TABLE></TD></TR>
<TR>
<TD height=10 colSpan=2></TD></TR></TBODY></TABLE></TD>
<TD width=17></TD></TR></TBODY></TABLE></TBODY></DIV>
<div id="foot"><!-- 底部 -->
<table>
<tr></tr>
<tr>
<td  id="phone">联系电话：025—83786279</td>
<td id="address">江苏省南京市西康路1号（校本部） 邮编：210098 | 江苏省南京市佛城西路8号（江宁校区） 邮编：211100</td>
</tr>
<tr>
<td >版权所有 <span>&copy;</span> 中国人民解放军海军驻河海大学选拔培训办公室</td>
</tr>
</table>
</div>
</div>
<IFRAME style="HEIGHT: 52px; WIDTH: 158px; POSITION: absolute; LEFT: 309px; Z-INDEX: 998; DISPLAY: block; TOP: 186px; VISIBILITY: hidden" src="about:blank" frameBorder=0 allowTransparency scrolling=no></IFRAME></BODY></HTML>