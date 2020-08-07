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
	public Boolean addOrder( Integer totalItems,Double grandTotal, List<Map<String,String>> itemList )
	{
		System.out.println("insert functn ");
		Connection con = null;
		boolean successful = false;
		Long orderId=null;
	
		try
		{
			DateFormat dateFormat2 = new SimpleDateFormat("yyyy-MM-dd");
			dateFormat2.setTimeZone(TimeZone.getTimeZone("GMT"));
			java.sql.Date timeNow = new java.sql.Date(new java.util.Date().getTime());
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/pearlfashion_db";
			con = DriverManager.getConnection(url, "root", "system");
			String insertOrder = "INSERT INTO order(grandTotal,totalItems)"+
					"VALUES (?,?,?)";
					
			PreparedStatement stmt = con.prepareStatement(insertOrder, Statement.RETURN_GENERATED_KEYS);
			
			stmt.setInt(1, totalItems);
			stmt.setDouble(4, grandTotal);	
			stmt.setDate(7, timeNow);
			stmt.setDate(8, timeNow);
			
			Boolean inserted = stmt.execute();
			ResultSet rs = stmt.getGeneratedKeys();
			if (rs.next()) {
			   orderId = rs.getLong(1);
			 System.out.println("orderId" + orderId);
			}
			if(orderId!=null) {
				for(Map<String, String> product:itemList) {
					Long productId=Long.getLong("productId");
					String productName=product.get("productName");
					String size=product.get("size");
				    Double price= Double.valueOf(product.get(product.get("price")));
				    Double total=Double.valueOf(product.get(product.get("total"))) ;
				    Integer quantity= Integer.valueOf(product.get(product.get("quantity")) );
					addOrderProduct( productId, productName, size, price, quantity, total);
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
		return successful;
	}


	
		public Boolean addOrderProduct( Long productId,String productName,String size,Double price,Integer quantity,Double total)
		{
			System.out.println("insert functn ");
			Connection con = null;
			boolean successful = false;
			
		
			try
			{
				DateFormat dateFormat2 = new SimpleDateFormat("yyyy-MM-dd");
				dateFormat2.setTimeZone(TimeZone.getTimeZone("GMT"));
				java.sql.Date timeNow = new java.sql.Date(new java.util.Date().getTime());
				Class.forName("com.mysql.cj.jdbc.Driver");
				String url = "jdbc:mysql://localhost:3306/pearlfashion_db";
				con = DriverManager.getConnection(url, "root", "system");
				String insertProduct = "INSERT INTO order_item(productId,productName,size,price,Quantity,total)"+
						"VALUES (?,?,?,?,?,?,?)";
						
				PreparedStatement stmt = con.prepareStatement(insertProduct);
				
				stmt.setLong(1, productId);
				stmt.setString(2, productName);
				stmt.setString(3, size);
				stmt.setDouble(4, price);	
				stmt.setInt(5, quantity);
				stmt.setDouble(6, total);
				stmt.setDate(7, timeNow);
				stmt.setDate(8, timeNow);
				
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

