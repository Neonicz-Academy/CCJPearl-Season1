package com.CodingChallenge.PearlFashion.Add.Product.Repositories;

import java.io.File;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

import javax.print.attribute.standard.DateTimeAtCompleted;

public class AddProductRepository {

	public Boolean addProduct(String image,String productName,String size,Double price,String brandName,String colour, String createdBy, String updatedBy)
	{
		System.out.println("insert function ");
		Connection con = null;
		boolean successful = false;
		try
		{
			DateFormat dateFormat2 = new SimpleDateFormat("yyyy-MM-dd");
			dateFormat2.setTimeZone(TimeZone.getTimeZone("GMT"));
			java.sql.Date timeNow = new java.sql.Date(new java.util.Date().getTime());
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://139.59.93.240:3306/pearlfashion_db";
			con = DriverManager.getConnection(url, "pearladmin", "pearl2020@CCJ");
			//String url = "jdbc:mysql://localhost:3306/pearlfashion_db";
			//con = DriverManager.getConnection(url, "root", "system");
			String insertProductQuery = "INSERT INTO product_details(image,productName,size,price,brandName,colour,createdDate,updatedDate,createdBy,updatedBy)"+
					"VALUES (?,?,?,?,?,?,?,?,?,?)"; 
					
			PreparedStatement stmt = con.prepareStatement(insertProductQuery);
			  
			stmt.setString(1, image);
			
			stmt.setString(2, productName);
			stmt.setString(3, size);
			stmt.setDouble(4, price);	
			stmt.setString(5, brandName);
			stmt.setString(6, colour);
			stmt.setDate(7, timeNow);
			stmt.setDate(8, timeNow);
			stmt.setString(9, createdBy);
			stmt.setString(10, updatedBy);

			Boolean inserted = stmt.execute();
			System.out.println(inserted);
			if (stmt.getUpdateCount() > 0) 
			{
				System.out.println("product gets inserted  into database successfully");
			}
			else
			{
				System.out.println("insert failed");
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
