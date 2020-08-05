package com.CodingChallenge.PearlFashion.Product.Detail.Servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.CodingChallenge.PearlFashion.Home.Products.Repositories.HomeProductRepository;
import com.CodingChallenge.PearlFashion.Product.Detail.Repositories.ProductDetailRepository;

/**
 * Servlet implementation class ProductDetailServlet
 */
@WebServlet("/ProductDetailServlet")
public class ProductDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDetailServlet() {
        super();
       
    }
  

	/**
	 * @param get 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("inside do get");
		Long productId = Long.valueOf(request.getParameter("productId"));
		System.out.println("productId" + productId);
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/single-product.jsp");
		
		ProductDetailRepository productRepository = new ProductDetailRepository();
		Map<String,String> productDetail = productRepository.selectProduct(productId);
		request.setAttribute("productDetail", productDetail);
		
		
	       dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("Inside dopost");
		doGet(request, response);
	
	}
	

}
