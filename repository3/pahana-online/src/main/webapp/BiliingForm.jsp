<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    // Simple session guard
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Billing Form</title>
<style>
        @media print {
            .no-print { display: none !important; }
            .card { box-shadow: none !important; border: none; }
            body { background: #fff; }   
        }
</style>
</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Pahana Edu</a>
    </div>
</nav>
<div class="container py-4">
    <div class="row justify-content-center">
        <div class="col-lg-6">
            <div class="card shadow-sm">
                <div class="card-header bg-white">
                    <h5 class="mb-0">Create Billing</h5>
                </div>
                <div class="card-body">
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">${error}</div>
                    </c:if>
                    <form method="post" action="${pageContext.request.contextPath}/billing" id="billingForm" novalidate>
                        <div class="mb-3">
                            <label for="customerId" class="form-label">Customer ID</label>
                            <input type="number" class="form-control" id="customerId" name="customerId" required min="1">
                            <div class="invalid-feedback">Please enter a valid Customer ID.</div>
                        </div>
                        <div class="mb-3">
                            <label for="unitsConsumed" class="form-label">Units Consumed</label>
                            <input type="number" step="0.01" class="form-control" id="unitsConsumed" name="unitsConsumed" required min="0">
                            <div class="invalid-feedback">Units must be 0 or greater.</div>
                        </div>
                        <div class="d-flex gap-2">
                            <button class="btn btn-primary" type="submit">Generate Bill</button>
                            <a class="btn btn-outline-secondary" href="home.jsp">Cancel</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    (function(){
        const form = document.getElementById('billingForm');
        form.addEventListener('submit', function(e){
            if(!form.checkValidity()){
                e.preventDefault();
                e.stopPropagation();
            }
            form.classList.add('was-validated');
        });
    })();
</script>
</body>
</html>