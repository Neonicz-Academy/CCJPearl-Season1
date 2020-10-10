package com.CodingChallenge.PearlFashion.Accept.Reject.Servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.CodingChallenge.PearlFashion.Accept.Reject.Repositories.AcceptRejectRepository;
import com.CodingChallenge.PearlFashion.Product.List.Repositories.ProductListRepository;
@WebServlet("/AcceptRejectServlet")
public class AcceptRejectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AcceptRejectServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long orderId = Long.valueOf(request.getParameter("orderId"));
		String status = request.getParameter("status");
		
		AcceptRejectRepository acceptReject = new AcceptRejectRepository();
		acceptReject.updateOrderStatus(orderId, status);
		RequestDispatcher dispatcher = request.getRequestDispatcher("orderview.jsp");
		ProductListRepository productDetails = new ProductListRepository();
		System.out.println("INSIDE DOGET2");
		List<Map<String, String>> productList = productDetails.viewAllProducts();
		request.setAttribute("productList", productList);
	    dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
