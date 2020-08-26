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


%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

 .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 200px;
  text-align: center;
  font-family: arial;
  width: 200px; 
  display: inline-block;
  padding: 25px;
  margin: 20px;
  padding-left: 75px;
  padding-right: 75px;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}
.b {
  text-decoration-line: underline;
  text-decoration-style: solid;
}
.text-block {
  position: absolute;
  bottom: 20px;
  right: 20px;
  background-color: black;
  color: white;
  padding-left: 20px;
  padding-right: 20px;
}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;

  background-size: 1500px 800px;
}
img {
  border-radius: 70%;
}
.buttonc {
  background-color: black; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}
.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}

.r {
  display: inline-block;
  border-radius: 4px;
  background-color: white;
  border: none;
  color: black;
  text-align: center;
  font-size: 20px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.r span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.r span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.r:hover span {
  padding-right: 25px;
}

.r:hover span:after {
  opacity: 1;
  right: 0;
}


.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

.bgimg{
    background-image:url('bgpc.jpg');
    background-size: 100% 100%;
    background-attachment: fixed;
    width: 100%;
    height: 486px;
}
.hd {
	padding-top: 1px;
	color: bold;
	font-size: 45px;
}

</style>
</head>
<body>
 

<div class="topnav">
  <a class="active" href="home1.jsp">Home</a>
   <%  if(session.getAttribute("username")==null)
 {
	 %>
     <a href="login.jsp">Login</a>
     <a href="register.jsp">Register</a>
 <%  }
  else{
	  %>
	  <a href="Logout">Logout</a>
	  <a href="Order.jsp">Orders</a>
	  <% }%> 

  
  <a href="#contact">Contact Us</a>
  <a href="#about">About Us</a>
  
  
  <% 
 
  if(session.getAttribute("user_type")!=null){
	  %>
	  
	  	 <a href="Admin.jsp">Manage</a>
	  	
	  <%} %>
 
</div>
<center>


<div class="bgimg">
				<div class="hd">
					<p>Laundry 24</p>
				</div>
	</div>


<br/><br/>

<br/><br/><br/><br/>
<form action="wash" method="post">
<div class="card">
  <img src="washFold.png" alt="Denim Jeans" style="width:70%">
  <h3>Wash & Fold</h3>
  <p><button name="washandfold">Order Now</button></p>
  <!-- <p><a href="clothes.jsp" style="text-decoration:none">Order Now</a></p> -->
</div>
</form>

<form action="wash" method="post">
<div class="card">
  <img src="washIron.png" alt="Denim Jeans" style="width:70%">
  <h3>Wash & Iron</h3>
  <p><button name="washandiron">Order Now</button></p>
</div>
</form>



<form action="wash" method="post">
<div class="card">
  <img src="ironing.png" alt="Denim Jeans" style="width:70%">
  <h3>Ironing</h3>
  <p><button name="iron">Order Now</button></p>
</div>
</form>



<br>
<form action="wash" method="post">
<div class="card">
  <img src="helmet.png" alt="Denim Jeans" style="width:70%">
  <h3>Helmet Cleaning</h3>
  <p><button name="helmet">Order Now</button></p>
</div>
</form>


<form action="wash" method="post">
<div class="card">
  <img src="shoes.png" alt="Denim Jeans" style="width:70%">
  <h3>Shoes Cleaning</h3>
  <p><button name="shoes">Order Now</button></p>
</div>
</form>


<form action="wash" method="post">
<div class="card">
  <img src="dryClean.jpg" alt="Denim Jeans" style="width:70%" height="130px">
  <h3>Dry Cleaning</h3>
  <p><button name="dryclean">Order Now</button></p>
</div>
</form>
<br>


<br>
<button class="buttonc button2">Contact Us: +91-9999999999</button>
</br></br>


</center>
</body>
</html>
