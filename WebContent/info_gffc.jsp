<%@ page contentType="text/html; charset=UTF-8" %>
<HTML>
<HEAD>
<TITLE>河海大学国防生</TITLE>
<LINK rel=stylesheet type=text/css href="cs/list.css">
<LINK rel=stylesheet href="cs/style.css" media=screen>
<style type="text/css">
.nconwrap {
	OVERFLOW: hidden; WIDTH: 710px;
}
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
 .black_overlay{
   display: none;
   position: fixed;
   width:100%;
   height:100%;
   top:0;
   left:0;
   background-repeat:repeat-y;
   background-color: black;
   z-index:1;
   -moz-opacity: 0.9;
   opacity:.9;
   filter: alpha(opacity=90);
  }
  .white_content {
   display: none;
   position: absolute;
   top: 15%;
   left: 25%;
   border: 10px solid #FFF;
   background-color: white;
   z-index:2;
  }
 .return{
 margin-left:650px;
 margin-top:5px;
	FONT-SIZE: 14px; 
	width:38px;
	HEIGHT: 16px; 
	  BACKGROUND: #db6666;
	   COLOR: #fff; 
}
</style>
<script type="text/javascript">
 function button(id){
	 document.getElementById('light').style.display='block';
	 document.getElementById('fade').style.display='block';
	 var img=document.getElementById(""+id).src;
	 var img2=document.getElementById('picture');
	 img2.src=img;
 }
 function button_close(){
	 document.getElementById('light').style.display='none';
	 document.getElementById('fade').style.display='none';
 }
</script>
</HEAD>
<BODY>
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
<TD class=biaoti31 align=center>国防风采</TD></TR></TBODY></TABLE></TD></TR>
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
<TD class=biaoti32 style="PADDING-LEFT: 15px" height=30><A href="info_gffc.jsp?" target=_self>国防风采</A></TD></TR>
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
<A title=国防风采 href="info_gffc.jsp">国防风采</A></TD></TR>
<TR>
<TD height=10 colSpan=2></TD></TR>
<TR>
<TD class=biaoti32 height=30 colSpan=2>国防风采</TD></TR>
<TR>
<TD height=6 width=82><IMG src="images/bg2.gif" width=82 height=6></TD>
<TD background=images/bg3.gif width=615></TD></TR>
<TR>
<TD height=15 colSpan=2></TD></TR>
<TR>
<TD colSpan=2>
<TABLE >
<TBODY>
<DIV class="nconwrap clearfix">
<DIV class=fglist >
<UL class=clearfix >
<LI><a href = "#" onclick ="button('images1')"><img id="images1" src="images/ima1.JPG" width="180" height="120"/><SPAN>军歌嘹亮</SPAN></a></LI>
<LI><a href = "#" onclick ="button('images2')"><img id="images2" src="images/ima2.JPG" width="180" height="120"/><SPAN>校庆合唱</SPAN></a></LI>
<LI><a href = "#" onclick ="button('images3')"><img id="images3" src="images/ima3.JPG" width="180" height="120"/><SPAN>打靶射击</SPAN></a></LI>
<LI><a href = "#" onclick ="button('images4')"><img id="images4" src="images/ima4.JPG" width="180" height="120"/><SPAN>队列训练</SPAN></a></LI>
<LI><a href = "#" onclick ="button('images5')"><img id="images5" src="images/ima5.JPG" width="180" height="120"/><SPAN>升旗仪式</SPAN></a></LI>
</UL></DIV></DIV>
</TBODY></TABLE></TD></TR></TBODY></TABLE>
</TD></TR>
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
<div id="light" class="white_content">
  <img id="picture" src="" width="690" height="460"/>
 <div class="return">
<a href = "javascript:void(0)" onclick = "button_close()">close</a></div></div>
<div id="fade" class="black_overlay"></div>
</BODY></HTML>