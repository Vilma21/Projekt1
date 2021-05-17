<%@page import="lidhja.Db_connection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="lidhja.Student"%>
<%@page import="CRUD_A.ViewStudents"%>
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

<a href = "DetAccount.jsp"> Kthehu </a>

<%
		ViewStudents shfaqVlerat =  new ViewStudents();
		List<Student> listaStudenteve = shfaqVlerat.merrVlerat();
		Iterator<Student> Iterator = listaStudenteve.iterator();
%>
		
<table>
<tr>
<th> ID</th><th> Emri</th><th> Email</th><th> Kursi</th><th> Tarifa</th><th> Paguar</th><th> Detyrime</th><th> Adresa</th><th> Qyteti</th><th> Shteti</th><th> Rajoni</th><th> Numri telefonit</th>
</tr>
      <% 
		while(Iterator.hasNext()){
			Student st1 = new Student();
			st1 = Iterator.next();
		%>
<tr> 
			<td><%= st1.getID()   %></td>
			<td><%= st1.getName()   %></td>
			<td><%= st1.getEmail()  %></td>
			<td><%= st1.getCourse() %></td>
			<td><%= st1.getFee()  %></td>
			<td><%= st1.getPaid()   %></td>
			<td><%= st1.getDue()   %></td>
			<td><%= st1.getAddress()  %></td>
			<td><%= st1.getCity() %></td>
			<td><%= st1.getState() %></td>
			<td><%= st1.getCountry()  %></td>
			<td><%= st1.getContactNumber() %></td>
			
			
<%
		}
%>
</tr>
</table>



</body>
</html>