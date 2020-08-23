package com.ImageWork.Servlet;

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

/**
 * Servlet implementation class ImageUploadServlet
 */
@WebServlet("/ImageUploadServlet")
public class ImageUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = "C:\\Users\\KISHAN\\JavaImages";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImageUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/saveFile.jsp");
		 dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory())
						.parseRequest(new ServletRequestContext(request));
				for(FileItem item : multiparts){
                    if(item.isFormField()){
                    	System.out.println("Form field :> " + item);
                    	if(item.getFieldName().equals("fullName")){
                    		System.out.println(item.getString());
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
                        request.setAttribute("img", UPLOAD_DIRECTORY + File.separator + name);
                    }
                }
				request.setAttribute("message", "File Uploaded Successfully");
			} catch (Exception ex) {
				request.setAttribute("message", "File Upload Failed due to " + ex);
			}
		} else {
			request.setAttribute("message", "Sorry this Servlet only handles file upload request"); 
		}

		doGet(request, response);
	}

}
