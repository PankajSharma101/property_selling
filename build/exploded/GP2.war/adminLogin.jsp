<!-- adminLogin.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Login</title>
</head>
<body>
    <h1>Admin Login</h1>
    <%-- Check if the admin is already logged in --%>
    <% if (session.getAttribute("admin") != null) {
           // Admin is already logged in, redirect to admin home page
           response.sendRedirect("adminHome.jsp");
       } else {
        
           // Admin is not logged in, display the login form
    %>
    
    <%= session.getAttribute("data") %>
    
    <form action="adminLoginProcess.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" name="username" required><br>
        
        <label for="password">Password:</label>
        <input type="password" name="password" required><br>
        
        <input type="submit" value="Login">
    </form>
    <% } %>
</body>
</html>
