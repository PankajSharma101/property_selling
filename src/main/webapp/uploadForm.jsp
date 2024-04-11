<!-- uploadForm.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Image Uploader</title>
</head>
<body>
    <h1>Image Uploader</h1>
    <form action="uploadProcess.jsp" method="post">
        <label for="image">Image:</label>
        <input type="file" name="image" required><br>
        
        <label for="type">Type:</label>
        <input type="text" name="type" required><br>
        
        <label for="propertyType">Property Type:</label>
        <input type="text" name="propertyType" required><br>
        
        <label for="budget">Budget:</label>
        <input type="text" name="budget" required><br>
        
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
