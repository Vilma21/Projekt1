<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="lidhja.Db_connection"%>
<%@page import="lidhja.Admin"%>
<%@page import="CRUD_A.insertValuesA"%>
<%@page import="CRUD_A.Check"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body >
<div class="permbajtja">
<h1>Ndertimi i nje aplikacioni WEB ne gjuhen "Java". Tipet e perdoruesve qe mund te kene te drejten e aksesimit te ketij aplikacioni jane : Administratori/ja dhe Sekretari/ja </h1>
</div>
<nav>Cfare mund te beje Administratori?
<ul>
<li>Shto Sekretare</li>
<li>Shiko Sekretare</li>
</ul></nav>
  
 <nav>Cfare mund te beje Administratori?
<ul>
<li>Shto Studente</li>
<li>Shiko Studente</li>
<li>Ndysho Studente</li>
<li>Shiko Studente qe kane detyrime monetare te papaguara</li>
</ul></nav>
  

<div class="logimi">
<form action="login" method="post">
<p>
 <label> Emri</label>
  <input type="text" name="name" placeholder="Vendos emrin" required>
  <br>
  <br>
  <label>Fjalekalimi</label>
  <input type="password" name="password" placeholder="Vendos fjalekalimin" required>
  <br><br>
  <button type="submit" name="log" class="button">Hyr</button>
  

</form> 
</div>
</body>
</html>