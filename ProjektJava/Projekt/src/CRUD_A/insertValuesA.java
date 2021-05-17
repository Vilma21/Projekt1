package CRUD_A;

import java.sql.Connection;
import java.sql.PreparedStatement;

import lidhja.Db_connection;

public class insertValuesA {
	public void Insertvalues(String emri, String pasword) throws ClassNotFoundException {			
		Db_connection objekt = new Db_connection();
		Connection conn = objekt.getConnection();
		PreparedStatement ps= null ;
		try {
			String query ="INSERT INTO admin (name, password) VALUES (?,?) ";
			ps = conn.prepareStatement(query);
			ps.setString(1, emri);
			ps.setString(2, pasword);
			ps.executeUpdate();
			}catch (Exception e) {
				
				System.out.println("ERROR @ query insert for ADMIN  " + e.getMessage());
				
			}
		
		}	


}
