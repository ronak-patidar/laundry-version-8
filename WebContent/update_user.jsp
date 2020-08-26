<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="CRUD.updateuser"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String status = (String) request.getParameter("status");
String mobno = (String) request.getParameter("mobno");
System.out.println(status);
System.out.println(mobno);
updateuser obj = new updateuser();
obj.upuser(mobno,status);
%>
<script type="text/javascript">
window.location.href="http://localhost:8080/Laundry24/registered_users.jsp"
</script>
</body>
</html>