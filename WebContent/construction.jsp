<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="cn.model.Admin" %>
<%@ page import="cn.model.New" %>
<%@ page import="cn.core.*" %>
<%@ page import="java.util.*" %>
<HTML>
<HEAD>
<TITLE>河海大学国防生</TITLE>
<style type="text/css">
font{
   FONT-SIZE: 14px;
   font-family:"微软雅黑",Arial;
   margin:15px;
}
.intro span{
   font-size:16px;
   color:#222;
}
</style>
</HEAD>
<BODY >
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
<TD class=biaoti31 align=center>国防生简介</TD></TR></TBODY></TABLE></TD></TR>
<TR>
<TD>
<TABLE >
<TBODY>
<TR>
<TD width=20></TD>
<TD height=440 vAlign=top width=208>
<TABLE>
<TBODY>
<TR>
<TD height=12></TD></TR>
<TR>
<TD>
<TABLE>
<TBODY>
<TR>
<TD class=biaoti32 style="PADDING-LEFT: 15px" height=30>
<A href="introduction.jsp" target=_self>国防生简介</A></TD></TR>
<TR>
<TD bgColor=#d5d5d5 height=1 width=207></TD></TR>
<tr>
<TD bgColor=#d5d5d5 height=1 width=207></TD></TR>
<TR>
<TD class=biaoti32 style="PADDING-LEFT: 15px" height=30>
<A href="leader.jsp" target=_self>现任领导</A></TD></TR>
<TR>
<TD bgColor=#d5d5d5 height=1 width=207></TD></TR>
<tr>
<TD bgColor=#d5d5d5 height=1 width=207></TD></TR>
<TR>
<TD class=biaoti32 style="PADDING-LEFT: 15px" height=30>
<A href="construction.jsp" target=_self>机构设置</A></TD></TR>
<TR>
<TD bgColor=#d5d5d5 height=1 width=207></TD></TR>
<tr>
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
<A title=机构设置 href="construction.jsp">机构设置</A></TD></TR>
<TR>
<TD height=10 colSpan=2></TD></TR>
<TR>
<TD class=biaoti32 height=30 colSpan=2>机构设置</TD></TR>
    
<TR>
<TD height=6 width=82><IMG src="images/bg2.gif" width=82 height=6></TD>
<TD background=images/bg3.gif width=615></TD></TR>
<TR>
<TD height=15 colSpan=2></TD></TR>
</TBODY></TABLE>
<TABLE>
<TBODY class="intro">
<TR>
<td width="150"></td>
<TD >
<img src="images/gfsjgsz.gif" width=350 height=450 usemap="#construction">
<map name="construction" id="construction">
<area shape="rect" coords="0,180,114,225" href="introduction.jsp" target="_self" alt="国防生大队"/>
<area shape="rect" coords="260,0,350,36" href="introduction.jsp" target="_self" alt="11中队"/>
<area shape="rect" coords="260,45,350,81" href="introduction.jsp" target="_self" alt="12中队"/>
<area shape="rect" coords="260,90,350,126" href="introduction.jsp" target="_self" alt="13中队"/>
<area shape="rect" coords="260,90,350,171" href="introduction.jsp" target="_self" alt="14中队"/>
<area shape="rect" coords="260,207,350,243" href="introduction.jsp" target="_self" alt="管理部"/>
<area shape="rect" coords="260,257.5,350,297" href="introduction.jsp" target="_self" alt="作训部"/>
<area shape="rect" coords="260,307.8,350,347.4" href="introduction.jsp" target="_self" alt="思政部"/>
<area shape="rect" coords="260,360,350,396" href="introduction.jsp" target="_self" alt="宣传部"/>
<area shape="rect" coords="260,414,350,450" href="introduction.jsp" target="_self" alt="团总支"/>
</map>
</TD></TR></TBODY></TABLE></TD></TR>
<TR>
<TD height=10 colSpan=2></TD></TR></TBODY></TABLE></TD>
<TD width=17></TD></TR></TBODY></TABLE></DIV>
<jsp:include page="bottom.jsp"></jsp:include>
</div>
</BODY></HTML>