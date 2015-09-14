<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="cn.model.Gffc" %>
<%@ page import="cn.core.*" %>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
<%if (!Crazyadept.UserIsOK(session)) return;
session.removeAttribute("error");
String action =request.getParameter("action").toString();
int gid=ParamUtils.getIntParameter(request,"gid");
BasetableFactory bf=BasetableFactory.getInstance();
if(action==null||"".equals(action)){
    return;
    }else if("add".equals(action)&&bf.CreateGffc(request)){
        response.sendRedirect("manage_gffc.jsp");
}else if("del".equals(action)&&bf.DeleteGffc("WHERE gid="+gid)){
        response.sendRedirect("manage_gffc.jsp");
        }else{       
        	session.setAttribute("error","在公告信息中操作失败");
        response.sendRedirect("error.jsp");
}
%>
