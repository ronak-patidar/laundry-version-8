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
  width: 20%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=number], select {
  width: 20%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 20%;
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
<%
     if(session.getAttribute("username")==null){
    	 response.sendRedirect("login.jsp");
     }
%>

<script>
function washandfold(){
	   let p=document.getElementById("shirts").value;
	   let q=document.getElementById("tshirts").value;
	   let r=document.getElementById("jeans").value;
	   let s=document.getElementById("trousers").value;
	   let t=document.getElementById("sarees").value;
	   let a=((p*10)+(q*5)+(r*15)+(s*20)+(t*50));
	   let d=Math.floor(a);
	      document.getElementById("amounttobepaid").value = d ;
	}
	
function washandiron(){
	   let p=document.getElementById("shirts").value;
	   let q=document.getElementById("tshirts").value;
	   let r=document.getElementById("jeans").value;
	   let s=document.getElementById("trousers").value;
	   let t=document.getElementById("sarees").value;
	   let a=((p*15)+(q*8)+(r*25)+(s*25)+(t*75));
	   let d=Math.floor(a);
	      document.getElementById("amounttobepaid").value = d ;
	}
	
function iron(){
	   let p=document.getElementById("shirts").value;
	   let q=document.getElementById("tshirts").value;
	   let r=document.getElementById("jeans").value;
	   let s=document.getElementById("trousers").value;
	   let t=document.getElementById("sarees").value;
	   let a=((p*5)+(q*3)+(r*8)+(s*10)+(t*20));
	   let d=Math.floor(a);
	      document.getElementById("amounttobepaid").value = d ;
	}
	
	
function helmet(){
	   let p=document.getElementById("chelmet").value;
	  
	   let a=(p*100);
	   let d=Math.floor(a);
	      document.getElementById("amounttobepaid").value = d ;
	}
	
function shoes(){
	   let p=document.getElementById("cshoes").value;
	  
	   let a=((p*100));
	   let d=Math.floor(a);
	      document.getElementById("amounttobepaid").value = d ;
}
	
	
function dryclean(){
	   let p=document.getElementById("shirts").value;
	   let q=document.getElementById("tshirts").value;
	   let r=document.getElementById("jeans").value;
	   let s=document.getElementById("trousers").value;
	   let t=document.getElementById("sarees").value;
	   let a=((p*50)+(q*40)+(r*80)+(s*100)+(t*150));
	   let d=Math.floor(a);
	      document.getElementById("amounttobepaid").value = d ;
	}
	



</script>
<%
if(session.getAttribute("washandfold")!=null){
%>
<h3>Wash and Fold......</h3>

<div>
  <form action="clothes_servlet" method="POST">
    <label for="shirts">Shirts (10 RS)</label><br/>
    <input type="number" id="shirts" name="shirts" onkeyup="washandfold()" onchange="washandfold()" placeholder="0" min="0"><br/>
    
     <label for="tshirt">T-Shirts (5 RS)</label><br/>
    <input type="number" id="tshirts" name="tshirts" onkeyup="washandfold()" onchange="washandfold()" placeholder="0" min="0"><br/>
    
     <label for="jeans">Jeans (15 RS)</label><br/>
    <input type="number" id="jeans" name="jeans" onkeyup="washandfold()" onchange="washandfold()" placeholder="0" min="0"><br/>
    
     <label for="trousers">Trousers (20 RS)</label><br/>
    <input type="number" id="trousers" name="trousers" onkeyup="washandfold()" onchange="washandfold()" placeholder="0" min="0"><br/>
    
     <label for="sarees">Sarees (50 RS)</label><br/>
    <input type="number" id="sarees" name="sarees" onkeyup="washandfold()" onchange="washandfold()" placeholder="0" min="0"><br/>
     
     <label for="amounttobepaid"><h4>Amount to be paid...</h4></label>
    <input type="text" id="amounttobepaid" name="amounttobepaid" placeholder="0" readonly/><br/>
    
  
    <input type="submit" value="Submit">
  </form>
</div>
<%
}
else if(session.getAttribute("washandiron")!=null){
	%>
	<h3>Wash and Iron......</h3>
	<div>
  <form action="clothes_servlet" method="post">
    <label for="shirts">Shirts(15 RS)</label><br/>
    <input type="number" id="shirts" name="shirts" onkeyup="washandiron()" onchange="washandiron()" placeholder="0" min="0"><br/>
    
     <label for="tshirt">T-Shirts(8 RS)</label><br/>
    <input type="number" id="tshirts" name="tshirts" onkeyup="washandiron()" onchange="washandiron()" placeholder="0" min="0"><br/>
    
     <label for="jeans">Jeans(20 RS)</label><br/>
    <input type="number" id="jeans" name="jeans" onkeyup="washandiron()" onchange="washandiron()" placeholder="0" min="0"><br/>
    
     <label for="trousers">Trousers(25 RS)</label><br/>
    <input type="number" id="trousers" name="trousers" onkeyup="washandiron()" onchange="washandiron()" placeholder="0" min="0"><br/>
    
     <label for="sarees">Sarees(75 RS)</label><br/>
    <input type="number" id="sarees" name="sarees" onkeyup="washandiron()" onchange="washandiron()" placeholder="0" min="0"><br/>
     
     <label for="amounttobepaid"><h4>Amount to be paid...</h4></label>
    <input type="text" id="amounttobepaid" name="amounttobepaid" placeholder="0" readonly/><br/>
    
  
    <input type="submit" value="Submit">
  </form>
</div>
	
<%

}

else if(session.getAttribute("iron")!=null){
%>
<h3> Ironing......</h3>
	<div>
  <form action="clothes_servlet" method="post">
    <label for="shirts">Shirts(5 RS)</label><br/>
    <input type="number" id="shirts" name="shirts" onkeyup="iron()" onchange="iron()" placeholder="0" min="0"><br/>
    
     <label for="tshirt">T-Shirts(3 RS)</label><br/>
    <input type="number" id="tshirts" name="tshirts" onkeyup="iron()" onchange="iron()" placeholder="0" min="0"><br/>
    
     <label for="jeans">Jeans(8 RS)</label><br/>
    <input type="number" id="jeans" name="jeans" onkeyup="iron()" onchange="iron()" placeholder="0" min="0"><br/>
    
     <label for="trousers">Trousers(10 RS)</label><br/>
    <input type="number" id="trousers" name="trousers" onkeyup="iron()" onchange="iron()" placeholder="0" min="0"><br/>
    
     <label for="sarees">Sarees(20 RS)</label><br/>
    <input type="number" id="sarees" name="sarees" onkeyup="iron()" onchange="iron()" placeholder="0" min="0"><br/>
     
     <label for="amounttobepaid"><h4>Amount to be paid...</h4></label>
    <input type="text" id="amounttobepaid" name="amounttobepaid" placeholder="0" readonly/><br/>
    
  
    <input type="submit" value="Submit">
  </form>
</div>
<% }

else if(session.getAttribute("helmet")!=null){
%>
<h3> Helmet......</h3>
	<div>
  <form action="clothes_servlet" method="post">
    <label for="chelmet">Helmet(100 RS)</label><br/>
    <input type="number" id="chelmet" name="chelmet" onkeyup="helmet()" onchange="helmet()" placeholder="0" min="0"><br/>
    
        <label for="amounttobepaid"><h4>Amount to be paid...</h4></label>
    <input type="text" id="amounttobepaid" name="amounttobepaid" placeholder="0" readonly/><br/>
    <input type="submit" value="Submit">
  </form>
</div>
<%} 
else if(session.getAttribute("shoes")!=null){
%>
<h3> Shoes......</h3>
	<div>
  <form action="clothes_servlet" method="post">
    <label for="cshoes">Shoes(100 RS)</label><br/>
    <input type="number" id="cshoes" name="cshoes" onkeyup="shoes()" onchange="shoes()" placeholder="0" min="0"><br/>
     
        <label for="amounttobepaid"><h4>Amount to be paid...</h4></label>
    <input type="text" id="amounttobepaid" name="amounttobepaid" placeholder="0" readonly/><br/>
    <input type="submit" value="Submit">
  </form>
</div>
<%}
else if(session.getAttribute("dryclean")!=null){
	
%>
<h3>Dry Cleaning......</h3>

<div>
  <form action="clothes_servlet" method="post">
    <label for="shirts">Shirts(50 RS)</label><br/>
    <input type="number" id="shirts" name="shirts" onkeyup="dryclean()" onchange="dryclean()" placeholder="0" min="0"><br/>
    
     <label for="tshirt">T-Shirts(40 RS)</label><br/>
    <input type="number" id="tshirts" name="tshirts" onkeyup="dryclean()" onchange="dryclean()" placeholder="0" min="0"><br/>
    
     <label for="jeans">Jeans(80 RS)</label><br/>
    <input type="number" id="jeans" name="jeans" onkeyup="dryclean()" onchange="dryclean()" placeholder="0" min="0"><br/>
    
     <label for="trousers">Trousers(100 RS)</label><br/>
    <input type="number" id="trousers" name="trousers" onkeyup="dryclean()" onchange="dryclean()" placeholder="0" min="0"><br/>
    
     <label for="sarees">Sarees(150 RS)</label><br/>
    <input type="number" id="sarees" name="sarees" onkeyup="dryclean()" onchange="dryclean()" placeholder="0" min="0"><br/>
     
     <label for="amounttobepaid"><h4>Amount to be paid...</h4></label>
    <input type="text" id="amounttobepaid" name="amounttobepaid" placeholder="0" readonly/><br/>
    
  
    <input type="submit" value="Submit">
  </form>
</div>
<%} %>

</body>
</html>