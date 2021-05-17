package CRUD_A;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import lidhja.Accountant;
import lidhja.Db_connection;

public class SelectValuesAccountant {

	public List<Accountant> merrVlerat () throws ClassNotFoundException {
		Db_connection objekt = new Db_connection();
		Connection conn = objekt.getConnection();
		PreparedStatement ps= null ;
		ResultSet rs = null;
		
		ArrayList<Accountant> listaAccountareve =new ArrayList<Accountant>();
		try {
			String query ="SELECT * FROM tbluser where Roli='2'";
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			
		while(rs.next()) {
			
			Accountant acc  = new Accountant();
			acc.setName(rs.getString("name"));
			acc.setPasword(rs.getString("password"));
			acc.setEmail(rs.getString("email"));
			acc.setNr_tel(rs.getString("nr_tel"));
			acc.setID(rs.getString("ID"));
			listaAccountareve.add(acc);
			
		}
		return listaAccountareve;
		
		} catch (Exception e) {
			System.out.println(" ERROR @ query SELECT SelectValuesAccountant" + e.getMessage());
		}
		return listaAccountareve ;
		
	}
}
