package CRUD_A;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import lidhja.Student;
import lidhja.Db_connection;

public class ViewStudents {
	public List<Student> merrVlerat () throws ClassNotFoundException {
		Db_connection objekt = new Db_connection();
		Connection conn = objekt.getConnection();
		PreparedStatement ps= null ;
		ResultSet rs = null;
		
		ArrayList<Student> listaStudenteve =new ArrayList<Student>();
		try {
			String query ="SELECT * FROM student " ;
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			
		while(rs.next()) {
			
			Student sti  = new Student();
			sti.setName(rs.getString("name"));
			sti.setEmail(rs.getString("email"));
			sti.setCourse(rs.getString("course"));
			sti.setFee(rs.getString("fee"));
			sti.setPaid(rs.getString("paid"));
			sti.setDue(rs.getString("due"));
			sti.setAddress(rs.getString("address"));
			sti.setCity(rs.getString("city"));
			sti.setState(rs.getString("state"));
			sti.setCountry(rs.getString("country"));
			sti.setContactNumber(rs.getString("contactNumber"));
			sti.setID(rs.getString("ID"));
			listaStudenteve.add(sti);
			
		}
		return listaStudenteve;
		
		} catch (Exception e) {
			System.out.println(" ERROR @ query SELECT ViewStudents" + e.getMessage());
		}
		return listaStudenteve ;	
	}
}
