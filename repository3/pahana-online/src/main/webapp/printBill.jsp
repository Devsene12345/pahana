<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    // Session check
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Billing Details</title>
<style>
        @media print {
            .no-print { display: none !important; }
            .card { box-shadow: none !important; border: none; }
            body { background: #fff; }
        }
</style>
</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg navbar-dark bg-primary no-print">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Pahana Edu</a>
        <div class="d-flex gap-2">
            <a href="billingForm.jsp" class="btn btn-light btn-sm">New Bill</a>
            <a href="home.jsp" class="btn btn-light btn-sm">Home</a>
        </div>
    </div>
</nav>

<div class="container py-4">
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="card shadow-sm">
                <div class="card-header bg-white d-flex justify-content-between align-items-center">
                    <div>
                        <h4 class="mb-0">Billing Invoice</h4>
                        <small class="text-muted">Pahana Edu Bookshop, Colombo</small>
                    </div>
                    <button class="btn btn-outline-secondary btn-sm no-print" onclick="window.print()">Print</button>
                </div>
                <div class="card-body">
                    <c:choose>
                        <c:when test="${not empty billing}">
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <h6 class="text-uppercase text-muted">Customer</h6>
                                    <p class="mb-1">Customer ID: <strong>${billing.customer_id}</strong></p>
                                </div>
                                <div class="col-md-6 text-md-end">
                                    <h6 class="text-uppercase text-muted">Invoice</h6>
                                    <p class="mb-1">Date: <strong><%= new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm").format(new java.util.Date()) %></strong></p>
                                </div>
                            </div>

                            <div class="table-responsive">
                                <table class="table table-bordered align-middle">
                                    <thead class="table-light">
                                        <tr>
                                            <th>#</th>
                                            <th>Description</th>
                                            <th class="text-end">Units</th>
                                            <th class="text-end">Rate</th>
                                            <th class="text-end">Amount</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Units consumed</td>
                                            <td class="text-end">${billing.units_consumed}</td>
                                            <td class="text-end">25.00</td>
                                            <td class="text-end">${billing.total_amount}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="d-flex justify-content-end">
                                <div class="w-50">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item d-flex justify-content-between">
                                            <span class="fw-semibold">Subtotal</span>
                                            <span>${billing.total_amount}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between">
                                            <span class="fw-semibold">Tax (0%)</span>
                                            <span>0.00</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between">
                                            <span class="fw-bold">Total</span>
                                            <span class="fw-bold">${billing.total_amount}</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="mt-4">
                                <p class="text-muted small mb-0">This is a system-generated invoice. Thank you for your business!</p>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="alert alert-info">No billing data available. Please generate a bill first.</div>
                        </c:otherwise>
                    </c:choose>
                </div>
                <div class="card-footer bg-white no-print">
                    <a href="billingForm.jsp" class="btn btn-primary">Generate Another</a>
                    <a href="home.jsp" class="btn btn-outline-secondary">Back to Home</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>