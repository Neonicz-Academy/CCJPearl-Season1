package com.CodingChallenge.PearlFashion.Update.Repositories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

public class UpdateRepository {
	public Boolean updateProduct(Long productId,String image,String productName,
			String size,Double price,String brandName,String colour)
	{
		boolean successful = false;
			Connection con = null;
			try
			{
				DateFormat dateFormat2 = new SimpleDateFormat("yyyy-MM-dd");
				dateFormat2.setTimeZone(TimeZone.getTimeZone("GMT"));
				java.sql.Date timeNow = new java.sql.Date(new java.util.Date().getTime());
				//Class.forName("com.mysql.cj.jdbc.Driver");
				String url = "jdbc:mysql://139.59.93.240:3306/pearlfashion_db";
				con = DriverManager.getConnection(url, "pearladmin", "pearl2020@CCJ");
				String updateProduct = " UPDATE product_details SET image =?,productName = ?,size = ?,"
						+ "price = ?,brandName =?,colour = ?,createdDate = ?,"
						+ "updatedDate = ?,createdBy = ?,updatedBy = ? WHERE productId=?";
				PreparedStatement stmt = con.prepareStatement(updateProduct);
			
				stmt.setString(1, image);
				stmt.setString(2, productName);
				stmt.setString(3, size);
				stmt.setDouble(4, price);	
				stmt.setString(5, brandName);
				stmt.setString(6, colour);
				stmt.setDate(7, timeNow);
				stmt.setDate(8, timeNow);
				stmt.setLong(9, 1);
				stmt.setLong(10, 1);
				stmt.setLong(11, productId);
				
				Boolean inserted = stmt.execute();
				if (stmt.getUpdateCount() > 0) 
				{
					System.out.println("product gets updated  into database successfully");
				}
				else
				{
					System.out.println("update failed");
					successful=true;
				}			
			}
			catch(SQLException e)
			{		
				e.printStackTrace();
			}
			finally
			{
				try
				{
					con.close();
				}
				catch(SQLException e)
				{	
					e.printStackTrace();
				}
			}
		
			return successful;
	}
}
