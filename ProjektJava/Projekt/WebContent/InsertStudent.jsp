<%@page import="lidhja.Db_connection"%>
<%@page import="lidhja.Student"%>
<%@page import="CRUD_A.InsertStudent"%>
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
<div class="insert">
<form action="">

 <label>Emri</label>
  <input type="text" name="name" placeholder="Fut emrin" required>
  <br>
  <br>
 <label>Email</label> 
  <input type="email" name="email" placeholder="Fut emailin" required>
  <br>
  <br>
  <label>Kursi</label> 
  <input type="text" name="course"  placeholder="Fut kursin" required>
  <br>
  <br>
  <label>Tarifa</label> 
  <input type="number" name="fee"  placeholder="Fut tarifen" required>
  <br>
  <br>
  <label>Paguar</label> 
  <input type="number" name="paid"  placeholder="Fut pagesen" required>
  <br>
  <br>
  <label>Detyrime</label> 
  <input type="number" name="due"  placeholder="Fut detyrimet monetare" required>
  <br>
  <br>
  <label>Adresa</label> 
  <input type="text" name="address"  placeholder="Fut adresen" required>
  <br>
  <br>
  <label>Qyteti</label> 
  <input type="text" name="city"  placeholder="Fut qytetin" required>
  <br>
  <br>
  <label>Shteti</label> 
  <input type="text" name="state"  placeholder="Fut shtetin" required>
  <br>
  <br>
   <label>Rajoni</label> 
  <input type="text" name="country"  placeholder="Fut rajonin" required>
  <br>
  <br>
   <label>Numri telefonit</label> 
  <input type="text" name="number"  placeholder="Fut numrin" required>
  <br>
  <br>
  
  <button type="submit" class="button1">Regjistro</button>
</form> 

</div>




<%
		    InsertStudent student = new  InsertStudent();
			String emri = request.getParameter("name");
			String email = request.getParameter("email");
			String course = request.getParameter("course");
			String fee = request.getParameter("fee");
			String paid = request.getParameter("paid");
			String due = request.getParameter("due");
			String address = request.getParameter("address");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String country = request.getParameter("country");
			String contactNumber = request.getParameter("number");
			
			student.InsertStudentValue(emri, email, course,fee, paid,due,address,city,state,country,contactNumber );
%>



</body>
</html>