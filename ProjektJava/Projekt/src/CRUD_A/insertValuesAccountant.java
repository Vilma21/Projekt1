package CRUD_A;

import java.sql.Connection;
import java.sql.PreparedStatement;
import lidhja.Db_connection;

public class insertValuesAccountant {
	public void Insertvalues(String name, String pasword, String email ,String nr_tel) throws ClassNotFoundException {			
		Db_connection objekt = new Db_connection();
		Connection conn = objekt.getConnection();
		PreparedStatement ps= null ;
		try {
			String query ="INSERT INTO tbluser (name, password,email,nr_tel,Roli) VALUES (?,?,?,?,?) ";
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, pasword);
			ps.setString(3, email);
			ps.setString(4, nr_tel);
			ps.setString(5, "2");
			ps.executeUpdate();
			}catch (Exception e) {
				
				System.out.println("ERROR @ insert of ACCOUNTANT query  " + e.getMessage());
				
			}
		
		}	
}
