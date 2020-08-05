package com.CodingChallenge.PearlFashion.Add.Cart.Servlet;

import java.awt.image.DataBufferUShort;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Server;
import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;

import com.CodingChallenge.PearlFashion.Add.Cart.Repositories.AddCartRepository;
import com.CodingChallenge.PearlFashion.Add.Product.Repositories.AddProductRepository;
import com.CodingChallenge.PearlFashion.Home.Products.Repositories.HomeProductRepository;
import com.CodingChallenge.PearlFashion.Product.Detail.Repositories.ProductDetailRepository;

/**
 * Servlet implementation class AddCartServlet
 */
@WebServlet("/AddCartServlet")
public class AddCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("inside do get");
	
		Long productId = Long.valueOf(request.getParameter("productId"));

		System.out.println("productId" + productId);
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/cart.jsp");
		
		AddCartRepository productRepository = new AddCartRepository();
		Map<String,String> productDetail = productRepository.selectProduct(productId);
		request.setAttribute("productDetail", productDetail);
	       dispatcher.forward(request, response);
	} 
	       
	          
	  
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
		  
		    @Override
		    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		    		doGet(request, response);
		    	
		    	}
		    	

		    }		     
		    
		    
		        