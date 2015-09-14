<%@ page contentType="text/html; charset=UTF-8" %>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires",0);
response.setHeader("Pragma","no-cache");
%>
<html>
<head>
<title>用户登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link href="css/new.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="images/ico/hhugfs.ico">
<title>河海大学国防生</title>
</head>
<body>
<jsp:include page="top.html"></jsp:include>
<form method="post" action="user_modify.jsp" name="forms"> 
        <div id="e">
        <table align="center"  id="customers"> 
          <tr> 
            <th height="26" colspan="2" align="center" >用户登录</th> 
          </tr>
          <tr>
            <td width="125px" height="27" align="center" >用户名：</td> 
            <td ><input name="aid" type="text" size="30"></td> 
          </tr> 
          <tr> 
            <td  width="125px" height="27" align="center" >密&nbsp;&nbsp;码：</td> 
            <td ><input name="password" type="password" size="30"></td> 
          </tr> 
          <tr> 
            <td height="27" colspan="2" align="center">
            <input name="Submit" type="submit" class="mybtn" onClick="return logons()" value="登录"> 
              <input type="hidden" value="logon" name="action" >&nbsp;&nbsp; 
            <input name="Submit2" type="button" class="mybtn" onClick="javascript:location.href='user_return.jsp'" value="找回密码"></td> 
          </tr> 
        </table> 
        </div>
    </form>
<div id="d"><jsp:include page="bottom.jsp"></jsp:include></div>
</body>
</html>
