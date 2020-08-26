<%@page import="CRUD.Regitster_insert"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>too title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobno=request.getParameter("mobno");
String psw=request.getParameter("psw");
String repeat_psw=request.getParameter("repeat_psw");
String city=request.getParameter("city");
String address=request.getParameter("address");
String account_status="active";

Regitster_insert obj_Register_insert=new Regitster_insert();
obj_Register_insert.insert_value(name, email, mobno, psw, repeat_psw, city, address,account_status);
response.sendRedirect("home1.jsp");
%>

</body>
</html>