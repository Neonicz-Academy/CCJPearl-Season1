package com.CodingChallenge.PearlFashion.Create.Order.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.CodingChallenge.PearlFashion.Create.Order.Repositories.CreateOrderRepository;
import com.CodingChallenge.PearlFashion.List.Order.Repositories.ListOrderRepository;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@WebServlet("/CreateOrderServlet")
public class CreateOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public CreateOrderServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		if(null != request.getAttribute("orderId")) {
			Long orderId = Long.valueOf((request.getAttribute("orderId")).toString());
			System.out.println("orderId>>>>>>>>>>>>>>>>>>>>>"+orderId);
			//request.setAttribute("orderId", request.getAttribute("orderId"));
			response.sendRedirect("OrderConfirmationServlet?orderId="+orderId);
		}else {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/cart.jsp");
	       dispatcher.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	String cart = request.getParameter("cart");
	System.out.println("cart>>>"+cart);
	JsonObject jsonObject = new JsonParser().parse(cart).getAsJsonObject();
	JsonArray cartItems = jsonObject.get("cartItems").getAsJsonArray();
	Integer totalItem = cartItems.size();
	Double grandTotal = Double.valueOf(request.getParameter("grandTotal"));
	List<Map<String, String>> itemList= new ArrayList<Map<String, String>>();
	for(int i = 0; i < cartItems.size(); i++) {
		Map<String, String> item = new HashMap<String, String>();
		item.put("size","s");
		item.put("productId", cartItems.get(i).getAsJsonObject().get("productId").getAsString());
		item.put("productName", cartItems.get(i).getAsJsonObject().get("name").getAsString());
		item.put("price", cartItems.get(i).getAsJsonObject().get("price").getAsString());
		item.put("total", cartItems.get(i).getAsJsonObject().get("TotalPrice").getAsString());
		item.put("quantity", cartItems.get(i).getAsJsonObject().get("qty").getAsString());
		itemList.add(item);
	}
	CreateOrderRepository orderDao = new CreateOrderRepository();
	String customerName = request.getParameter("customerName");
	String mobile = request.getParameter("mobile");
	String address = request.getParameter("address");
	Long orderId = orderDao.addOrder(totalItem, grandTotal, itemList, customerName, mobile, address);
	request.setAttribute("orderId", orderId);
	doGet(request, response);
	}

}
