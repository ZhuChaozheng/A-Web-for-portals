<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="cn.core.BasetableFactory" %>
<%@ page import="cn.model.New" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#container,#header,#wrapper,#footer{
	margin: 0 auto;
	width: 1000px;
}
#container { min-height:100%; text-align:left; background:#ffffff;}
#wrapper { clear:both; background:#fff;}
 .biaoti32 {
	font-size:14px;
	font-weight:bold;
	color:#165ca3;
}
 .llink a {
	font-size:12px;
	color:#525252;
	font-weight:normal;
    text-decoration: none;
 	vertical-align: baseline;
 	outline: none;
 		zoom: 0;
}
.llink a:hover {
	font-size:12px;
	color:#000000;
	font-weight:normal;
	text-decoration: none;
}

</style>
</head>
<body>
<div id="container">
<div id="wrapper">
<table width="100%" height="20" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="20"></td>
  </tr>
</tbody></table>
<table width="1000" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td width="15"></td>
    <td width="459" valign="top">
    <table width="459" border="0" cellspacing="0" cellpadding="0">
      <tbody><tr>
        <td width="83" height="26" align="center" class="biaoti32">军事动态</td>
        <td width="269"></td>
        <td width="107"><div align="right"><a href="list_bid.jsp?bid=2" target="_blank"><img src="images/morem.gif" border="0"></a></div></td>
      </tr>
    </tbody></table>
   <table width="459" border="0" cellspacing="0" cellpadding="0" >
  <tbody><TR>
<TD width=82><IMG src="images/bg2.gif" width=82 height=6></TD>
<TD  width=377  background=images/bg3.gif></TD></TR>
</tbody></table>
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="5"></td>
  </tr>
</tbody></table>
<table width="459" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td width="93" height="90" valign="top"><table width="93" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="90"><img width="93" height="90" src="images/1.gif"></td>
  </tr>
</tbody></table>
</td>
    <td width="21"></td>
    <td width="345" valign="top"><table width="345" class="llink" border="0" cellspacing="0" cellpadding="0">
  <tbody>
   <%BasetableFactory bf=BasetableFactory.getInstance();
      Collection coll=bf.ListNew(9999,"where bid=2 ORDER BY utime DESC");
if(coll==null||coll.size()<=0){%>
 <tr>
        <td height="25px">没有添加新闻</td>
      </tr>
      <%}else{
    Iterator it=coll.iterator();
    int i=0;
	while(it.hasNext()){
        New n=(New)it.next();
%>
  <tr>
    <td height="25"><table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tbody><tr><td align="left" class="block">
    <a title="<%=n.getTitle() %>" href="info_new.jsp?nid=<%=n.getNid()%>" target="_self"><%=n.getTitle() %></a></td></tr></tbody></table></td>
  </tr>
   <%}}%>
</tbody></table></td>
  </tr>
</tbody></table>
    </td>
    <td width="76"></td>
    <td width="435" valign="top"> 
<table width="435" border="0" cellspacing="0" cellpadding="0">
      <tbody><tr>
        <td width="83" height="26" align="center" class="biaoti32">通知公告</td>
        <td width="245"></td>
        <td width="107">
        <div align="right">
        <a href="list_bid.jsp?bid=1" target="_black">
        <img src="images/morem.gif" border="0"></a></div></td>
      </tr>
    </tbody></table>
   <table width="435" border="0" cellspacing="0" cellpadding="0">
  <tbody><TR>
<TD height=6 width=82><IMG src="images/bg2.gif" width=82 height=6></TD>
<TD background=images/bg3.gif width=615></TD></TR>
</tbody></table> 
   <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="5"></td>
  </tr>
</tbody></table>
 
    <table width="435" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td width="93" height="90" valign="top">
    <table width="93" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td height="90"><img width="93" height="90" src="images/bg5.gif"></td>
  </tr>
</tbody></table></td>
    <td width="21"></td>
    <td width="321" valign="top"><table width="321" class="llink" border="0" cellspacing="0" cellpadding="0">
  <tbody>
 <%
      Collection coll1=bf.ListNew(9999,"where bid=1 ORDER BY utime DESC");
if(coll1==null||coll1.size()<=0){%>
      <tr>
        <td height="25px">没有添加新闻</td>
      </tr>
      <%}else{
    Iterator it1=coll1.iterator();
	while(it1.hasNext()){
        New n1=(New)it1.next();
       
%>
  <tr>
    <td height="25">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tbody>
    <tr><td align="left" class="block">
    <a title="<%=n1.getTitle() %>" href="info_new.jsp?nid=<%=n1.getNid()%>" target="_self"><%=n1.getTitle() %></a>
    </td></tr>
    </tbody>
    </table></td>
  </tr>
  <%}}%>
</tbody></table></td>
  </tr>
</tbody></table>
    </td>
    <td width="15"></td>
  </tr>
</tbody></table>
<table width="100%" height="20" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td></td>
  </tr>
</tbody></table>
</div></div>
</body>
</html>

    	
    	
