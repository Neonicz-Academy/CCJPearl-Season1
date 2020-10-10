package com.CodingChallenge.PearlFashion.List.Order.Servlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.CodingChallenge.PearlFashion.Home.Products.Repositories.productImageRepository;
import com.CodingChallenge.PearlFashion.List.Order.Repositories.ListOrderImageRepository;

/**
 * Servlet implementation class ListOrderImageServlet
 */
@WebServlet("/ListOrderImageServlet")
public class ListOrderImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListOrderImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long productId = Long.valueOf(request.getParameter("productId"));
		System.out.println("id :" + productId);
		ListOrderImageRepository findPathObj = new ListOrderImageRepository();
		String fileName =  findPathObj.getImagePath(productId);
		System.out.println("Path :" + fileName);
		FileInputStream fis = new FileInputStream(fileName);
        BufferedInputStream bis = new BufferedInputStream(fis);             
        BufferedOutputStream output = new BufferedOutputStream(response.getOutputStream());
        for (int data; (data = bis.read()) > -1;) {
          output.write(data);
          output.flush();
        } 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
