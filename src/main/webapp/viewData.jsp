<!-- viewData.jsp -->
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.IOException" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>View Data</title>
    
</head>
<body>
    <h1>View Data</h1>
    <br>
     <form action="delete" method ="post">
            
            
            <input type="submit" value="Delete Property">
             
   
        <br>
        <table border="6">
        <tr>
            <th>Delete</th>
            <th>Image Name</th>
            <th>Image</th>
            <th>Type</th>
            <th>Property Type</th>
            <th>Budget</th>
            <th>Location</th>
            <th>Title</th>
            <th>Content</th>
        </tr>
        
        <% 
            String dataFilePath = "data1.txt";
            String line;
            
            try (BufferedReader reader = new BufferedReader(new FileReader(dataFilePath))) {
                while ((line = reader.readLine()) != null) {
                    String[] entryData = line.split("\\|");
                    String imageFileName = entryData[0];
                    String type = entryData[1];
                    String propertyType = entryData[2];
                    String budget = entryData[3];
                    String location = entryData[4];
                    String title = entryData[5];
                    String content = entryData[6];
        %>
                    <tr>
                      <td> 
       
       
                       <input type="radio" name="option" value = "<%=imageFileName%>">
                           </td>

                         <td><%= imageFileName %></td>
                          <td><img src="upload\<%=imageFileName%>" width="200" height="150"></td>
                        <td><%= type %></td>
                        <td><%= propertyType %></td>
                        <td><%= budget %></td>
                        <td><%= location %></td>
                        <td><%= title %></td>
                        <td><%= content %></td>
                    </tr>
        <%          
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        %>
    </table>
    </form>
</body>
</html>
