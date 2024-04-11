<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.BufferedWriter" %>
<%@ page import="java.io.IOException" %>


    
    
    
<%
     String filePath = "leads.txt";
   
   String name = request.getParameter("name");
    String email = request.getParameter("email");
    String subject = request.getParameter("subject");
    String message = request.getParameter("message");
     
    String leadData = name + "|" + email + "|" + subject + "|" + message;
    
   
    
    try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath, true))) {
        writer.write(leadData);
        writer.newLine();
    } catch (IOException e) {
        e.printStackTrace();
    }
%>

<html>
<head>
    <title>Lead Saved</title>
</head>
<body>
    <h1>Lead Saved</h1>
    <p>Thank you for your submission!</p>
    <% 
        String referringPage = request.getHeader("Referer");
        String pageName = "";
if (referringPage != null) {
    // The referringPage variable now contains the URL of the referring HTML page.
    // You can extract the page name or path from it as needed.
    String[] parts = referringPage.split("/");
     pageName = parts[parts.length - 1]; // This assumes the page name is at the end of the URL.
    //out.println("Referring HTML page: " + pageName);
} else {
    //out.println("No referring page found.");
}
String htmlPage = pageName;
 
response.sendRedirect(htmlPage);
%>
</body>
</html>
