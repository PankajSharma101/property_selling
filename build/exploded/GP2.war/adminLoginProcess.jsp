<!-- adminLoginProcess.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login Processing</title>
</head>
<body>
    <h1>Login Processing</h1>
    <%-- Retrieve the entered username and password from the request --%>
   
    
    <% String enteredUsername = request.getParameter("username");
       String enteredPassword = request.getParameter("password");

       // Validate the username and password
       String validUsername = "pankaj";
       String validPassword = "hello@2212";

       if (enteredUsername.equals(validUsername) && enteredPassword.equals(validPassword)) {
           // Username and password are correct, create a session and redirect to admin home page
           session.setAttribute("admin", enteredUsername);
           response.sendRedirect("adminHome.jsp");
       } else {
       session.setAttribute("data", "Wrong UserName & Password");
       response.sendRedirect("adminLogin.jsp");
           // Invalid credentials, display error message
    %>
    
    <% } %>
</body>
</html>
