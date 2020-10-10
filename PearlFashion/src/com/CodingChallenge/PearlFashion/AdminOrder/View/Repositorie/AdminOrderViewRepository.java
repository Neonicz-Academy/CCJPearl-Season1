package com.CodingChallenge.PearlFashion.AdminOrder.View.Repositorie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AdminOrderViewRepository {

	public List<Map<String, String>> selectAllOrders(){
		Connection con = null;
		String selectOrdersQuery = "SELECT * FROM `order`";
		List<Map<String,String>> products = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://139.59.93.240:3306/pearlfashion_db";
			con = DriverManager.getConnection(url, "pearladmin", "pearl2020@CCJ");
			//String url = "jdbc:mysql://localhost:3306/pearlfashion_db";
			//con = DriverManager.getConnection(url, "root", "system");
			PreparedStatement stmt = con.prepareStatement(selectOrdersQuery);
			ResultSet rs = stmt.executeQuery();
			products = new ArrayList<Map<String,String>>();
			System.out.println("Product Length Before :> "+ products.size());
			while (rs.next()) {
				System.out.println(rs.getString("orderId") );
				
				Map<String,String> row = new HashMap<String, String>() ;
				row.put("orderId", rs.getString("orderId"));
				row.put("grandTotal", rs.getString("grandTotal"));
				row.put("totalItems", rs.getString("totalItems"));
				row.put("orderDate", rs.getString("orderDate"));
				row.put("customerName", rs.getString("customerName"));
				row.put("customerContact", rs.getString("customerContact"));
				row.put("address", rs.getString("address"));
				products.add(row);
			}
			System.out.println("Product Length After :> "+ products.size());
			//con.close();
            }
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		}
		return products;
		
	}
	


}
