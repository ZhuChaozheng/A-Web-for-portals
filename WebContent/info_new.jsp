<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="cn.core.*" %>
<%@ page import="cn.model.New" %>
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
  <%int nid=ParamUtils.getIntParameter(request,"nid");
  BasetableFactory bf=BasetableFactory.getInstance();
  New n=bf.SearchNew("WHERE nid="+nid);
  n.setClick(n.getClick()+1);
%> 
<div id="container">
    <table>
    <tr> 
    <td class="tuijian" valign=top><jsp:include page="left.jsp"/></td>
    <td >
    <table width="650px" id="font1">
          <tr>
          <td  align="center" class="TableTitle1" style="font-size:20px;"><%=n.getTitle()%></td> 
        </tr>
        <tr>
        <td height="5px"></td>
        </tr> 
        <tr>
        <td  width="100%" align="center" height="3px"><img src="images/bg.gif"></td>
        </tr>
       
        <%
        if(n.getSource().equals(""))
        {}else{%>
         <tr > 
          <td height="27" align="right" style="font-size:13px;">来源于——<%=n.getSource()%></td></tr> 
        <%}%> 
        <tr>
          <td   align="right" height="27" style="font-size:13px;" >点击次数:<%=n.getClick()%>&nbsp;&nbsp;更新时间:<%=n.getUtime()%></td> 
        </tr> 
        <%
        if(n.getNpic().indexOf("null")!=-1||n.getNpic().equals(""))
        {}else{%>
        	<tr> 
          <td  align="center"><img src="<%=n.getNpic()%>" width="550px" height="380px"></td> 
        </tr> 
        <%}%> 
        <tr> 
          <td><%=n.getContent()%></td> 	
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
