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
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Path;

@WebServlet("/delete")

public class delete extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
           
          
             String del = request.getParameter("option");
         

           
           String dataFilePath = "data1.txt";
        String tempFilePath = "temp.txt";

        try (BufferedReader reader = new BufferedReader(new FileReader(dataFilePath));
             BufferedWriter writer = new BufferedWriter(new FileWriter(tempFilePath))) {

            String line;
            Path imagePath;
                 
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split("\\|"); // Assuming "|" is used as a separator
                String fileName = parts[0]; // Assuming filename is stored at index 0

                if (!fileName.equals(del)) {
                    writer.write(line);
                    writer.newLine();
                }
                
            }
              out.println("<h2>Property is deleted</h2>");
        
         out.println("<h1><a href = \"viewData.jsp\"> Back to View Property Page </a></h1>");
             String uploadDir = getServletContext().getInitParameter("file-upload");
                   imagePath = Paths.get(uploadDir , del);
                    Files.deleteIfExists(imagePath);
                  
        } catch (IOException e) {
            //e.printStackTrace();
        }

        // Replace the original file with the updated content
        try {
            Files.move(Paths.get(tempFilePath), Paths.get(dataFilePath), StandardCopyOption.REPLACE_EXISTING);
        } catch (IOException e) {
            //e.printStackTrace();
        }
        
        
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
