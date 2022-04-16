package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DBConnection.DBConnection;
import beans.Product;

public class ListDao {
	ArrayList<Product> alst;

	public ListDao() {
		super();
		alst = new ArrayList<Product>();
	}

	public void getCartProduct(int id) throws Exception {
		Product pd = null;
		DBConnection dbc = new DBConnection();
		Connection conn = dbc.getConnection();
		String sql = "select * from Products where product_id=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			pd = new Product(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_des"),
					rs.getFloat("product_price"), rs.getString("product_img_source"), rs.getString("product_type"),
					rs.getString("product_brand"), 1);
		}
		addListCart(pd);
	}

	public void search(String search) throws Exception {
		Product pd = null;
		DBConnection dbc = new DBConnection();
		Connection conn = dbc.getConnection();
		String sql = "Select * from Products";
		PreparedStatement stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			String name = rs.getString("product_name");
			String des = rs.getString("product_des");
			if (name.indexOf(search) >= 0 || des.indexOf(search) >= 0) {
				pd = new Product(rs.getInt("product_id"), rs.getString("product_name"), rs.getString("product_des"),
						rs.getFloat("product_price"), rs.getString("product_img_source"), rs.getString("product_type"),
						rs.getString("product_brand"));
				addListCart(pd);
			}
		}
	}

	public void addListCart(Product prd) {
		for (Product p : alst) {
			if (p.getId() == prd.getId()) {
				p.setPrice(p.getNumber() + 1);
				return;
			}
		}
		alst.add(prd);
	}

	public int getSize() {
		return alst.size();
	}

	public ArrayList<Product> getAlst() {
		return alst;
	}

}
