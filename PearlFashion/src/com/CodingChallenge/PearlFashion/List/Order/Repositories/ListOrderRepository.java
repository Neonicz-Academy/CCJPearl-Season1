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

	public List<Map<String, String>> selectAllOrderItems(Long orderId){
		Connection con = null;
		String selectOrdersQuery = "SELECT * FROM order_item WHERE orderId=? "; 
		List<Map<String,String>> products = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://139.59.93.240:3306/pearlfashion_db";
			con = DriverManager.getConnection(url, "pearladmin", "pearl2020@CCJ");
			//String url = "jdbc:mysql://localhost:3306/pearlfashion_db";
			//con = DriverManager.getConnection(url, "root", "system");
			PreparedStatement stmt = con.prepareStatement(selectOrdersQuery);
			stmt.setLong(1, orderId);
			ResultSet rs = stmt.executeQuery();
			

			products = new ArrayList<Map<String,String>>();
			//System.out.println("Product Length Before :> "+ products.size());
			
			while (rs.next()) {
				//System.out.println(rs.getString("orderId") );
				
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
			
			//System.out.println("Product Length After :> "+ products.size());
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
	
	public Map<String, String> selectOrderByOrderId(Long orderId){
		Connection con = null;
		String selectOrdersQuery = "SELECT * FROM `order` WHERE orderId=?";
		Map<String,String> order = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://139.59.93.240:3306/pearlfashion_db";
			con = DriverManager.getConnection(url, "pearladmin", "pearl2020@CCJ");
			PreparedStatement stmt = con.prepareStatement(selectOrdersQuery);
			stmt.setLong(1, orderId);
			ResultSet rs = stmt.executeQuery();
			order = new HashMap<String,String>();
			System.out.println("Product Length Before :> "+ order.size());
			while (rs.next()) {
				System.out.println(rs.getString("orderId") );
				
				order.put("orderId", rs.getString("orderId"));
				order.put("grandTotal", rs.getString("grandTotal"));
				order.put("totalItems", rs.getString("totalItems"));
				order.put("orderDate", rs.getString("orderDate"));
				order.put("customerName", rs.getString("customerName"));
				order.put("customerContact", rs.getString("customerContact"));
				order.put("address", rs.getString("address"));
			}
			System.out.println("Product Length After :> "+ order.size());
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
		return order;
		
	}
	

}
