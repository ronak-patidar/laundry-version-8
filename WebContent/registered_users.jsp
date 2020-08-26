<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.http.*" %>
<%@page import= "java.io.IOException" %>
<%@page import= "java.io.PrintWriter" %>
<%@page import= "java.sql.*" %>
<%@page import= "common.DB_Connection1" %>

<%@page import= "javax.servlet.ServletException" %>
<%@page import= "javax.servlet.annotation.WebServlet" %>
<%@page import= "javax.servlet.http.HttpServlet" %>
<%@page import= "javax.servlet.http.HttpServletRequest" %>
<%@page import= " javax.servlet.http.HttpServletResponse" %>
<%@page import= "javax.servlet.http.HttpSession" %>
<%@page import= "javax.swing.JOptionPane" %>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "db";
String userid = "root";
String password = "Root@123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
String mobileno="";

%>
<!DOCTYPE html>
<html>
<body>

<h1>Registered Users</h1>
<table border="1">
<tr>
<td>Name</td>
<td>Email</td>
<td>MobileNo</td>
<td>Password</td>
<td>City</td>
<td>Address</td>
<td>Account_status</td>
<td>Update_to</td>
<td>Update</td>

</tr>
<%
String username=(String) session.getAttribute("username");

try{
	
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();


String sql ="select * from register1;";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("mobno") %></td>
<td><%=resultSet.getString("psw") %></td>
<td><%=resultSet.getString("city") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("Account_status") %></td>
<td>

 
 
 
 <form name="f1" method="get" action="#">
       <select name="status">
           <option value="active">active</option>
  		   <option value="block">block</option>
       </select>
     <input type="submit" name="submit" value="Lock Status"/>
 </form>
 
 </td>
   
     <% 
    	 String status=request.getParameter("status");
      %>


<td> <a href=" update_user.jsp?mobno=<%=resultSet.getString("mobno")%>&status=<%=status%> ">update</a> </td>


</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>