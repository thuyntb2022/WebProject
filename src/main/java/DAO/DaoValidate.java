package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DBConnection.DBConnection;

public class DaoValidate {
	public boolean dbvalidate(String user, String password) throws Exception {
		DBConnection dbc = new DBConnection();
		Connection conn = dbc.getConnection();
		String sql = "Select count(*) as count from Account where user_mail=? and password=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, user);
		stmt.setString(2, password);
		ResultSet rs = stmt.executeQuery();
		int count = 0;
		if (rs.next()) {
			count = rs.getInt("count");
		}
		if (count == 0) {
			return false;
		} else {
			return true;
		}

	}
}
