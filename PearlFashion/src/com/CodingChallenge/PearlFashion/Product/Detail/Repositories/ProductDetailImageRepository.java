package com.CodingChallenge.PearlFashion.Product.Detail.Repositories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductDetailImageRepository {
	public  String getImagePath(Long productId) {
		Connection con = null;
		String images = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/pearlfashion_db";
			con = DriverManager.getConnection(url,"root","pass12345");
			String viewImage = "SELECT image FROM product_details WHERE productId=?";				
			PreparedStatement stmt = con.prepareStatement(viewImage);
			stmt.setDouble(1, productId);
			ResultSet rs = stmt.executeQuery();
			
			System.out.println("before while loop" );
			while(rs.next()) {
				
				images = rs.getString("image");
				
		}
			con.close();
//	System.out.println("after" + row.size());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return images;
	}

}
