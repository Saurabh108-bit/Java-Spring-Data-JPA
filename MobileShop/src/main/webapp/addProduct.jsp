<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background: #f4f4f4;
        }
        .form-container {
            background: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 0px 12px rgba(0,0,0,0.1);
            max-width: 500px;
            margin: auto;
        }
        h2 {
            text-align: center;
            color: #007bff;
        }
        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }
        input[type="text"], input[type="email"], textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button {
            margin-top: 20px;
            background: #007bff;
            color: #fff;
            border: none;
            padding: 12px 20px;
            cursor: pointer;
            border-radius: 5px;
            width: 100%;
        }
        button:hover {
            background: #0056b3;
        }
        a {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #555;
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Add Product</h2>
    <form action="insertProduct" method="post">

        <label for="model_name">Model Name:</label>
        <input type="text" id="model_name" name="model_name" placeholder="Enter Model Name" required>

        <label for="brand">Brand:</label>
        <input type="text" id="brand" name="brand" placeholder="Enter Brand" required>

        <label for="price">Price:</label>
        <input type="text" id="price" name="price" placeholder="Enter Price" required>
        
        <label for="stockQuantity">Stock Quantity:</label>
        <input type="text" id="stockQuantity" name="stockQuantity" placeholder="Stock Quantity" required>

        <label for="features">Features:</label>
        <textarea id="features" name="features" rows="3" required> </textarea>
        
        <label for="warranty_period">Warranty:</label>
        <input type="text" id="warranty_period" name="warranty_period" placeholder="Enter Warranty Period" required>

        <button type="submit">Save Product</button>
    </form>

    <a href="viewProduct">Back to Product List</a>
</div>

</body>
</html>
