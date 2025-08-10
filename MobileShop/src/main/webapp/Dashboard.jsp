<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .container { margin-top: 40px; }
        .table thead { background-color: #004080; color: white; }
        .btn-action { margin-right: 5px; }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-center text-primary mb-4">Product List</h2>

    <!-- Add Product Button -->
    <div class="mb-3">
        <a href="addProduct" class="btn btn-secondary">Insert Products +</a>
    </div>

    <!-- Products Table -->
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>#</th>
                <th>Model Name</th>
                <th>Brand</th>
                <th>Price</th>
                <th>Stock Quantity</th>
                <th>Features</th>
                <th>Warranty</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${not empty list}">
                    <c:forEach items="${list}" var="p" varStatus="loop">
                        <tr>
                            <td>${loop.index + 1}</td>
                            <td>${p.modelName}</td>
                            <td>${p.brand}</td>
                            <td>${p.price}</td>
                            <td>${p.stockQuantity}</td>
                            <td>${p.features}</td>
                            <td>${p.warranty_period}</td>
                            <td>
                                <a href="editProduct?prodid=${p.prodid}" class="btn btn-sm btn-warning btn-action">Edit</a> 
                                <a href="deleteProduct?prodid=${p.prodid}" class="btn btn-sm btn-danger btn-action"
                                   onclick="return confirm('Are you sure you want to delete this product?')">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="8" class="text-center">No product found.</td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>
</div>

</body>
</html>
