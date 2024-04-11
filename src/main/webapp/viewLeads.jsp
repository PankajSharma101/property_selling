<!-- viewLeads.jsp -->
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.IOException" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>View Leads</title>
</head>
<body>
    <h1>View Leads</h1>
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Subject</th>
            <th>Message</th>
        </tr>
        <% 
            String filePath = "leads.txt";
            String line;
            
            try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
                while ((line = reader.readLine()) != null) {
                    String[] leadData = line.split("\\|");
                    String name = leadData[0];
                    String email = leadData[1];
                    String subject = leadData[2];
                    String message = leadData[3];
        %>
                    <tr>
                        <td><%= name %></td>
                        <td><%= email %></td>
                        <td><%= subject %></td>
                        <td><%= message %></td>
                    </tr>
        <%          
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        %>
    </table>
</body>
</html>
