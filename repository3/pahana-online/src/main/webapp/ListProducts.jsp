<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.pahana.model.Product" %>
<%@ page import="com.pahana.DAO.ProductDAO" %>
<%
    List<Product> products = (List<Product>) request.getAttribute("products");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<meta charset="UTF-8">
<title>List Products</title>
<style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f9f9f9;
            padding: 40px;
            max-width: 960px;
            margin: auto;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }
        .actions {
            text-align: right;
            margin-bottom: 15px;
        }
        .actions a {
            background-color: #28a745;
            color: white;
            text-decoration: none;
            padding: 10px 16px;
            border-radius: 5px;
            font-weight: bold;
        }
        .actions a:hover {
            background-color: #218838;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
            font-size: 15px;
        }
        th {
            background-color: #007BFF;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f4f4f4;
        }
        a.edit-btn, a.delete-btn {
            padding: 6px 12px;
            border-radius: 4px;
            text-decoration: none;
            font-weight: bold;
        }
        a.edit-btn {
            background-color: #ffc107;
            color: #000;
        }
        a.delete-btn {
            background-color: #dc3545;
            color: white;
        }
        a.edit-btn:hover {
            background-color: #e0a800;
        }
        a.delete-btn:hover {
            background-color: #c82333;
        }
        .back-link {
            margin-top: 20px;
            text-align: center;
        }
        .back-link a {
            color: #007BFF;
            text-decoration: none;
        }
        .back-link a:hover {
            text-decoration: underline;
        }
</style>
</head>
<body>
    <h2>📦 Product List</h2>

    <div class="actions">
        <a href="addProduct.jsp">➕ Add New Product</a>
    </div>

<% if (products != null && !products.isEmpty()) { %>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price (Rs)</th>
            <th>Stock</th>
            <th>Actions</th>
        </tr>
        <% for (Product p : products) { %>
        <tr>
            <td><%= p.getProduct_id() %></td>
            <td><%= p.getName() %></td>
            <td><%= p.getDescription() %></td>
            <td><%= p.getPrice() %></td>
            <td><%= p.getStock() %></td>
            <td>
                <a class="edit-btn" href="product?action=edit&id=<%=p.getProduct_id()%>">Edit</a>
                <a class="delete-btn" href="product?action=delete&id=<%=p.getProduct_id()%>"
                   onclick="return confirm('Are you sure you want to delete this product?');">Delete</a>
            </td>
        </tr>
        <% } %>
    </table>
<% } else { %>
    <p style="text-align:center; font-size:18px; color:#666;">No products found.</p>
<% } %>

    <div class="back-link">
        <a href="adminDashBoard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
