package com.CodingChallenge.PearlFashion.Create.Order.Servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.CodingChallenge.PearlFashion.Create.Order.Repositories.CreateOrderRepository;

/**
 * Servlet implementation class CreateOrderServlet
 */
@WebServlet("/CreateOrderServlet")
public class CreateOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/checkout.jsp");
        
	       dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/*protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Integer productId = Integer.valueOf(request.getParameter("productId"));
		String productName = request.getParameter("productName");
		String size = (request.getParameter("size"));
		Double price = Double.valueOf(request.getParameter("price"));
		Integer Quantity = Integer.valueOf(request.getParameter("Quantity"));
		Double total = Double.valueOf(request.getParameter("total"));
		
		CreateOrderRepository productDao = new CreateOrderRepository();
		
		productDao.addOrderProduct(productId, productName, size, price, Quantity, total); 
		System.out.println(productId);
		System.out.println(productName);
		System.out.println(price);
		System.out.println(Quantity);
		System.out.println(total);
		System.out.println(size);
		doGet(request, response);
	}*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	Integer totalItem = Integer.valueOf(request.getParameter("totalItem"));
	Double grandTotal = Double.valueOf(request.getParameter("grandTotal"));
	List<Map<String, String>> itemList=null;
	
	CreateOrderRepository orderDao = new CreateOrderRepository();
	
	orderDao.addOrder(totalItem, grandTotal, itemList);
	System.out.println(totalItem);
	System.out.println(grandTotal);
	
	doGet(request, response);
	}

}
