<%@page import="lidhja.Db_connection"%>
<%@page import="lidhja.Accountant"%>
<%@page import="CRUD_A.insertValuesAccountant"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="insert">
<form action="">
  <label>Emri</label>
  <input type="text" name="name" placeholder="Fut emrin" required>
  <br>
  <br>
  <label>Password</label> 
  <input type="password" name="pasword" placeholder="Fut password" required>
  <br>
  <br>
 <label>Email</label> 
  <input type="email" name="email" placeholder="Fut emailin" required>
  <br>
  <br>
  <label>Numri telefonit</label> 
  
  <input type="text" name="nr_tel"  placeholder="Fut numrin e telefonit" required>
  <br>
  <br>
  <button type="submit" class="button2">Regjistro</button>
 
</form> </div>



<%
		    insertValuesAccountant accountant = new insertValuesAccountant();
			String emriqefutiuseri = request.getParameter("name");
			String paswordqefutiuseri = request.getParameter("pasword");
			String emailqefutiuseri = request.getParameter("email");
			String numriqefutiuseri = request.getParameter("nr_tel");
			accountant.Insertvalues(emriqefutiuseri, paswordqefutiuseri, emailqefutiuseri,numriqefutiuseri );
%>

<a href = "DetAdminit.jsp"> Kthehu </a>

</body>
</html>