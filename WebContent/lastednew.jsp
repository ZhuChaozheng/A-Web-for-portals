<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="cn.core.BasetableFactory" %>
<%@ page import="cn.model.New" %>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link href="css/new.css" rel="stylesheet" type="text/css">
<link href="css/top.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.4a2.min.js" type="text/javascript"></script>
<script src="js/jquery.KinSlideshow-1.2.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	$("#KinSlideshow").KinSlideshow({
		moveStyle:"down", 		//设置切换方向为向下 [默认向左切换]
        intervalTime:5,   		//设置间隔时间为8秒  [默认为5秒]
        mouseEvent:"mouseover",	//设置鼠标事件为“鼠标滑过切换”  [默认鼠标点击时切换]
        isHasTitleFont:true,
        titleFont:{TitleFont_size:11,TitleFont_family:"Verdana",TitleFont_weight:"bold",TitleFont_color:"#FFFFFF"}, //设置标题文字大小为14px，颜色：#FF000
	    titleBar:{titleBar_height:15,titleBar_bgColor:"#000000",titleBar_alpha:0.3}
});
})
</script>
<body>

<div id="KinSlideshow" style="visibility:hidden;">
<a href="gfswdy.jsp" target="_self">
<img src="images/gfswdy.jpg" alt="河海国防生微电影之《妈妈送我去当兵》" width="547px" height="317px" /></a>
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
</body>