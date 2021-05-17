<%@page import="lidhja.Db_connection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="lidhja.Accountant"%>
<%@page import="CRUD_A.SelectValuesAccountant"%>
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
<a href = "DetAdminit.jsp"> Kthehu </a>
<div class="select">
<%
		SelectValuesAccountant shfaqVlerat =  new SelectValuesAccountant();
		List<Accountant> listaAccount = shfaqVlerat.merrVlerat();
		Iterator<Accountant> Iterator = listaAccount.iterator();
%>
		
<table>
<tr>
<th> ID</th><th> Emri</th><th> Password</th><th> Email</th><th> Numri telefonit</th>
</tr>
		<%
		while(Iterator.hasNext()){
			Accountant acc1 = new Accountant();
			acc1 = Iterator.next();
		%>
<tr> 
			<td><%= acc1.getID()   %></td>
			<td><%= acc1.getName()   %></td>
			<td><%= acc1.getPasword()  %></td>
			<td><%= acc1.getEmail()  %></td>
			<td><%= acc1.getNr_tel()  %></td>	
<%
		}
%>
</tr>
</table>	

</div>
</body>
</html>