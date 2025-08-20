<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Add Product</title>
   <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            margin: 50px auto;
            max-width: 600px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            margin-top: 20px;
            width: 100%;
            padding: 10px;
            background: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background: #0056b3;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 15px;
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
  <h2>Add Product</h2>

<div class="container">
    <div class="form-container">
        <div class="form-title">Add New Product</div>
        <form action="product" method="post">
            <input type="hidden" name="action" value="add">

            <div class="mb-3">
                <label for="name" class="form-label">Product Name</label>
                <input type="text" name="name" class="form-control" id="name" placeholder="Enter product name" required>
            </div>

            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <textarea name="description" class="form-control" id="description" rows="3" placeholder="Enter description"></textarea>
            </div>

            <div class="mb-3">
                <label for="price" class="form-label">Price (Rs)</label>
                <input type="number" name="price" step="0.01" class="form-control" id="price" placeholder="Enter price" required>
            </div>

            <div class="mb-3">
                <label for="stockl" class="form-label">Stock</label>
                <input type="number" name="stock" class="form-control" id="stock" placeholder="Enter quantity in stock" required>
            </div>

            <div class="d-grid">
                <button type="submit" class="btn btn-primary">Add Product</button>
            </div>
        </form>
    </div>
</div>

  

</body>
</html>