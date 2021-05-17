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
<body>
<a href = "DetAccount.jsp"> Kthehu </a>
<%
String vleraZgjedhur = request.getParameter("ID");
EditStudent update = new EditStudent();
Student sst = update.merrVleren(vleraZgjedhur);
%>
<div class="insert">
<form action="EditControllerStudent.jsp">
<label>ID</label>
  <input type="text" name="ID" value="<%=sst.getID()%>" required>
  <br>
  <br>
<label>Emri</label>
  <input type="text" name="name" value="<%=sst.getName()%>" required>
  <br>
  <br>
 <label>Email</label> 
  <input type="email" name="email" value="<%=sst.getEmail()%>" required>
  <br>
  <br>
  <label>Kursi</label> 
  <input type="text" name="course"  value="<%=sst.getCourse()%>" required>
  <br>
  <br>
  <label>Tarifa</label> 
  <input type="number" name="fee"  value="<%=sst.getFee()%>" required>
  <br>
  <br>
  <label>Paguar</label> 
  <input type="number" name="paid"  value="<%=sst.getPaid()%>" required>
  <br>
  <br>
  <label>Detyrime</label> 
  <input type="number" name="due"  value="<%=sst.getDue()%>" required>
  <br>
  <br>
  <label>Adresa</label> 
  <input type="text" name="address"  value="<%=sst.getAddress()%>" required>
  <br>
  <br>
  <label>Qyteti</label> 
  <input type="text" name="city"  value="<%=sst.getCity()%>" required>
  <br>
  <br>
  <label>Shteti</label> 
  <input type="text" name="state"  value="<%=sst.getState()%>" required>
  <br>
  <br>
   <label>Rajoni</label> 
  <input type="text" name="country"  value="<%=sst.getCountry()%>" required>
  <br>
  <br>
   <label>Numri telefonit</label> 
  <input type="text" name="number"  value="<%=sst.getContactNumber()%>" required>
  <br>
  <br>
  
  <button type="submit" class="button1">Ndrysho</button>
</form>

</div>

</body>
</html>