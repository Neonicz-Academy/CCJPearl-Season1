package com.CodingChallenge.PearlFashion.AdminOrder.View.Servlet;

import java.io.IOException;
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
import com.CodingChallenge.PearlFashion.Home.Products.Repositories.HomeProductRepository;


/**
 * Servlet implementation class AdminOrderViewServlet
 */
@WebServlet("/AdminOrderViewServlet")
public class AdminOrderViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminOrderViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       HttpSession session = request.getSession(true);
       session.setAttribute("name", "Priyanka");
       Boolean authorized= (Boolean) session.getAttribute("isauthorized");
       RequestDispatcher serve = null;
       if(authorized!= null && authorized) {
    	   serve = request.getRequestDispatcher("adminview.jsp");
    	   AdminOrderViewRepository productRepository = new AdminOrderViewRepository();
   		List<Map<String, String>> productList = productRepository.selectAllOrders();
   		request.setAttribute("productList", productList);
       }else {
    	   serve = request.getRequestDispatcher("login.jsp");
       }
		
	       serve.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
