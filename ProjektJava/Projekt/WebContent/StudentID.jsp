
<%@page import="lidhja.Db_connection"%>
<%@page import="lidhja.Student"%>
<%@page import="CRUD_A.EditStudent"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body >

<a href = "DetAccount.jsp"> Kthehu </a>
<div class="insert">
<form action="NdryshoStID.jsp">

 <label>ID</label> 
  <input type="text" name="ID"  placeholder="Fut ID" required>
  <br>
  <br>
  
  <button type="submit" class="button1">DERGO ID</button>

</form>

</div>


</body>
</html>