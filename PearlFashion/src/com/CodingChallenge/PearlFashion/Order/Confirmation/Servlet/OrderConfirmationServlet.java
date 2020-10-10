package com.CodingChallenge.PearlFashion.Order.Confirmation.Servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.CodingChallenge.PearlFashion.List.Order.Repositories.ListOrderRepository;

/**
 * Servlet implementation class OrderConfirmationServlet
 */
@WebServlet("/OrderConfirmationServlet")
public class OrderConfirmationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderConfirmationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long orderId = Long.valueOf((request.getParameter("orderId")).toString());
		System.out.println("orderId++++++++++++++++++++++++++++"+orderId);
		ListOrderRepository productRepository = new ListOrderRepository();
		List<Map<String, String>> productList = productRepository.selectAllOrderItems(orderId);
		System.out.println("list size>>>>>>>>>>>>>>>>>>>>>"+productList.size());
		request.setAttribute("productList", productList);
		Map<String, String> order = productRepository.selectOrderByOrderId(orderId);
		System.out.println("order size>>>>>>>>>>>>>>>>>>>>>"+order.size());
		request.setAttribute("order", order);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/confirmation.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
