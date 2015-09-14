<%@ page contentType="text/html; charset=UTF-8" %>
<%session.removeAttribute("user");
session.invalidate();
response.sendRedirect("../index.jsp");%>