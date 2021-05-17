<%@page import="lidhja.Db_connection"%>
<%@page import="lidhja.Student"%>
<%@page import="CRUD_A.EditStudent"%>
<%@page import="CRUD_A.UpdateStudent"%>
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

<%

String emripertufutur = request.getParameter("name");
String emailpertufutur = request.getParameter("email");
String coursepertufutur = request.getParameter("course");
String feepertufutur = request.getParameter("fee");
String paidpertufutur = request.getParameter("paid");
String duepertufutur = request.getParameter("due");
String addresspertufutur = request.getParameter("address");
String citypertufutur= request.getParameter("city");
String statepertufutur = request.getParameter("state");
String countrypertufutur = request.getParameter("country");
String contactNumberpertufutur = request.getParameter("number");
String IDpertufutur = request.getParameter("ID");

Student studentPerTuDerguar = new Student();

studentPerTuDerguar.setName(emripertufutur);
studentPerTuDerguar.setEmail(emailpertufutur);
studentPerTuDerguar.setCourse(coursepertufutur);
studentPerTuDerguar.setFee(feepertufutur);
studentPerTuDerguar.setPaid(paidpertufutur);
studentPerTuDerguar.setDue(duepertufutur);
studentPerTuDerguar.setAddress(addresspertufutur);
studentPerTuDerguar.setCity(citypertufutur);
studentPerTuDerguar.setState(statepertufutur);
studentPerTuDerguar.setCountry(countrypertufutur);
studentPerTuDerguar.setContactNumber(contactNumberpertufutur);
studentPerTuDerguar.setID(IDpertufutur);

UpdateStudent thirre = new UpdateStudent();
thirre.ndryshoVleren(studentPerTuDerguar);

%>

<h1 style="text-align:center;"> Te dhenat u hodhen me sukses! </h1>

<h1 style="text-align:center;"><a href = "DetAccount.jsp"> Kthehu </a></h1>

</body>
</html>