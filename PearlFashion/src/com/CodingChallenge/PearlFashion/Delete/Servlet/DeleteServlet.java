package com.CodingChallenge.PearlFashion.Delete.Servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.CodingChallenge.PearlFashion.Delete.Repositories.DeleteRepository;
import com.CodingChallenge.PearlFashion.Product.List.Repositories.ProductListRepository;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*RequestDispatcher dispatcher = null;
		if((null != request.getAttribute("deleted")) && (request.getAttribute("deleted").equals("success"))) {
			 dispatcher = request.getRequestDispatcher("ProductListServlet");	
		}else
		{
			 dispatcher = request.getRequestDispatcher("delete.jsp");
		}
		String productId =  request.getParameter("productId");
		//Long productId =  Long.valueOf(request.getParameter("productId"));
		System.out.println("PID "+productId);
		ProductListRepository productDetailRepo =new ProductListRepository();
		Map<String, String> productDetail = productDetailRepo.selectProductDetailByProductId(Long.valueOf(productId));
		request.setAttribute("productDetail", productDetail);
	    dispatcher.forward(request, response);
	    */
		Long productId =  Long.valueOf(request.getParameter("productId"));	
		DeleteRepository delete = new DeleteRepository();
		delete.deleteProduct(Long.valueOf(productId));
		RequestDispatcher dispatcher = request.getRequestDispatcher("ProductListServlet");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Inside dopost");
		Long productId =  Long.valueOf(request.getParameter("productId"));	
		DeleteRepository delete = new DeleteRepository();
		delete.deleteProduct(Long.valueOf(productId));//,"image",productName,size,price,brandName,colour);

	request.setAttribute("deleted", "success");
		doGet(request, response);
	}

}
