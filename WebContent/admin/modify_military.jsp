<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="cn.model.New" %>
<%@ page import="cn.core.*" %>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
<%if (!Crazyadept.UserIsOK(session)) return;
session.removeAttribute("error");
String action =request.getParameter("action").toString();
int nid=ParamUtils.getIntParameter(request,"nid");
BasetableFactory bf=BasetableFactory.getInstance();
if(action==null||"".equals(action)){
    return;
    }else if("add".equals(action)&&bf.CreateNew(request)){
        response.sendRedirect("manage_military.jsp");
}else if("del".equals(action)&&bf.DeleteNew("WHERE nid="+nid)){
        response.sendRedirect("manage_military.jsp");
        }else if("modify".equals(action)){
        New n=bf.SearchNew("WHERE nid="+nid);
        n.setTitle(ParamUtils.getRequestString(request,"title"));
        n.setContent(ParamUtils.getRequestString(request,"content"));
        response.sendRedirect("manage_military.jsp");
}else{        session.setAttribute("error","在公告信息中操作失败");
        response.sendRedirect("error.jsp");
}
%>
