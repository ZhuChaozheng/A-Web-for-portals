<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="cn.model.New" %>
<%@ page import="cn.core.*" %>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
<%
String action =request.getParameter("action").toString();
int lyid=ParamUtils.getIntParameter(request,"lyid");
BasetableFactory bf=BasetableFactory.getInstance();
if(action==null||"".equals(action)){
    return;
    }else if("add".equals(action)&&bf.CreateLiuyan(request)){
        response.sendRedirect("../index.jsp");
}else if("del".equals(action)&&bf.DeleteLiuyan("WHERE lyid="+lyid)){
        response.sendRedirect("manage_liuyan.jsp");
}else{        session.setAttribute("error","在公告信息中操作失败");
        response.sendRedirect("error.jsp");
}
%>
