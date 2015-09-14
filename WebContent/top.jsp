<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<LINK rel=stylesheet href="cs/style.css" media=screen>
</HEAD>
<style type="text/css">
	*{
	margin:0;
	padding:0;
}
body{
	text-align:center;
	background-image:url(images/top_bg.gif);
	background-repeat:repeat-x;
}
.menu a{
	display:block;
	font-size:17px;
	font-family:Microsoft Yahei;
	width:143px;
	padding:3px 0;
	color:#FFFFFF;
	text-decoration: none;
}
.menu ul {
	width:1001px;
	text-align:center;
	list-style-type: none;
	margin:0 auto;
	margin-top:2px;
}

.menu ul li{
	float:left;
	background-color:#00669a;
	position:relative;
}

.menu ul li a:hover{ 
	background-color:#0e517b; 
}	
.menu ul li ul{
	position:absolute;
	top:27.5px;
	left:0;
	width:143px;
	z-index:1;
}

.menu ul li ul li{
	overflow: hidden;
	height:0;
	width:143px;
	-moz-transition: height 0.5s;
	-webkit-transition: height 0.5s;
	-o-transition: height 0.5s;
	-ms-transition: height 0.5s;
	transition: height 0.5s;
} 

.menu ul li:hover ul li{
	height:27px;

}
.menu ul li:hover ul { 
  	position:absolute;
	top:27.5px;
  	left:0; 
	width:143px;  
    z-index:1;
} 
.menu ul li ul li a { 
	display:block; 
	background-color:#F1F1F1;
	color:#00669a;
	} 
.menu ul li:hover ul li a { 
	display:block; 
	background-color:#F1F1F1;
	color:#00669a;

} 
.menu ul li:hover ul li a:hover{
	background:#00669a;
	color:#F1F1F1;
}
.clear{clear:both;}
.header-top{
	padding:10px;
}
.wrap{
	width:80%;
	margin:0 auto;
	-moz-transition:all .2s linear;
	-webkit-transition:all .2s linear; 
	-o-transition:all .2s linear; 
	-ms-transition:all .2s linear;
}
.logo {
	float: left;
	margin-top:8px;
}
.clear-right{
	clear:right;
}
.search_box {
	background-color: #FFF;
	border: 1px solid #CCC;
	-webkit-box-shadow: inset -4px 4px 5px rgba(0, 0, 0, 0.1);
	-moz-box-shadow: inset -4px 4px 5px rgba(0,0,0,0.1);
	box-shadow: inset -4px 4px 5px rgba(0, 0, 0, 0.1);
	-webkit-transition: border linear .2s, box-shadow linear .2s;
	-moz-transition: border linear .2s, box-shadow linear .2s;
	-o-transition: border linear .2s, box-shadow linear .2s;
	transition: border linear .2s, box-shadow linear .2s;
	position: relative;
	float: right;
	margin-top:20px;	
}
.search_box form input[type="text"] {
	border: none;
	outline: none;
	background: none;
	font-size: 0.8125em;
	color: #ACACAC;
	width: 150px;
	padding: 6px;
	-webkit-apperance: none;
}
.search_box form input[type="submit"] {
	border: none;
	cursor: pointer;
	background: url(images/search.png) no-repeat ;
	right: 0;
	width: 25px;
	height:25px;
	outline: none;
}
.time{
color:#dddddd;
float:right;
margin-top:50px;	
font-size:13px;
}
.clear-both{clear:both;}
.fnav {
	PADDING-TOP: 8px; LINE-HEIGHT: 20px;
	position:relative;
	float:right;
}
.fnav A {
	font-size:14px;
	 COLOR: #cccccc; PADDING-BOTTOM: 0px; 
	 PADDING-TOP: 0px; PADDING-LEFT: 7px; 
	 PADDING-RIGHT: 7px;
	 text-decoration:none;
}
</style>
</head>
<body>
<div class="container">
<div class="header">	
	<div class="header-top">
		<div class="wrap">
				<div class="logo">
					<img src="images/logo.png" alt="">
				</div>
				<div class="fnav">
				<a href="http://hjxpb.hhu.edu.cn/" target="_blank">旧版入口</a>
				<a href="javascript:void(0)" onClick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://gfs.hhu.edu.cn/');">设为首页</a>
				<a href="javascript:void(0)" onclick="addfavorite()" style="background:none;">加入收藏夹</a>
				</div>
				<div class="clear-right"></div> 
				<div class="search_box">
				<form>
				   <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
				   <input type="submit" value="">
			    </form>
			    </div>
			    <div class="clear-right"></div> 
			    <div class="time"><span>今天是：
			   <SCRIPT type=text/javascript>
                var time=new Date();
                var week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
                var timestr=time.getFullYear()+"年"+(time.getMonth()+1)+"月"+(time.getDate())+"日"+"&nbsp;"+week[time.getDay()];
                document.write(timestr);
               </SCRIPT> 
               </span>
			    </div>
			<div class="clear-both"></div> 
	    </div>
    </div>
<div class="menu">
<ul>
  <li><a href="index.jsp">首&nbsp;&nbsp;&nbsp;页</a></li>
  <li><a href="introduction.jsp">国防生简介&nbsp;∨</a>
  <ul>
  <li><a href="introduction.jsp">国防生简介</a></li>
  <li><a href="leader.jsp">现任领导</a></li>
  <li><a href="construction.jsp">机构设置</a></li>
  </ul>
  </li>
  <li><a href="list_lid.jsp?lid=1">招生选拔</a></li>
  <li><a href="list_lid.jsp?lid=10">学习生活&nbsp;∨</a>
  <ul>
  <li><a href="list_lid.jsp?lid=10">军政训练</a></li>
  <li><a href="list_lid.jsp?lid=20">学风建设</a></li>
  </ul>
  </li>
  <li><a href="list_lid.jsp?lid=2">新闻热点</a></li>
  <li><a href="list_seasoul.jsp?sx=2">杂志周刊&nbsp;∨</a>
  <ul>
  <li><a href="list_seasoul.jsp?sx=2">炮院涛声</a></li>
  <li><a href="list_seasoul.jsp?sx=1">海魂</a></li>
  <li><a href="list_seasoul.jsp?sx=0">海韵</a></li>
  </ul>
  </li>
  <li><a href="list_model.jsp">榜样风采</a></li>
</ul>
</div>
<div class="clear"></div>
</div>
</div>
</body>
</html>