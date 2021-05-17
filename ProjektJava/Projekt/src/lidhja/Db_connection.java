package lidhja;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Db_connection {
	public Connection getConnection() throws ClassNotFoundException {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin", "root", "");
		} catch (SQLException e) {
			System.out.println(" DB_COONECTION " + e.getMessage());

		}
		return conn;
	}

}
