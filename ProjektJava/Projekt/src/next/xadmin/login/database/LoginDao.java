package next.xadmin.login.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import lidhja.Db_connection;
import next.xadmin.login.bean.LoginBean;

public class LoginDao {

	public String validate(LoginBean loginBean) throws ClassNotFoundException{
		// TODO Auto-generated method stub
		Db_connection objekt = new Db_connection();
		Connection conn = objekt.getConnection();
		PreparedStatement ps= null ;
		ResultSet rs = null;
		String roli = "";
		try {
			String query ="SELECT * FROM tbluser where name = ? and password = ? " ;
			ps = conn.prepareStatement(query);
			ps.setString(1, loginBean.getName());
			ps.setString(2, loginBean.getPassword());
			
			rs = ps.executeQuery();
			while(rs.next()) {
			 roli = rs.getString("Roli");
			}
			
		}
		catch (Exception e){
			System.out.println(" ERROR @ query SELECT tblUser" + e.getMessage());
		
		}
		
		return roli ;
		
	}
	
}
