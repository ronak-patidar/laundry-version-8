<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="CRUD.updateorder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id = (String) request.getParameter("id");
String status = (String) request.getParameter("status");

updateorder obj = new updateorder();
obj.uporder(id,status);
%>
<script type="text/javascript">
window.location.href="http://localhost:8080/Laundry24/customer_orders.jsp"
</script>

</body>
</html>