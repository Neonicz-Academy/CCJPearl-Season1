package com.CodingChallenge.PearlFashion.List.Order.Repositories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ListOrderRepository {

	public List<Map<String, String>> selectAllOrderItems(){
		Connection con = null;
		String selectOrdersQuery = "SELECT * FROM `order_item`;";
		List<Map<String,String>> products = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/pearlfashion_db";
			con = DriverManager.getConnection(url, "root", "pass12345");
			PreparedStatement stmt = con.prepareStatement(selectOrdersQuery);
			ResultSet rs = stmt.executeQuery();
			products = new ArrayList<Map<String,String>>();
			System.out.println("Product Length Before :> "+ products.size());
			while (rs.next()) {
				System.out.println(rs.getString("orderId") );
				
				Map<String,String> row = new HashMap<String, String>() ;
				row.put("orderId", rs.getString("orderId"));
				row.put("productId", rs.getString("productId"));
				row.put("productName", rs.getString("productName"));
				row.put("Size", rs.getString("size"));
				row.put("price", rs.getString("price"));
				row.put("quantity", rs.getString("quantity"));
				row.put("total", rs.getString("total"));
				row.put("orderItemId", rs.getString("orderItemId"));
		
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
