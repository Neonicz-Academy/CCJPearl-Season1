package com.CodingChallenge.PearlFashion.Product.List.Servlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.CodingChallenge.PearlFashion.Product.List.Repositories.ProductListImageRepository;
import com.CodingChallenge.PearlFashion.Update.Repositories.UpdateImgRepository;

/**
 * Servlet implementation class ProductListImageServlet
 */
@WebServlet("/ProductListImageServlet")
public class ProductListImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductListImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long productId = Long.valueOf(request.getParameter("productId"));
		System.out.println("id :" + productId);
		ProductListImageRepository findPathObj = new ProductListImageRepository();
		String fileName =  findPathObj.getImagePath(productId);
		System.out.println("Path :" + fileName);
		FileInputStream fis = new FileInputStream(fileName);
        BufferedInputStream bis = new BufferedInputStream(fis);             
        BufferedOutputStream output = new BufferedOutputStream(response.getOutputStream());
        for (int data; (data = bis.read()) > -1;) {
          output.write(data);
          output.flush();
        }
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
