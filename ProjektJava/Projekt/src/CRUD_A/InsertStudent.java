package CRUD_A;

import java.sql.Connection;
import java.sql.PreparedStatement;

import lidhja.Db_connection;

public class InsertStudent {
	public void InsertStudentValue(String name, String email ,String course , String fee, String paid, String due, String address, String city, String state , String country , String number) throws ClassNotFoundException {			
		Db_connection objekt = new Db_connection();
		Connection conn = objekt.getConnection();
		PreparedStatement ps= null ;
		try {
			String query ="INSERT INTO student (name,email,course,fee,paid,due,address,city,state,country,contactNumber) VALUES (?,?,?,?,?,?,?,?,?,?,?) ";
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, course);
			ps.setString(4, fee);
			ps.setString(5, paid);
			ps.setString(6, due);
			ps.setString(7, address);
			ps.setString(8, city);
			ps.setString(9, state);
			ps.setString(10, country);
			ps.setString(11, number);
			ps.executeUpdate();
			}catch (Exception e) {
				
				System.out.println("ERROR @ insert of STUDENT query  " + e.getMessage());
				
			}
		
		}	
}
