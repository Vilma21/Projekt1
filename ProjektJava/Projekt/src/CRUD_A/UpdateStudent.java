package CRUD_A;

import java.sql.Connection;
import java.sql.PreparedStatement;

import lidhja.Db_connection;
import lidhja.Student;

public class UpdateStudent {
public void ndryshoVleren (Student studenti) throws ClassNotFoundException {
		
		Db_connection objekt = new Db_connection();
		Connection conn = objekt.getConnection();
		PreparedStatement ps= null ;
		
		try {
			String query ="UPDATE student SET name=?, email=?, course=? , fee=?, paid=?, due=?, address =?, city=?, state =? ,  country =? , contactNumber=? WHERE ID =?  " ;
			ps = conn.prepareStatement(query);
			ps.setString(1, studenti.getName());
			ps.setString(2, studenti.getEmail());
			ps.setString(3, studenti.getCourse());
			ps.setString(4, studenti.getFee());
			ps.setString(5, studenti.getPaid());
			ps.setString(6, studenti.getDue());
			ps.setString(7, studenti.getAddress());
			ps.setString(8, studenti.getCity());
			ps.setString(9, studenti.getState());
			ps.setString(10, studenti.getCountry());
			ps.setString(11, studenti.getContactNumber());
			ps.setString(12, studenti.getID());
			
			ps.executeUpdate();
		
		} catch (Exception e) {
			System.out.println(" ERROR @ query SELECT during UPDATE STUDENTS" + e.getMessage());
		}
		
	}

}
