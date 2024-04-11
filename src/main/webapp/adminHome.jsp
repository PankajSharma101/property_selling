<!-- adminHome.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Home</title>
</head>
<body>
    <%-- Check if the admin is logged in --%>
    <% if (session.getAttribute("admin") == null) {
           // Admin is not logged in, redirect to admin login page
           response.sendRedirect("adminLogin.jsp");
       } else {
           // Admin is logged in, display the admin home content
    %>
    <h1>Welcome, <%= session.getAttribute("admin") %>!</h1>
    <p>This is the admin home page.</p>
    
    <h4> <a href="viewLeads.jsp"> View Leads </a> </h4>
    
    <h4> <a href="upload.jsp"> Upload Properties </a> </h4>
    
     <h4> <a href="viewData.jsp"> view Properties </a> </h4>
    <%-- Add more content specific to the admin's home page --%>
    <% } %>
</body>
</html>
