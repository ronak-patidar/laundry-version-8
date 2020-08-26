<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>too title here</title>
</head>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body>

<h3>Registration</h3>

<div>
  <form action="registercheck.jsp">
    <label for="name">Name</label>
    <input type="text" id="name" name="name" placeholder="Name">

    <label for="email">Email</label>
    <input type="text" id="email" name="email" placeholder="Email">
   
    
    <label for="mobno">Mobile Number</label>
    <input type="text" id="mobno" name="mobno" placeholder="Mobile Number">    
    
    <label for="psw">Create Password</label>
    <input type="text" id="psw" name="psw" placeholder="Create Password">    
    
    <label for="repeat_psw">Repeat Password</label>
    <input type="text" id="repeat_psw" name="repeat_psw" placeholder="Repeat Password">    
    
    <label for="city">City</label>
    <select id="city" name="city">
     <option value="Indore">Indore</option>
      <option value="Prayagraj">Prayagraj</option>
      <option value="Delhi">Delhi</option>
      <option value="Bangalore">Bangalore</option>
      <option value="Pune">Pune</option>
      <option value="Hyderabad">Hyderabad</option>
      <option value="Mumbai">Mumbai</option>
     </select>
    
    
    <label for="address">Address</label>
    <input type="text" id="address" name="address" placeholder="Address">   

    <input type="submit" value="Submit">
  </form>
</div>


</body>
</html>