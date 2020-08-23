package com.ImageWork.Servlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetImageServlet
 */
@WebServlet("/GetImageServlet")
public class GetImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Long imageId = Long.valueOf(request.getParameter("id"));
				String fileName = "C:\\Users\\KISHAN\\JavaImages\\m-product-2.jpg";
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
