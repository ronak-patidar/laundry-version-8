<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="CRUD.delete_ord"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id = (String) request.getParameter("id");
delete_ord obj_delete_order = new delete_ord();
obj_delete_order.Delete_ord(id);
%>
<script type="text/javascript">
window.location.href="http://localhost:8080/Laundry24/Order.jsp"
</script>

</body>
</html>