<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Pahana Edu — Admin Login</title>

<link rel="stylesheet" href="CSS/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<style>
  body{
    min-height:100vh;
    display:flex;
    align-items:center;
    justify-content:center;
    background:linear-gradient(135deg, #f0f4ff, #f9fbff);
  }
  .login-card{
    width:100%;
    max-width:460px;
    border:none;
    border-radius:1rem;
    box-shadow:0 10px 28px rgba(0,0,0,.08);
  }
  .brand{ 
       font-weight:700; letter-spacing:.3px; 
  }
</style>
</head>
<body>

<div class="card login-card p-3 p-md-4">
  <div class="card-body">
    <div class="text-center mb-3">
      <h3 class="brand">Pahana Edu — Admin</h3>
      
    </div>

    <c:if test="${not empty requestScope.error}">
      <div class="alert alert-danger" role="alert">
        <c:out value="${requestScope.error}"/>
      </div>
    </c:if>

    <form method="post" action="UserController">
      <input type="hidden" name="role" value="ADMIN"/>
      <div class="mb-3">
        <label class="form-label">Username</label>
        <input type="text" name="username" class="form-control" required autofocus>
      </div>
      <div class="mb-2">
        <label class="form-label">Password</label>
        <input type="password" name="password" class="form-control" required>
      </div>
      <div class="d-flex justify-content-between align-items-center mb-3">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="1" id="remember" name="remember">
          <label class="form-check-label" for="remember">Remember me</label>
        </div>
        <a href="forgot-password.jsp" class="small">Forgot password?</a>
      </div>
      <button type="submit" class="btn btn-primary w-100">Sign In</button>
    </form>

    <div class="text-center mt-3">
      <a href="adminDashBoard.jsp" class="small text-decoration-none">← Back to Home</a>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous">
        </script>
</body>
</html>
