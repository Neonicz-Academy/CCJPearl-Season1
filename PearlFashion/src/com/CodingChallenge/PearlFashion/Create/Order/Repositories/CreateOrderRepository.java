package com.CodingChallenge.PearlFashion.Create.Order.Repositories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

public class CreateOrderRepository {
	public Long addOrder( Integer totalItems,Double grandTotal, List<Map<String,String>> itemList , String customerName, String mobile, String address)
	{
		Connection con = null;
		boolean successful = false;
		Long orderId=null;
	
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
			String insertOrder = "INSERT INTO pearlfashion_db.order(grandTotal,totalItems,orderDate,customerName,customerContact,address) VALUES (?,?,?,?,?,?)";
			PreparedStatement stmt = con.prepareStatement(insertOrder, Statement.RETURN_GENERATED_KEYS);
			stmt.setDouble(1, grandTotal);	
			stmt.setInt(2, totalItems);
			stmt.setDate(3, timeNow);
			stmt.setString(4, customerName);	
			stmt.setString(5, mobile);
			stmt.setString(6, address);
			Boolean inserted = stmt.execute();
			ResultSet rs = stmt.getGeneratedKeys();
			if (rs.next()) {
			   orderId = rs.getLong(1);
			 System.out.println("orderId" + orderId);
			}
			if(orderId!=null) {
				for(Map<String, String> product:itemList) {
					Long productId=Long.valueOf(product.get("productId"));
					System.out.println("pid>>>>>>>>>>>>>>"+productId);
					String productName=product.get("productName");
					String size=product.get("size");
				    Double price= Double.valueOf(product.get("price"));
				    Double total=Double.valueOf(product.get("total"));
				    Integer quantity= Integer.valueOf(product.get("quantity"));
					addOrderProduct( orderId, productId, productName, size, price, quantity, total);
				}
			}
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
		return orderId;
	}

	
		public Boolean addOrderProduct( Long orderId, Long productId,String productName,String size,Double price,Integer quantity,Double total)
		{
			System.out.println("insert functn ");
			Connection con = null;
			boolean successful = false;
			try
			{
				DateFormat dateFormat2 = new SimpleDateFormat("yyyy-MM-dd");
				dateFormat2.setTimeZone(TimeZone.getTimeZone("GMT"));
				Class.forName("com.mysql.cj.jdbc.Driver");
				String url = "jdbc:mysql://139.59.93.240:3306/pearlfashion_db";
				con = DriverManager.getConnection(url, "pearladmin", "pearl2020@CCJ");
				String insertProduct = "INSERT INTO order_item(orderId,productId,productName,size,price,quantity,total)"+
						"VALUES (?,?,?,?,?,?,?)";
						
				PreparedStatement stmt = con.prepareStatement(insertProduct);
				
				stmt.setLong(1, orderId);
				stmt.setLong(2, productId);
				stmt.setString(3, productName);
				stmt.setString(4, size);
				stmt.setDouble(5, price);	
				stmt.setInt(6, quantity);
				stmt.setDouble(7, total);
				
				Boolean inserted = stmt.execute();
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





