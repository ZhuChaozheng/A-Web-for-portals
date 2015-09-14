<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="cn.core.*" %>
<%@ page import="cn.model.Model" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>河海大学国防生</title>
<link href="css/css.css" rel="stylesheet" type="text/css">
<link href="css/new.css" rel="stylesheet" type="text/css">
<style type="text/css">
#bottom{
width:1000px;
}
.tuijian{
padding:20px;
}
</style>
</head>
<body> 
   <jsp:include page="top.jsp"></jsp:include>
  <%int mid=ParamUtils.getIntParameter(request,"mid");
  BasetableFactory bf=BasetableFactory.getInstance();
  Model m=bf.SearchModel("WHERE mid="+mid);
  m.setClick(m.getClick()+1);
%> 
<div id="container">
    <table>
    <tr> 
    <td class="tuijian" valign=top><jsp:include page="left.jsp"/></td>
    <td >
    <table width="650px" id="font1">
          <tr>
          <td  align="center" class="TableTitle1" style="font-size:20px;"><%=m.getName()%></td> 
        </tr>
        <tr>
        <td height="5px"></td>
        </tr> 
        <tr>
        <td  width="100%" align="center" height="3px"><img src="images/bg.gif"></td>
        </tr> 
        <tr>
          <td   align="right" height="27" style="font-size:13px;" >点击次数:<%=m.getClick()%>&nbsp;&nbsp;更新时间:<%=m.getUtime()%></td> 
        </tr> 
        <%
        if(m.getMpic().indexOf("null")!=-1)
        {}else{%>
        	<tr> 
          <td  align="center"><img src="<%=m.getMpic()%>" width="430px" height="350px"></td> 
        </tr> 
        <%}%>
         <TR>
<TD height=20px></TD></TR>
<TR>
        <TR>
<TD class=biaoti32 height=20 colSpan=2 >简历摘要</TD></TR>
<TR>
<TD height=6 width=82><IMG src="images/bg2.gif" width=82 height=6></TD>
</TR> 
        <tr> 
          <td><%=m.getSummary()%></td> 	
        </tr> 
      <tr>  <TD height=15px></TD></TR>
<tr><TD class=biaoti32 height=20 colSpan=2 >模范介绍</TD></TR>
<TR>
<TD height=6 width=82><IMG src="images/bg2.gif" width=82 height=6></TD>
<TD background=images/bg3.gif width=615></TD></TR> 
        <tr> 
          <td><%=m.getContent()%></td> 	
        </tr> 
        <tr> 
          <td height="27" align="right">
        <a href="#" onClick="Jscript:history.back(); return false;" style="font-size:14px;" >返回</a></td> 
        </tr> 
        </table>
        </td></tr>
        </table>
        <jsp:include page="bottom.jsp"></jsp:include></div>
</body>
</html>
