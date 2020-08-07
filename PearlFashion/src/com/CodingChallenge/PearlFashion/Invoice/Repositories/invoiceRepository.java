package com.CodingChallenge.PearlFashion.Invoice.Repositories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class invoiceRepository {
	public List<Map<String, String>> selectAllProducts(){
		Connection con = null;
		String selectProductsQuery = "SELECT * FROM order_item";
		List<Map<String,String>> products = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/pearlfashion_db";
			con = DriverManager.getConnection(url, "root", "pass12345");
			PreparedStatement stmt = con.prepareStatement(selectProductsQuery);
			ResultSet rs = stmt.executeQuery();
			products = new ArrayList<Map<String,String>>();
			System.out.println("Product Length Before :> "+ products.size());
			while (rs.next()) {
				System.out.println(rs.getString("orderItemId") + " , " + rs.getString("productName"));
				
				Map<String,String> row = new HashMap<String, String>() ;
				row.put("orderItemId", rs.getString("OrderItemId"));
				row.put("orderId", rs.getString("OrderId"));
				row.put("productId", rs.getString("productId"));
				//row.put("image", rs.getString("image"));
				row.put("productName", rs.getString("productName"));
				row.put("size", rs.getString("size"));
				row.put("price", rs.getString("price"));
				
				row.put("quantity", rs.getString("quantity"));
				row.put("total", rs.getString("total"));
				row.put("orderStatus", rs.getString("orderStatus"));
				
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
