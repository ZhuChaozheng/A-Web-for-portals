<%@ page contentType="text/html; charset=GBK" %>
    <%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="cn.core.BasetableFactory" %>
<%@ page import="cn.model.Model" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/new.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
<table >
  <tr>
<td >
<div class="roundedRectangle">
<p>模范先锋</p>
</div>
</td>
<div id="j">
<a href="list_model.jsp?" style="color:#CDCDC1;font-size:18px;"
      onmouseover="this.style.color='#4A4A4A'"
      onmouseout="this.style.color='#A1A1A1'"
      target="_self">more</a>
</div>
</tr>
      <%
BasetableFactory bf=BasetableFactory.getInstance();
Collection coll=bf.ListModel("ORDER BY utime DESC");
if(coll==null||coll.size()<=0){%>
      <tr align="center">
        <td height="22">没有添加模范先锋</td>
      </tr>
      <%
}else{
        Iterator it=coll.iterator();
        while(it.hasNext()){
        	Model m=(Model)it.next();
%>
<tr>
<td >
<table width="150px">
<tr><td colspan="3" height="4px"></td></tr>
        <tr>
      <td height="15px">  <a href="info_model.jsp?mid=<%=m.getMid()%>"><h3><%=m.getName()%></h3></a></td></tr>
        <tr>
        <td height="24px"><%=m.getSummary()%></td>
      </tr>
    </table>
    </td>
    <td width="156px" align="center" valign="middle" >
        	<img src="<%=m.getMpic()%>" width="120px" height="100px">
        	</td>	
    </tr>
    <tr><td height="5px" colspan="2">
	  <hr size="1">
	  </td></tr>
    <%
    }
        }%>
    
    <tr>
    <td width="15" valign="top">&nbsp;</td>
  </tr>
    <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
</table>
</body>
</html>