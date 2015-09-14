<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="cn.core.BasetableFactory" %>
<%@ page import="cn.model.New" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
#left{
background:#ffffff;
}
.left td{
text-align:left;
font-size:9px;
}
.left a[title]{
 display: block;
 width:230px;/*对宽度的定义,根据情况修改*/
 overflow: hidden;
 white-space: nowrap;
 color: #000000; 
 text-overflow: ellipsis;
 font-size:14px;
 text-decoration:none;
 }
 p{
 font-weight:bold;
 align:center;
 color:#ffffff;
 }
 .biaoti31 {
}
</style>
</head>
<body>
<div id="left">
 <table width="248px">
 <tr>
 <td class="biaoti31" align="center" background="images/listbg.gif" height="30px">相关推荐</td></tr>
  <tr>
  <td>
    <table> 
      <% 
      BasetableFactory bf=BasetableFactory.getInstance();
      Collection coll=bf.ListNew(1000,"ORDER BY click DESC");
if(coll==null||coll.size()<=0){
%>
      <tr>
        <td height="25">没有内容推荐</td>
      </tr>
      <%
      }else{
    Iterator it=coll.iterator();
    int i=0;
	while(it.hasNext()){
        New n=(New)it.next();
%>
      <tr>
      <td width="3px" align="center">
      <img src="images/icon.gif" width="3px" height="3px"/></td>
      <td  width="10px"></td>
        <td class="left">
        <a href="info_new.jsp?nid=<%=n.getNid()%>" title="<%=n.getTitle()%>"><%=n.getTitle()%></a>
        </td>
      </tr>
      <%
      }}
      %>
       <tr>
        <td colspan="2" height="4px"></td>
     </tr>
    </table>
    </td>
  </tr>
</table>
</div>
</body>
</html>
