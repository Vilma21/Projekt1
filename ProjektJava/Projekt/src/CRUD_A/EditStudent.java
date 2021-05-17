package CRUD_A;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import lidhja.Student;
import lidhja.Db_connection;

public class EditStudent {
	public Student merrVleren (String vlera) throws ClassNotFoundException {
		Db_connection objekt = new Db_connection();
		Connection conn = objekt.getConnection();
		PreparedStatement ps= null ;
		ResultSet rs = null;
		Student st = new Student();
		
		
		try {
			String query ="SELECT * FROM student where ID = ?  " ;
			ps = conn.prepareStatement(query);
			ps.setString(1, vlera);
			rs = ps.executeQuery();
			
		while(rs.next()) {
			st.setName(rs.getString("name"));
			st.setEmail(rs.getString("email"));
			st.setCourse(rs.getString("course"));
			st.setFee(rs.getString("fee"));
			st.setPaid(rs.getString("paid"));
			st.setDue(rs.getString("due"));
			st.setAddress(rs.getString("address"));
			st.setCity(rs.getString("city"));
			st.setState(rs.getString("state"));
			st.setCountry(rs.getString("country"));
			st.setContactNumber(rs.getString("contactNumber"));
			st.setID(rs.getString("ID"));		
		}

		} catch (Exception e) {
			System.out.println(" ERROR @ query SELECT during EDITING STUDENT" + e.getMessage());
		}
		return st ;
		
	}
}
