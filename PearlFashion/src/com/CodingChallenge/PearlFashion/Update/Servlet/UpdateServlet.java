package com.CodingChallenge.PearlFashion.Update.Servlet;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

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
import com.CodingChallenge.PearlFashion.Product.List.Repositories.ProductListRepository;
import com.CodingChallenge.PearlFashion.Update.Repositories.UpdateRepository;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = "C:\\Users\\KISHAN\\JavaImages";
    
    public UpdateServlet() {
        super();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
    	Long productId= null;
    	  System.out.println("Inside doget");
    	  RequestDispatcher dispatcher = null;
    		if((null != request.getAttribute("updated")) && (request.getAttribute("updated").equals("success"))) {
    			 productId = Long.valueOf(request.getAttribute("productId").toString()) ;
    			System.out.println("updated"+ request.getAttribute("updated"));
    			 dispatcher = request.getRequestDispatcher("ProductListServlet");
    		}else
    		{
    			 productId =  Long.valueOf(request.getParameter("productId"));
    			 dispatcher = request.getRequestDispatcher("update.jsp");
    		}
    		
    		System.out.println("PID "+productId);
    		ProductListRepository productDetailRepo =new ProductListRepository();
    		Map<String, String> productDetail = productDetailRepo.selectProductDetailByProductId(productId);
    		request.setAttribute("productDetail", productDetail);
    	    dispatcher.forward(request, response);
    	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		Long productId = null;
		String image = null;
		String productName = null;
		String size = null;
		Double price = null;
		String brandName = null;
		String colour = null;
		System.out.println("editing product");
		
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory())
						.parseRequest(new ServletRequestContext(request));
				for(FileItem item : multiparts){
                    if(item.isFormField()){
                    	System.out.println("Form field :> " + item);
                    
                    	
                    	if(item.getFieldName().equals("productId")){
                    		productId = Long.valueOf(item.getString());
                    		System.out.println("iteId  :"+productId);
                   	}
                    	if(item.getFieldName().equals("productName")){
                    		productName = item.getString();
                    		System.out.println("item Name  :"+productName);
                   	}
                    	if(item.getFieldName().equals("size")){
                    		size = item.getString();
                    		System.out.println("item size  :"+size);
                   	}
                    	if(item.getFieldName().equals("price")){
                    		price = Double.valueOf(item.getString());
                    		System.out.println("item price  :"+price);
                   	}
                    	if(item.getFieldName().equals("brandName")){
                    		brandName = item.getString();
                    		System.out.println("item brandname  :"+brandName);
                   	}
                    	if(item.getFieldName().equals("colour")){
                    		colour = item.getString();
                    		System.out.println("item color :"+colour);
                   	}
                    	
                    	
                    }else {
                    	//System.out.println("File :> " + item);
                    	String name = new File(item.getName()).getName();
                		//System.out.println("Last Path>>>>>>>>>>"+UPLOAD_DIRECTORY + File.separator + name);
                		File imgDirectory = new File(UPLOAD_DIRECTORY);
                		if (!imgDirectory.exists()) {
                			//System.out.println("Directory doesn't exist");
                			imgDirectory.mkdirs();
            			} else {
            				System.out.println("directory exists");
            			}
                        item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
                        request.setAttribute("image", UPLOAD_DIRECTORY + File.separator + name);
                        //System.out.println(request.getAttribute("image"));
                        image = (String) request.getAttribute("image");
                    }
                }
				request.setAttribute("message", "File Uploaded Successfully");
				if((productName != null && productName.isEmpty()) && (price != null ) &&
						(size != null && size.isEmpty())  &&
						(brandName != null && brandName.isEmpty())) {
					
					System.out.println("Failed Validation");
		           
				}else {

					UpdateRepository update = new UpdateRepository();
					update.updateProduct(productId, image, productName, size, price, brandName, colour);
						
					}
			} catch (Exception ex) {
				request.setAttribute("message", "File Upload Failed due to " + ex);
			}
		} else {
			request.setAttribute("message", "Sorry this Servlet only handles file upload request"); 
		}
		request.setAttribute("updated", "success");
		request.setAttribute("productId", productId);
		doGet(request, response);
	}

	}


