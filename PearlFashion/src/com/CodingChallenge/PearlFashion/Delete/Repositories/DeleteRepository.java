package com.CodingChallenge.PearlFashion.Delete.Repositories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteRepository {
	public Boolean deleteProduct(Long productId)//,String image,String productName,String size,Double price,String brandName,String colour)
	{
		boolean successful = false;
			Connection con = null;
			try
			{
				//DateFormat dateFormat2 = new SimpleDateFormat("yyyy-MM-dd");
				//dateFormat2.setTimeZone(TimeZone.getTimeZone("GMT"));
				//java.sql.Date timeNow = new java.sql.Date(new java.util.Date().getTime());
				Class.forName("com.mysql.cj.jdbc.Driver");
				String url = "jdbc:mysql://139.59.93.240:3306/pearlfashion_db";
				con = DriverManager.getConnection(url, "pearladmin", "pearl2020@CCJ");
				//String url = "jdbc:mysql://localhost:3306/pearlfashion_db";
				//con = DriverManager.getConnection(url, "root", "system");
				String deleteProduct = " DELETE FROM product_details WHERE productId=?";
				PreparedStatement stmt = con.prepareStatement(deleteProduct);
				stmt.setLong(1, productId);
				Boolean deleted = stmt.execute();
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
			catch(ClassNotFoundException e)
			{
				e.printStackTrace();
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
