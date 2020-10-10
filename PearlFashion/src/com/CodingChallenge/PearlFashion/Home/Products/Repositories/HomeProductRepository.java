package com.CodingChallenge.PearlFashion.Home.Products.Repositories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

public class HomeProductRepository {

	public static void main(String[] args) {
		//selectAllProducts();
	}
	
	public List<Map<String, String>> selectAllProducts(){
		Connection con = null;
		String selectProductsQuery = "SELECT * FROM product_details";
		List<Map<String,String>> products = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://139.59.93.240:3306/pearlfashion_db";
			con = DriverManager.getConnection(url, "pearladmin", "pearl2020@CCJ");
			//String url = "jdbc:mysql://localhost:3306/pearlfashion_db";
			//con = DriverManager.getConnection(url, "root", "system");
			PreparedStatement stmt = con.prepareStatement(selectProductsQuery);
			ResultSet rs = stmt.executeQuery();
			products = new ArrayList<Map<String,String>>();
			System.out.println("Product Length Before :> "+ products.size());
			while (rs.next()) {
				System.out.println(rs.getString("productId") + " , " + rs.getString("productName"));
				
				Map<String,String> row = new HashMap<String, String>() ;
				row.put("productId", rs.getString("productId"));
				row.put("image", rs.getString("image"));
				row.put("productName", rs.getString("productName"));
				row.put("price", rs.getString("price"));
				row.put("brandName", rs.getString("brandName"));
				row.put("colour", rs.getString("colour"));
				row.put("createdDate", rs.getString("createdDate"));
				row.put("updatedDate", rs.getString("updatedDate"));
				row.put("createdBy", rs.getString("createdBy"));
				row.put("updatedBy", rs.getString("updatedBy"));
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
				if(con != null)
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		}
		return products;
		
	}
	
}
