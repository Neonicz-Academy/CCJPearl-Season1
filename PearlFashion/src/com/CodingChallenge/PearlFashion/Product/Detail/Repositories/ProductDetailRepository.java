package com.CodingChallenge.PearlFashion.Product.Detail.Repositories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductDetailRepository {

	
		public Map<String, String> selectProduct(Long productId){
			Connection con = null;
			String selectProductQuery = "SELECT * FROM product_details where productId=?;  ";
			Map<String, String> product = null;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				//String url = "jdbc:mysql://localhost:3306/pearlfashion_db";
				//con = DriverManager.getConnection(url, "root", "system");
				String url = "jdbc:mysql://139.59.93.240:3306/pearlfashion_db";
				con = DriverManager.getConnection(url, "pearladmin", "pearl2020@CCJ");
				PreparedStatement stmt = con.prepareStatement(selectProductQuery);
				stmt.setLong(1, productId);
				ResultSet rs = stmt.executeQuery();
				product = new HashMap<String, String>();
				
				while (rs.next()) {
					System.out.println(rs.getString("productId") + " , " + rs.getString("productName"));
					
					//Map<String,String> row = new HashMap<String, String>() ;
					product.put("productId", rs.getString("productId"));
					product.put("image", rs.getString("image"));
					product.put("productName", rs.getString("productName"));
					product.put("price", rs.getString("price"));
					product.put("brandName", rs.getString("brandName"));
					product.put("colour", rs.getString("colour"));
					product.put("createdDate", rs.getString("createdDate"));
					product.put("updatedDate", rs.getString("updatedDate"));
					product.put("createdBy", rs.getString("createdBy"));
					product.put("updatedBy", rs.getString("updatedBy"));
					
				}
				
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
			return product;
			
		}
		



	}



