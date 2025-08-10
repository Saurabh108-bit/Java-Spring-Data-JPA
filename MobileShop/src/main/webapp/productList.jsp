<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h2>Product List</h2>

<!-- Search form -->
<form action="${pageContext.request.contextPath}/products/search" method="get">
    <input type="text" name="keyword" placeholder="Search by brand/model" required/>
    <button type="submit">Search</button>
</form>

<!-- Price filter -->
<form action="${pageContext.request.contextPath}/products/filter/price" method="get">
    Min: <input type="number" step="0.01" name="min" required/>
    Max: <input type="number" step="0.01" name="max" required/>
    <button type="submit">Filter by Price</button>
</form>

<!-- Brand filter -->
<form action="${pageContext.request.contextPath}/products/filter/brand" method="get">
    <input type="text" name="brand" placeholder="Enter brand name" required/>
    <button type="submit">Filter by Brand</button>
</form>

<!-- Low stock -->
<a href="${pageContext.request.contextPath}/products/low-stock">Show Low Stock Products</a>

<hr/>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Brand</th>
        <th>Model</th>
        <th>Price</th>
        <th>Stock Quantity</th>
        <th>Warranty</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.id}</td>
            <td>${product.brand}</td>
            <td>${product.modelName}</td>
            <td>${product.price}</td>
            <td>${product.stock_quantity}</td>
            <td>${product.warrantyPeriod}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
