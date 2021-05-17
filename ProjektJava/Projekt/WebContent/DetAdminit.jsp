<%@page import="lidhja.Db_connection"%>
<%@page import="lidhja.Admin"%>
<%@page import="CRUD_A.Check"%>
<%@page import="CRUD_A.insertValuesA"%>
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
<div class="DetAdminit">

	<form action="insert.jsp">

		<button type="submit" class="button1">SHTO ACCOUNTANT</button>

	</form>
	
	<form action="select.jsp">

		<button type="submit" class="button1">SHIH ACCOUNTANT</button>
		
	</form>
	
	<form action="Main.jsp">

		<button type="submit" class="button1">DIL</button>

	</form>

</div>

</body>
</html>