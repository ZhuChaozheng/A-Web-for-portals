<%@ page contentType="text/html;  charset=UTF-8" %>
<%@ page import="cn.core.BasetableFactory" %>
<%@ page import="cn.model.Admin" %>
<%@ page import="cn.core.*" %>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires",0);
response.setHeader("Pragma","no-cache");
String action =request.getParameter("action").toString();
String aid,password;
BasetableFactory bf=BasetableFactory.getInstance();
session.removeAttribute("error");
aid=ParamUtils.getRequestString(request,"aid");
if(action==null||"".equals(action)||aid==null||"".equals(aid)){
    return;
}else if("logon".equals(action)){
        password=ParamUtils.getRequestString(request,"password");
        session.removeAttribute("user");
        Admin u=bf.SearchAdmin("where aid='"+aid+"' and password='"+password+"'");
        if(u.getAid()==null){
            session.setAttribute("error","用户名或密码错误");
            response.sendRedirect("error.jsp");
        }
        else if(aid!=null&&!"".equals(aid)){
            session.setAttribute("user",u);
            response.sendRedirect("admin/index.jsp");
        }else{
            session.setAttribute("error","用户名或密码错误");
            response.sendRedirect("error.jsp");
        }
}else{
    return;
}
%>
