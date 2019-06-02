package com.controllers;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;

import com.connection.DBconnection;

/**
 * Servlet implementation class AddItemServlet
 */
@WebServlet("/AddItemServlet")
public class AddItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

	    try {
	        List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
	        Map<String,String> formItems = new LinkedHashMap<String, String>();
	        for (FileItem item : items) {
	            if (item.isFormField()) {
	                // Process regular form field (input type="text|radio|checkbox|etc", select, etc).
	                String fieldName = item.getFieldName();
	                String fieldValue = item.getString();
	                formItems.put(fieldName,fieldValue);
	            } else {
	                // Process form file field (input type="file").
	                String fieldName = item.getFieldName();
	                String fileName = FilenameUtils.getName(item.getName());
	                InputStream fileContent = item.getInputStream();
	                
	                byte[] image = IOUtils.toByteArray(fileContent); // Apache commons IO.
	                
	                FileUtils.writeByteArrayToFile(new File("/home/kalidas/"+fileName), image);
	            }
	        }
	        
	        
	        
	    } catch (FileUploadException e) {
	        throw new ServletException("Cannot parse multipart request.", e);
	    }
		
	}

}
