<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<html xmlns:wb="http://open.weibo.com/wb">
<link href="css/bottom.css" rel="stylesheet" type="text/css" media="all" />
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
<!-- 首页计数 -->
<%   if(application.getAttribute("count")==null){ 
    	application.setAttribute("count",new Integer(0));
    	}
     Integer count=(Integer)application.getAttribute("count"); 
     application.setAttribute("count",new Integer(count.intValue()+1)); 
     count=(Integer)application.getAttribute("count");  
     %> 
<div class="footer">
	<div class="foot clearfix">
    	<div class="lsfs">
        	<h2>联系方式</h2>
            <ul>
            	<li>电话:025-83786279</li>
                <li>通信地址：南京市鼓楼区西康路一号</li>
            </ul>
            <div class="clear"></div>
        </div>
        <div class="weibo">
        	<h2>官方微博</h2>
            <div class="wbbtn"><wb:follow-button uid="3947193000" type="red_1" width="67" height="24" ></wb:follow-button></div>
        </div>
        <div class="fgnum">      
        <p>您是第
        <%
        int num=count.intValue();
        int s;
        String str="";
        while(num>0){
        	s=num%10;
        	num=num/10;
        	str=str+""+s;
        }	 
        for (int i=str.length()-1;i>=0;i--) 
        { 
            out.print("<span>"+str.charAt(i)+"</span>");
        }    
        %>位访客</p>
        </div>   
    </div>
    <div class="copyRight">© 2014 gfs.hhu.edu.cn 南京河海大学后备军官选培办公室<br>河海大学ICP D200246</div> 
</div>
</body>
</html>