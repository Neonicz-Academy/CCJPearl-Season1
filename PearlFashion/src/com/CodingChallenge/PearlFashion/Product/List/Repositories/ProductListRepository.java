package com.CodingChallenge.PearlFashion.Product.List.Repositories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductListRepository {
	public List<Map<String, String>> viewAllProducts()
	{
		System.out.println("INSIDE VIEW ALL PRODUCT");
		Connection con = null;
		String ProductsDetails = "SELECT * FROM product_details";
		List<Map<String,String>> productList = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://139.59.93.240:3306/pearlfashion_db";
			con = DriverManager.getConnection(url, "pearladmin", "pearl2020@CCJ");
			//String url = "jdbc:mysql://localhost:3306/pearlfashion_db";
			//con = DriverManager.getConnection(url, "root","system");
			PreparedStatement stmt = con.prepareStatement(ProductsDetails);
			ResultSet rs = stmt.executeQuery();
			productList = new ArrayList<Map<String,String>>();
			System.out.println("Product Length Before :> "+ productList.size());
			while (rs.next()) {
				System.out.println(rs.getString("productId") + " , " + rs.getString("productName"));
				
				Map<String,String> row = new HashMap<String, String>() ;
				row.put("productId", rs.getString("productId"));
				row.put("image", rs.getString("image"));
				row.put("productName", rs.getString("productName"));
				row.put("size", rs.getString("size"));
				row.put("price", rs.getString("price"));
				row.put("brandName", rs.getString("brandName"));
				row.put("colour", rs.getString("colour"));
				row.put("createdDate", rs.getString("createdDate"));
				row.put("updatedDate", rs.getString("updatedDate"));
				row.put("createdBy", rs.getString("createdBy"));
				row.put("updatedBy", rs.getString("updatedBy"));
				productList.add(row);
			}
			System.out.println("Product Length After :> "+ productList.size());
			
            }
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		} 
		catch (SQLException e)
		{
			
			e.printStackTrace();
		}
		finally {
				try
					{
						con.close();
					} 
				catch (SQLException e) 
					{
						e.printStackTrace();
					}
		
				}
		return productList;
		
	}
	
	public Map<String, String> selectProductDetailByProductId(Long productId)
	{
		Connection con = null;
		String ProductsDetails = "SELECT * FROM pearlfashion_db.product_details WHERE productId = ?;";
		Map<String,String> productDetail = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			//String url = "jdbc:mysql://localhost:3306/pearlfashion_db";
			//con = DriverManager.getConnection(url, "root","system");
			String url = "jdbc:mysql://neonicz.cqrzfxdbx5os.us-west-2.rds.amazonaws.com:3306/pearlfashion_db";
			con = DriverManager.getConnection(url, "root", "n30n16z7ru3@2017");
			PreparedStatement stmt = con.prepareStatement(ProductsDetails);
			stmt.setLong(1, productId);
			ResultSet rs = stmt.executeQuery();
			productDetail= new HashMap<String,String>();
			System.out.println("Product Length Before :> "+ productDetail.size());
			while (rs.next()) {
				System.out.println(rs.getString("productId") + " , " + rs.getString("productName"));
				productDetail.put("productId", rs.getString("productId"));
				productDetail.put("image", rs.getString("image"));
				productDetail.put("productName", rs.getString("productName"));
				productDetail.put("size", rs.getString("size"));
				productDetail.put("price", rs.getString("price"));
				productDetail.put("brandName", rs.getString("brandName"));
				productDetail.put("colour", rs.getString("colour"));
				productDetail.put("createdDate", rs.getString("createdDate"));
				productDetail.put("updatedDate", rs.getString("updatedDate"));
				productDetail.put("createdBy", rs.getString("createdBy"));
				productDetail.put("updatedBy", rs.getString("updatedBy"));			
			}
            }
	catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		} 
		catch (SQLException e)
		{
			
			e.printStackTrace();
		}
		finally {
				try
					{
						con.close();
					} 
				catch (SQLException e) 
					{
						e.printStackTrace();
					}
		
				}
	
		return productDetail;
		
	}
	

}
