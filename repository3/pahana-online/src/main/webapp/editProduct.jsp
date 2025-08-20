<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/bootstrap.min.css">
<meta charset="UTF-8">
<title>Edit Product</title>
<style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f4f8;
            margin: 50px auto;
            max-width: 600px;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            margin-top: 25px;
            width: 100%;
            background-color: #28a745;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        .back-link {
            text-align: center;
            margin-top: 20px;
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
<h2>✏️ Edit Product</h2>

<form action="product" method="post">
    <input type="hidden" name="action" value="update"/>
    <input type="hidden" name="id" value="${product.productId}"/>

    <label for="name">Product Name:</label>
    <input type="text" name="name" id="name" value="${product.name}" required/>

    <label for="description">Description:</label>
    <input type="text" name="description" id="description" value="${product.description}" required/>

    <label for="price">Price (Rs):</label>
    <input type="text" name="price" id="price" value="${product.price}" required/>

    <label for="stock">Stock Quantity:</label>
    <input type="number" name="stock" id="stock" value="${product.stock}" required min="0"/>

    <input type="submit" value="Update Product"/>
</form>

<div class="back-link">
    <a href="ListProducts.jsp">⬅ Back to Product List</a>
</div>

</body>
</html>