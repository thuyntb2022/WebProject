package DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	public Connection getConnection() throws Exception {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String url = "jdbc:sqlserver://localhost:1433;databaseName=ShoppingDB";
		return DriverManager.getConnection(url, "sa", "1234");
	}
}
