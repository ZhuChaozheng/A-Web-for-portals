<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="cn.core.BasetableFactory" %>
<%@ page import="cn.model.New" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
body,h1,h2,h3,h4,h5,h6,p,ul,ol,li,dl,dt,dd,input,textarea,button,form,select,option{
	margin:0;
	padding:0;
}
table, td{ border-spacing:0!important; padding:0; font-size:12px;}
body {
	font-family:"微软雅黑",Arial;
	font-size:12px;
	color:#666666;
	text-align:center;
}
#container{
	margin: 0 auto;
	width: 1000px;
}
#container { min-height:100%; text-align:left; background:#ffffff;}
ul.bjqs{
position:relative;
 list-style:none;
 padding:0;
 margin:0;
 overflow:hidden; 
 display:none;}
li.bjqs-slide{position:absolute; display:none; overflow:hidden; text-align:center;}
li.bjqs-slide img { width:100%; height:100%;}
li.bjqs-slide .ttbg { 
position:absolute; 
width:100%;
 height:40px;
  z-index:0;
   filter:alpha(opacity=40);
    opacity:0.4;
     background:#000;
      bottom:0;}
ul.bjqs-controls{list-style:none;margin:0;padding:0;z-index:9999;}
ul.bjqs-controls.v-centered li a{position:absolute;}
ul.bjqs-controls.v-centered li.bjqs-next a{right:0;}
ul.bjqs-controls.v-centered li.bjqs-prev a{left:0;}
ol.bjqs-markers{list-style: none; 
display:inline-block; position:absolute; right:10px; bottom:5px; height:30px;}
ol.bjqs-markers.h-centered{text-align:right;}
ol.bjqs-markers li{display:inline-block;
width:30px; height:30px; float:left; 
margin:0px 2px; background:#2b4968;filter:alpha(opacity=70); opacity:0.7;}
ol.bjqs-markers li.active-marker { background:#C00;filter:alpha(opacity=90); opacity:0.9;}
ol.bjqs-markers li a{display:inline-block; width:30px;
 height:30px;color:#fff; font-size:14px; font-weight:bold; 
 text-align:center; line-height:30px;}
ol.bjqs-markers li a:hover { color:#F00;}
p.bjqs-caption{display:block;position:absolute;
bottom:0; left:0; text-align:left; white-space:nowrap; 
width:360px; height:40px; line-height:40px; text-indent:1em; color:#fff; font-size:14px; overflow:hidden; text-overflow:ellipsis;}
a{
    color: #000000;
    text-decoration: none;
 	vertical-align: baseline;
 	outline: none;
 		zoom: 0;
 }
a:hover{text-decoration: none;}
.block{
 display: block;
 width:330px;/*对宽度的定义,根据情况修改*/
 overflow: hidden;
 white-space: nowrap;
 color: #000000; 
 text-overflow: ellipsis;
 font-size:14px;
 text-decoration:none;
}
.clink a {
	font-size:13px;
	font-weight: normal;
	color:#FFFFFF;
}
.clink a:hover{
	font-size:13px;
	font-weight:normal;
	color:#CCCCCC;
}
.clink div {
	
	color:#FFFFFF;
}	  
</style>
<script src="js/jquery-1.4a2.min.js" type="text/javascript"></script>
<script src="js/jquery.KinSlideshow-1.2.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	$("#KinSlideshow").KinSlideshow({
		moveStyle:"down", 		//设置切换方向为向下 [默认向左切换]
        intervalTime:5,   		//设置间隔时间为8秒  [默认为5秒]
        mouseEvent:"mouseover",	//设置鼠标事件为“鼠标滑过切换”  [默认鼠标点击时切换]
        isHasTitleFont:true,
        titleFont:{TitleFont_size:15,TitleFont_family:"Arail",TitleFont_weight:"bold",TitleFont_color:"#FFFFFF"}, //设置标题文字大小为14px，颜色：#FF000
	    titleBar:{titleBar_height:30,titleBar_bgColor:"#000000",titleBar_alpha:0.7}
});
})
</script>
</head>
<body>
<div id="container">
<div >
<table width="1000" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td width="547" height="317">
    <div id="KinSlideshow" style="visibility:hidden;">
<% 
      BasetableFactory bf=BasetableFactory.getInstance();
      Collection coll1=bf.ListNew("where isDynamic=1 ORDER BY utime DESC");
if(coll1==null||coll1.size()<=0){
%>
       <tr>
        <td height="25">没有添加新闻</td>
      </tr>
      <%
      }else{
    Iterator it1=coll1.iterator();
    int i=0;
	while(it1.hasNext()){
        New n1=(New)it1.next();
%>
<a href="info_new.jsp?nid=<%=n1.getNid()%>" target="_self"><img src="<%=n1.getNpic() %>" alt="<%=n1.getTitle() %>" width="547px" height="317px" /></a>
         <%}}%>
    </div>
    </td>
    
    <td width="453" background="images/bg4.gif" valign="top">
    <table width="100%" height="63" border="0" cellspacing="0" cellpadding="0">
      <tbody><tr>
        <td height="60"></td>
      </tr>
    </tbody></table>
  <table width="453" class="clink" border="0" cellspacing="0" cellpadding="0">
  <tbody>
  <% 
  Collection coll=bf.ListNew(1000,"where bid=0 ORDER BY utime DESC");
  if(coll==null||coll.size()<=0){
%>
<tr>
        <td height="25">没有添加新闻</td>
      </tr>
      <%
      }else{
    Iterator it=coll.iterator();
    int i=0;
	while(it.hasNext()){
        New n=(New)it.next();
        String ltime=n.getUtime();
        String stime=ltime.substring(0,10);
%>
  <tr>
    <td width="31" height="27"></td>
    <td width="391">
    <table width="100%" class="clink" border="0" cellspacing="0" cellpadding="0">
    <tbody>
    <tr><td align="left" class="block">
    <a title="<%=n.getTitle() %>" class="clink" href="info_new.jsp?nid=<%=n.getNid()%>" target="_self"><%=n.getTitle() %></a></td>
    <td width="50" align="right">
    <div style="white-space: nowrap;"><%=stime %></div></td></tr></tbody></table></td>
     <td width="31" height="27"></td>
  </tr>
    <%
      }}
      %>
</tbody></table>
  <table width="453" class="clink" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td width="345" height="27"></td>
    <td width="77"><div align="right"><a href="list_bid.jsp?bid=0" target="_blank"><img src="images/more.gif" border="0"></a></div></td>
     <td width="31" height="27"></td>
  </tr>
</tbody>
</table>
    </td>
  </tr>
</tbody></table>
</div></div>
</body>
</html>

    	
    	
