<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Image Uploader</title>
</head>
<body>
    <h1>Image Uploader</h1>
    
    <%-- Form to upload the image --%>
    <form action="UploadServlet" method="post" enctype="multipart/form-data">
         <label for="image">Image:</label>
        <input type="file" name="image" accept="image/*" required><br>
        
        
        
        <label for="type">Type:</label>
        <input type="text" name="type" required><br>
        
        <label for="propertyType">Property Type:</label>
         <select  name = "propertyType">
                                    <option selected>Property Type</option>
                                    <option value="1">Residential</option>
                                    <option value="2">Commercial</option>
                                    <option value="3">Industrial Properties</option>
                                </select>
        
        <label for="budget">Budget:</label>
        <select  name ="budget">
                                    <option selected >Budget</option>
                                    <option value="1">More than 1 Crore</option>
                                    <option value="2">Between 1 to 2 Crore</option>
                                    <option value="3">Between 2 to 3 Crore</option>
                                    <option value="4">Between 3 to 4 Crore</option>
                                    <option value="5">More than 4 Crore</option>
                                </select>
        
        <label for="location">Location:</label>
        <input type="text" name="location" required><br>
        
        <label for="title">Title:</label>
        <input type="text" name="title" required><br>
        
        <label for="content">Content:</label>
        <textarea name="content" rows="5" required></textarea><br>
        
        <input type="submit" value="Upload">
    </form>
</body>
</html>
