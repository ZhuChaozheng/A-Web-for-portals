<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="cn.model.Model" %>
<%@ page import="cn.core.*" %>
<link href="../css/admin.css" rel="stylesheet" type="text/css">
<%if (!Crazyadept.UserIsOK(session)) return;
session.removeAttribute("error");
String action =request.getParameter("action").toString();
int mid=ParamUtils.getIntParameter(request,"mid");
BasetableFactory bf=BasetableFactory.getInstance();
if(action==null||"".equals(action)){
    return;
    }else if("add".equals(action)&&bf.CreateModel(request)){
        response.sendRedirect("manage_model.jsp");
}else if("del".equals(action)&&bf.DeleteModel("WHERE mid="+mid)){
        response.sendRedirect("manage_model.jsp");
        }else if("modify".equals(action)){
        Model m=bf.SearchModel("WHERE mid="+mid);
        m.setName(ParamUtils.getRequestString(request,"name"));
        m.setSummary(ParamUtils.getRequestString(request,"summary"));
        m.setContent(ParamUtils.getRequestString(request,"content"));
        response.sendRedirect("manage_model.jsp");
}else{        session.setAttribute("error","在公告信息中操作失败");
        response.sendRedirect("error.jsp");
}
%>
