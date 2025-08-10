<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Status</title>
</head>
<body>
<%
    String status = (String) request.getAttribute("status");
    if (status != null && !status.isEmpty()) {
%>
    <script type="text/javascript">
        let status = "<%= status.replaceAll("\"", "\\\"") %>"; // escape any quotes
        alert(status);
        if (status.trim() === "Login success" || status.trim() === "Product not found" || status.trim() === "Product updated successfully" || status.trim() === "Success" || status.trim() === "Failed" || status.trim() === "Add Product success"  ) {
            window.location.href = "/viewProduct";
        }
        else if (status.trim() === "Price must be greater than 0" || status.trim() === "Stock quantity must be zero or more"){
        	window.location.href = "/addProduct";
        }
        else {
            window.location.href = "index.jsp";
        }
    </script>
<%
    }
%>
</body>
</html>
