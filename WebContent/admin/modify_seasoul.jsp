<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="cn.model.SeaSoul" %>
<%@ page import="cn.core.*" %>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
<%if (!Crazyadept.UserIsOK(session)) return;
session.removeAttribute("error");
String action =request.getParameter("action").toString();
int ssid=ParamUtils.getIntParameter(request,"ssid");
BasetableFactory bf=BasetableFactory.getInstance();
if(action==null||"".equals(action)){
    return;
    }else if("add".equals(action)&&bf.CreateSeaSoul(request)){
        response.sendRedirect("manage_seasoul.jsp");
}else if("del".equals(action)&&bf.DeleteSeaSoul("WHERE ssid="+ssid)){
        response.sendRedirect("manage_seasoul.jsp");
        }else if("modify".equals(action)){
        SeaSoul ss=bf.SearchSeaSoul("WHERE ssid="+ssid);
        ss.setName(ParamUtils.getRequestString(request,"name"));
        ss.setLink(ParamUtils.getRequestString(request,"link"));
        response.sendRedirect("manage_seasoul.jsp");
}else{        session.setAttribute("error","在公告信息中操作失败");
        response.sendRedirect("error.jsp");
}
%>
