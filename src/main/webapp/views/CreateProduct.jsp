<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
</head>
<body>
    <h2>Add Product</h2>
   
    <form action="upload/" method="post" enctype="multipart/form-data" >
        <label for="id">Product Id:</label>
        <input type="text" name="pId" required>
        <br> 
        <label for="name">Product Name:</label>
        <input type="text" name="name" required>
        <br>
        <label for="image">Product Image:</label>
        <input type="file" name="image" accept="image/*" required>
        <br>
        <label for="quantity">Quantity:</label>
        <input type="number" name="quantity" step="0.01" required>
        <br>
        <input type="submit" value="Upload">
    </form>
</body>
</html>

<!-- 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<h1>Details are given below:</h1><hr>
<table>
<tr>
<td>Id</td>
<td>${id}</td>
</tr>
<tr>
<td>Name</td>
<td>${name}</td>
</tr>
<tr>
<td>Image</td>
<td><img src="data:image/jpg;base64,${image} alt="Girl in a jacket" style="width:50px;height:50px;"></img></td>
</tr>
</table>
</body>
</html> -->