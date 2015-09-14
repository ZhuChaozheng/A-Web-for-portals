<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="cn.model.Admin" %>
<%@ page import="cn.model.Model" %>
<%@ page import="cn.core.*" %>
<%@ page import="java.util.*" %>
<HTML>
<HEAD>
<TITLE>河海大学国防生</TITLE>
<style type="text/css">
.clearfix {
	DISPLAY: inline-block
}
.fglist{ 
	BORDER-TOP: none;
	BACKGROUND: #fff; 
	PADDING-BOTTOM: 35px; 
}
.fglist LI {
	FONT-SIZE: 14px; 
	BORDER-TOP: #eee 1px solid; 
	BORDER-RIGHT: #eee 1px solid; 
	WIDTH: 200px; 
	BORDER-BOTTOM: #eee 1px solid; 
	FLOAT: left; 
	PADDING-BOTTOM: 5px; 
	TEXT-ALIGN: center; 
	PADDING-TOP: 5px; 
	PADDING-LEFT: 5px; 
	MARGIN: 23px 0px 0px 23px; 
	BORDER-LEFT: #eee 1px solid; 
	PADDING-RIGHT: 5px
}
.fglist LI A {
	TEXT-DECORATION: none
}
.fglist LI IMG {
	HEIGHT: 120px; 
	WIDTH: 200px; 
	DISPLAY: block
}
.fglist LI SPAN {
	OVERFLOW: hidden; 
	TEXT-DECORATION: none; 
	HEIGHT: 24px; 
	COLOR: #666; 
	MARGIN-TOP: 3px; 
	DISPLAY: block; 
	LINE-HEIGHT: 24px
}
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
body,p,h1,h2,h3,h4,h5,h6,dd,dl,dt,th,td,ul,li,ol,form,input,select,textarea,button,pre,legend{ margin:0;padding:0;}
body{ 
overflow-x:hidden;
background:#F1F1F1; 
font-size:12px;
font-family:'微软雅黑',Arial, Helvetica, sans-serif;
}
.nconwrap {
	OVERFLOW: hidden; WIDTH: 710px; FLOAT: right
}
.clearfix {
	DISPLAY: inline-block
}
.teacher{ background:#FFF; 
 border-top:none; padding-bottom:15px;}
.teacher .mslist {
	PADDING-BOTTOM: 10px; PADDING-TOP: 25px; PADDING-LEFT: 25px; PADDING-RIGHT: 0px
}
.mslist {
	WIDTH: 209px;
	 FLOAT: left; 
	PADDING-BOTTOM: 25px; 
	PADDING-TOP: 25px; 
	PADDING-LEFT: 25px; 
	PADDING-RIGHT: 0px
}
.mslist .msphoto {
	OVERFLOW: hidden; 
	HEIGHT: 132px; 
	WIDTH: 98px; POSITION: relative; FLOAT: left
}
.mslist .mstxt  a:hover,a:active,a:focus{
	text-decoration:underline;
}
.mslist .mstxt {
	WIDTH: 98px; FLOAT: right; LINE-HEIGHT: 18px
}
.mslist .mstxt A {
	COLOR: #555
}
.mslist .mstxt H3 {
	FONT-SIZE: 14px; 
	FONT-WEIGHT: normal;
	 COLOR: #222; PADDING-BOTTOM: 3px; 
	 PADDING-TOP: 3px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px
}
.mslist .mstxt P {
	OVERFLOW: hidden; HEIGHT: 108px; FONT-FAMILY: Arial,"宋体"; COLOR: #8c8c8c
}
</style>
</HEAD>
<BODY windowc_onresizez="true">
<jsp:include page="top.jsp"></jsp:include>
<div id="container">
<DIV id=wrapper><!--中间部分  -->
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
<TR>
<TD height=6 width=82><IMG src="images/bg2.gif" width=82 height=6></TD>
<TD background=images/bg3.gif width=615></TD></TR>
<TR>
<TD colSpan=2>
<TABLE>
<TBODY>
<div class="nconwrap clearfix">
<div class="teacher clearfix">
<%BasetableFactory bf=BasetableFactory.getInstance();
      int submit_page=ParamUtils.getIntParameter(request,"page");
      Collection coll=bf.ListModel(submit_page,"order by utime desc");
      if(coll==null||coll.size()<=0)
      {%>
  <tr align="center"> 
    <td height="10" colspan="2" bgcolor="#FFFFFF">当前模范人物为空</td> 
  </tr>   
  <%}
      else{
    	  Iterator it=coll.iterator(); 
         while(it.hasNext()){
        Model m=(Model)it.next();%> 
<div class="mslist">
<div class="msphoto">
<img width="98" height="110" alt="" src="<%=m.getMpic()%>">
</div>
<div class="mstxt"><h3>
<a style="font-size:16px;font-family:'微软雅黑',Arial, Helvetica, sans-serif;" target="_self"  href="info_model.jsp?mid=<%=m.getMid()%>"><%=m.getName()%></a></h3>
<p><%=m.getSummary()%></p>
</div></div>
<%}%>
</div>
</div>
</TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD height=10 align=center><FONT style="FONT-SIZE: 9pt"><SPAN width="100%">
<TABLE >
<TBODY>
<%=HtmlUtils.table(8,bf.getRow("model"),submit_page,"list_model.jsp","_self")%>
<%}%> 
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