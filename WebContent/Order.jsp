<%@page import="com.mysql.cj.Session"%>
<%@page import="org.apache.catalina.util.SessionIdGeneratorBase"%>
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
String OrderNo="";

%>
<!DOCTYPE html>
<html>
<body>

<h1>My orders</h1>

<table border="1">
<h3>Order_Clothes</h3>
<tr>
<td>OrderNo.</td>
<td>Service</td>
<td>Shirts</td>
<td>Tshirts</td>
<td>Jeans</td>
<td>Trousers</td>
<td>Sarees</td>
<td>Pickupdate</td>
<td>Pickuptime</td>
<td>Total_Amount</td>
<td>Status</td>
<td>Edit</td>
<td>Cancel</td>
</tr>
<%
String username=(String) session.getAttribute("username");

try{
	
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

Statement stmt =connection.createStatement();
String query1= "select mobno from register1 where name='"+username+"';";
ResultSet rs =stmt.executeQuery(query1);
if(rs.next()) {
	mobileno=rs.getString(1);
}


String sql ="select * from orderclothes1 where mobno='"+mobileno+"';";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	  OrderNo=  resultSet.getString("OrderNo");
	
	%>
<tr>
<td><%=resultSet.getString("OrderNo") %></td>
<td><%=resultSet.getString("service") %></td>
<td><%=resultSet.getString("shirts") %></td>
<td><%=resultSet.getString("tshirts") %></td>
<td><%=resultSet.getString("jeans") %></td>
<td><%=resultSet.getString("trousers") %></td>
<td><%=resultSet.getString("sarees") %></td>
<td><%=resultSet.getString("pickupdate") %></td>
<td><%=resultSet.getString("pickupt") %></td>
<td><%=resultSet.getString("totalamount") %></td>
<td><%=resultSet.getString("status") %></td>
<td><form action="edit.jsp">


<input type="submit" value="Edit">
</form></td>



<%  if(resultSet.getString("status").equals("done") || resultSet.getString("status").equals("processing") )
 {
	 %>
     <td><a>NA</a></td>
 <%  }
  else{
	  %>
	 <td><a href="delete_order.jsp?id=<%=resultSet.getString("OrderNo")%>">cancel</a></td>
	  <% }%> 


<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
<h3>Order_Others</h3>
<table border="1">

<tr>
<td>OrderNo.</td>
<td>Service</td>
<td>Helmet</td>
<td>Shoes</td>
<td>Pickupdate</td>
<td>Pickuptime</td>
<td>Total_Amount</td>
<td>Current_Staus</td>
<td>Edit</td>
<td>Cancel</td>
</tr>
<%
String username1=(String) session.getAttribute("username");

try{
	
	
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

Statement stmt =connection.createStatement();
String query1= "select mobno from register1 where name='"+username1+"';";
ResultSet rs =stmt.executeQuery(query1);
if(rs.next()) {
	mobileno=rs.getString(1);
}


String sql ="select * from orderothers1 where mobno='"+mobileno+"';";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	
	OrderNo =  resultSet.getString("OrderNo");
	String pickupdate=  resultSet.getString("pickupdate");
%>
<tr>
<td><%=resultSet.getString("OrderNo") %></td>
<td><%=resultSet.getString("service") %></td>
<td><%=resultSet.getString("helmet") %></td>
<td><%=resultSet.getString("shoes") %></td>
<td><%=resultSet.getString("pickupdate") %></td>
<td><%=resultSet.getString("pickupt") %></td>
<td><%=resultSet.getString("totalamount") %></td>
<td><%=resultSet.getString("status") %></td>


<td><form action="book.jsp" method="post">


<input type="submit" value="Edit">
</form></td>


<%  if(resultSet.getString("status").equals("done") || resultSet.getString("status").equals("processing") )
 {
	 %>
     <td><a>NA</a></td>
 <%  }
  else{
	  %>
	 <td><a href="delete_order.jsp?id=<%=resultSet.getString("OrderNo")%>">cancel</a></td>
	  <% }%> 







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