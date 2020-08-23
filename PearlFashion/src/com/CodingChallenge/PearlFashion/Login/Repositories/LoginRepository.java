package com.CodingChallenge.PearlFashion.Login.Repositories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LoginRepository {

	public Boolean checkAdmin(String userName, String password){
		Connection con = null;
		Boolean admins=false;
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/pearlfashion_db";
			con = DriverManager.getConnection(url, "root", "pass12345");
			String selectAdminQuery = "SELECT * FROM login where userName=? AND password=? ";
			PreparedStatement stmt = con.prepareStatement(selectAdminQuery);
			
			stmt.setString(1,userName);
			stmt.setString(2,password);
			int size =0;
			ResultSet rs = stmt.executeQuery();
			
				while(rs.next()) {
					System.out.println(rs.getString("userName"));
//					rs.last();
					size = rs.getRow();
//					size++;
					if(rs.getString("userName") != null) {
						admins = true;
//						System.out.println("UseName" + rs.getString("userName"));
					}
					
				}
				
				
				if(admins == true)  {
					System.out.println("There is a user");
				}
				else {
					System.out.println("No user found.");
					admins = false;
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
		return admins;
		
	}
	

}
