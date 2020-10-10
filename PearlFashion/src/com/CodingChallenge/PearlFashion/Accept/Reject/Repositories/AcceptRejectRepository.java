package com.CodingChallenge.PearlFashion.Accept.Reject.Repositories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

public class AcceptRejectRepository 
{
	public boolean updateOrderStatus(Long orderId,String status)
	{
		boolean successful = false;
		Integer st = Integer.valueOf(status);
		Connection con = null;
		//List<Map<String,String>> productDetail = null;
	
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/pearlfashion_db";
			con = DriverManager.getConnection(url, "root", "system");
			String updateStatusQuery = " UPDATE `order` SET orderStatus=? WHERE orderId=?"; 
			PreparedStatement stmt = con.prepareStatement(updateStatusQuery);
			stmt.setString(1,status);
			stmt.setLong(2, orderId);
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
