/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;


/**
 *
 * @author hp
 */
@WebServlet("/UploadServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
                 maxFileSize = 1024 * 1024 * 10, // 10MB
                 maxRequestSize = 1024 * 1024 * 50) // 50MB
public class UploadServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fileName = "";
        response.setContentType("text/html;charset=UTF-8");
      
            // Get the uploaded file
            Part filePart = request.getPart("image");
            
            
             response.getWriter().println("<p>filename "+ filePart.getName() +" </p>");
             fileName = filePart.getSubmittedFileName();
            response.getWriter().println("<p>filename "+ fileName +" </p>");
            // Specify the directory to save the uploaded image
            String uploadDir = getServletContext().getInitParameter("file-upload"); 
            
                     response.getWriter().println("<p>uploadDir "+ uploadDir +" </p>");
            
            // Save the uploaded file to the specified directory
            try
            {
            //filePart.write(uploadDir + fileName);
           
             InputStream fileContent = filePart.getInputStream();
            Files.copy(fileContent, Paths.get(uploadDir, fileName), StandardCopyOption.REPLACE_EXISTING);
            
            // Display a success message
            response.getWriter().println("<p>Image uploaded successfully!</p>");
            // response.getWriter().println("<p>Image uploaded successfully!</p>");
        } catch (Exception e) {
            // Display an error message
            response.getWriter().println("<p>Failed to upload image: " + e.getMessage() + "</p>");
        }
         String type = request.getParameter("type");
        String propertyType = request.getParameter("propertyType");
        String budget = request.getParameter("budget");
        String location = request.getParameter("location");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
 String dataFilePath = "data1.txt";
        // Save the data to the text file
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(dataFilePath, true))) {
              
            writer.write(fileName + "|" + type + "|" + propertyType + "|" + budget + "|" + location + "|" + title + "|" + content);
            writer.newLine();
        } catch (IOException e) {
            e.printStackTrace();
        }

        // Redirect to the upload success page
        response.sendRedirect("uploadSuccess.jsp");
        }
    }

    


