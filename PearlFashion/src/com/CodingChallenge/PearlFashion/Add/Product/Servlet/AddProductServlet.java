package com.CodingChallenge.PearlFashion.Add.Product.Servlet;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

import com.CodingChallenge.PearlFashion.Add.Product.Repositories.AddProductRepository;

/**
 * Servlet implementation class AddImageServlet
 */
@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = "C:\\Users\\KISHAN\\JavaImages";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at:").append(request.getContextPath());
		RequestDispatcher dispatcher = request.getRequestDispatcher("addpage.jsp");
        
	       dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String image = null;
		String productName = null;
		String size = null;
		Double price = null;
		String brandName = null;
		String colour = null;
		String createdBy = null;
		String updatedBy = null;
		
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory())
						.parseRequest(new ServletRequestContext(request));
				for(FileItem item : multiparts){
                    if(item.isFormField()){
                    	System.out.println("Form field :> " + item);
                    	
                    	if(item.getFieldName().equals("productName")){
                    		productName = item.getString();
                   	}
                    	if(item.getFieldName().equals("size")){
                    		size = item.getString();
                   	}
                    	if(item.getFieldName().equals("price")){
                    		price = Double.valueOf(item.getString());
                   	}
                    	if(item.getFieldName().equals("brandName")){
                    		brandName = item.getString();
                   	}
                    	if(item.getFieldName().equals("colour")){
                    		colour = item.getString();
                   	}
                    	if(item.getFieldName().equals("createdBy")){
                    		createdBy = item.getString();
                   	}
                    	if(item.getFieldName().equals("updatedBy")){
                    		updatedBy = item.getString();
                   	}
                    	
                    }else {
                    	System.out.println("File :> " + item);
                    	String name = new File(item.getName()).getName();
                		System.out.println("Last Path>>>>>>>>>>"+UPLOAD_DIRECTORY + File.separator + name);
                		File imgDirectory = new File(UPLOAD_DIRECTORY);
                		if (!imgDirectory.exists()) {
                			System.out.println("Directory doesn't exist");
                			imgDirectory.mkdirs();
            			} else {
            				System.out.println("directory exists");
            			}
                        item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
                        request.setAttribute("image", UPLOAD_DIRECTORY + File.separator + name);
                        System.out.println(request.getAttribute("image"));
                        image = (String) request.getAttribute("image");
                    }
                }
				request.setAttribute("message", "File Uploaded Successfully");
				if((productName != null && productName.isEmpty()) && (price != null ) &&
						(size != null && size.isEmpty())  &&
						(brandName != null && brandName.isEmpty()) && (createdBy != null && createdBy.isEmpty()) &&
						(updatedBy != null && updatedBy.isEmpty())) {
					
					System.out.println("Failed Validation");
		           
				}else {
					AddProductRepository AddProductDao = new AddProductRepository();
					AddProductDao.addProduct(image, productName, size, price, brandName, colour, createdBy, updatedBy);
						
					}
			} catch (Exception ex) {
				request.setAttribute("message", "File Upload Failed due to " + ex);
			}
		} else {
			request.setAttribute("message", "Sorry this Servlet only handles file upload request"); 
		}
		doGet(request, response);
	}

}
