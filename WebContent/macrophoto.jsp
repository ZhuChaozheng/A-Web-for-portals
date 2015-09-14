<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title>µã»÷Í¼Æ¬·Å´ó</title>
  <style type="text/css">
  body{
    font-size:11px; 
   font-family:Verdana, Arial, Helvetica, sans-serif;
  }
  a{color:#000; text-decoration:none;}
  .img{border:0px;}
  .black_overlay{
   display: none;
   position: absolute;
   top: 0%;
   left: 0%;
   width: 100%;
   height: 100%;
   background-color: black;
   z-index:1001;
   -moz-opacity: 0.8;
   opacity:.80;
   filter: alpha(opacity=80);
  }
  .white_content {
   display: none;
   position: absolute;
   top: 15%;
   left: 25%;
   width: 610px;
   height: 460px;
   border: 16px solid #FFF;
   border-bottom:none;
   background-color: white;
   z-index:1002;
   overflow: auto;
  }
 </style>
 </head>
<body>
 <p><a href = "#" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
 <img src="images/44.jpg" width="100" height="89"/></a></p>
  <div id="light" class="white_content"><img src="images/44.jpg"/> <a href = "javascript:void(0)" 
  onclick = "document.getElementById('light').style.display='none';document.getElementById
('fade').style.display='none'">Close</a></div>
  <div id="fade" class="black_overlay"></div>
</body>
</html>