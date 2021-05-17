<%@page import="lidhja.Db_connection"%>
<%@page import="lidhja.Accountant"%>
<%@page import="lidhja.Student"%>
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
<form action="InsertStudent.jsp">

<button type="submit" class="button1">SHTO STUDENT</button>

</form>

<form action="ViewStudent.jsp">

<button type="submit" class="button1">SHIKO STUDENT</button>

</form>

<form action="StudentID.jsp">

<button type="submit" class="button1">NDRYSHO STUDENT</button>

</form>

<form action="DueFee.jsp">

<button type="submit" class="button1">DETYRIME MONETARE</button>
</form>

<form action="Main.jsp">
<button type="submit" class="button1">DIL</button>

</form>


</div>




</body>
</html>