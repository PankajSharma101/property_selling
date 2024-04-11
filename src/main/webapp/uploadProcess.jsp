<%@ page import="java.io.BufferedWriter" %>
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.nio.file.Files" %>
<%@ page import="java.nio.file.Path" %>
<%@ page import="java.nio.file.Paths" %>
<%@ page import="java.nio.file.StandardCopyOption" %>
<%@ page import="javax.servlet.annotation.MultipartConfig" %>

<%-- Add the @MultipartConfig annotation --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- Set the maximum file size (optional) --%>
<%@ page import="javax.servlet.annotation.WebServlet" %>
<%-- Add the @WebServlet annotation --%>

<%-- Configure the servlet as multipart using @MultipartConfig --%>
<%-- Set the maximum file size (optional) --%>
<%-- You can adjust the values as per your requirements --%>
@WebServlet(name = "UploadProcessServlet", urlPatterns = "/uploadProcess", loadOnStartup = 1)
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2, // 2MB
    maxFileSize = 1024 * 1024 * 10, // 10MB
    maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class UploadProcessServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uploadDirectory = "upload/";
        String dataFilePath = "data.txt";

        String fileName = "";
        String imagePath = "";

        // Process the uploaded image file
        if (request.getPart("image") != null) {
            Part filePart = request.getPart("image");
            fileName = filePart.getSubmittedFileName();
            imagePath = uploadDirectory + fileName;

            // Save the image file to the upload directory
            Path imagePathTemp = Paths.get(imagePath);
            Files.copy(filePart.getInputStream(), imagePathTemp, StandardCopyOption.REPLACE_EXISTING);
        }

        // Process the other form inputs
        String type = request.getParameter("type");
        String propertyType = request.getParameter("propertyType");
        String budget = request.getParameter("budget");
        String location = request.getParameter("location");
        String title = request.getParameter("title");
        String content = request.getParameter("content");

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
