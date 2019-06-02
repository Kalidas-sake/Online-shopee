package com.controllers;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.connection.DBconnection;
import com.services.ItemServices;
import com.services.ItemServicesImpl;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.*;
import org.apache.commons.fileupload.servlet.*;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;

/**
 * Servlet implementation class ItemController
 */
@WebServlet("/ItemController")
public class ItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*String name = request.getParameter("inputItemName");
		String desc = request.getParameter("inputDesc");
		float price = Integer.parseInt(request.getParameter("inputPrice"));
		String cat = request.getParameter("inputCategory");
		int quant = Integer.parseInt(request.getParameter("inputQuant"));
		
		*/
		/*
		
		DBconnection dbc = new DBconnection();
		ItemServices iss = new ItemServicesImpl(); 
		
		try {
			Connection con = dbc.getConnection();
			iss.addItem(con,name,desc,price,  cat, quant);
			dbc.closeCon(con);
			response.sendRedirect("admin/item.jsp");
		}
		catch(Exception e)
		{
			response.sendRedirect("admin/errorpage.html");
		}
		
		*/
		Random rand = new Random();
        int num;
		PrintWriter out = response.getWriter();
		String newFileName = "";
		 try {
		        List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
		        Map<String, String> formItems = new LinkedHashMap<String, String>();
		        for (FileItem item : items) {
		            if (item.isFormField()) {
		                // Process regular form field (input type="text|radio|checkbox|etc", select, etc).
		                String fieldName = item.getFieldName();
		                String fieldValue = item.getString();
		                //out.print(fieldName+": ");
		                //out.print(fieldValue+"\n");
		                
		                formItems.put(fieldName, fieldValue);
		                
		            } else {
		                // Process form file field (input type="file").
		                String fieldName = item.getFieldName();
		                String fileName = FilenameUtils.getName(item.getName());
		                InputStream fileContent = item.getInputStream();
		                
		                byte[] image = IOUtils.toByteArray(fileContent); // Apache commons IO.
		                num = rand.nextInt(100000) ;
		                newFileName = num+fileName;
		                
		                FileUtils.writeByteArrayToFile(new File("/home/kalidas/eclipse-workspace/Online-shopee/WebContent/uploads/"+newFileName), image);
		            }
		        }
		        System.out.println(formItems);
		        System.out.println(newFileName);
		        
		        
		        String name = formItems.get("inputItemName");
				String desc = formItems.get("inputDesc");
				float price = Integer.parseInt(formItems.get("inputPrice"));
				String cat = formItems.get("inputCategory");
				int quant = Integer.parseInt(formItems.get("inputQuant"));
				
				DBconnection dbc = new DBconnection();
				ItemServices iss = new ItemServicesImpl(); 
				
				try {
					Connection con = dbc.getConnection();
					iss.addItem(con,name,desc,price,  cat, quant,newFileName);
					dbc.closeCon(con);
					response.sendRedirect("admin/item.jsp");
				}
				catch(Exception e)
				{
					System.out.println(e);
					response.sendRedirect("admin/errorpage.html");
				}
		        
		        
		    } catch (FileUploadException e) {
		        throw new ServletException("Cannot parse multipart request.", e);
		    }

		
		
		
	}

}
