package com.CodingChallenge.PearlFashion.Login.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.CodingChallenge.PearlFashion.AdminOrder.View.Repositorie.AdminOrderViewRepository;
import com.CodingChallenge.PearlFashion.Login.Repositories.LoginRepository;
import com.CodingChallenge.PearlFashion.Product.Detail.Repositories.ProductDetailRepository;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher serve = null;
		HttpSession session = request.getSession(true);
		Boolean autherized = (Boolean) session.getAttribute("isauthorized");
		System.out.println("Authorized" + autherized);
		if(autherized!=null && autherized) {
			
			response.sendRedirect("AdminOrderViewServlet");
		} else {
			serve = request.getRequestDispatcher("login.jsp");
			 serve.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String userNameByUser= request.getParameter("userName");
		String passwordByUser = request.getParameter("password");
		System.out.println("User Name:>" + userNameByUser);
		System.out.println("User password:>" + passwordByUser);
		Boolean authenticationFailed = true;
		LoginRepository adminRepository = new LoginRepository();
		boolean login = adminRepository.checkAdmin(userNameByUser, passwordByUser);
		if(login==true) {	
			
			System.out.println(login);
			
			System.out.println("Authenication Successful");
			HttpSession session = request.getSession(true);
			session.setAttribute("isauthorized", true);	
			session.setAttribute("name", userNameByUser);
			authenticationFailed = false;
		} else {
			System.out.println("Authentication failes");
			request.setAttribute("failed", authenticationFailed);
		}
		
		 doGet(request, response);

	}
}


