<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Pahana Edu — Admin Dashboard</title>

<!-- Try local Bootstrap first (if you ship /webapp/CSS/bootstrap.min.css), else use CDN -->
<link rel="stylesheet" href="CSS/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<style>
    :root{
        --brand:#0d6efd;
    }
    body{ background:#f5f7fb; }
    .navbar-brand{ font-weight:700; letter-spacing:.3px; }
    .card-stat{ border:none; border-radius:1rem; box-shadow:0 6px 18px rgba(0,0,0,.06); }
    .card-stat .icon-wrap{
        width:52px;height:52px;border-radius:14px;display:flex;align-items:center;justify-content:center;
        background: rgba(13,110,253,.1);
    }
    .quick-link{ transition:transform .15s ease, box-shadow .15s ease; }
    .quick-link:hover{ transform:translateY(-2px); box-shadow:0 8px 20px rgba(0,0,0,.08); }
    .table thead th{ background:#f0f3f9; }
    .badge-soft{ background:rgba(13,110,253,.12); color:#0d6efd; }
    footer{ color:#667; }
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="adminDashBoard.jsp">Pahana Edu — Admin</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample" aria-controls="navbarsExample" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarsExample">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item"><a class="nav-link active" href="adminDashBoard.jsp">Dashboard</a></li>
        <li class="nav-item"><a class="nav-link" href="list-customers.jsp">Customers</a></li>
        <li class="nav-item"><a class="nav-link" href="list-products.jsp">Products</a></li>
        <li class="nav-item"><a class="nav-link" href="billingForm.jsp">Billing</a></li>
        <li class="nav-item"><a class="nav-link" href="reports.jsp">Reports</a></li>
      </ul>
      <div class="d-flex gap-2">
        <span class="badge rounded-pill text-bg-light">Admin</span>
        <a href="UserController?action=logout" class="btn btn-outline-light btn-sm">Logout</a>
      </div>
    </div>
  </div>
</nav>

<main class="container my-4">

  <!-- Flash message (optional) -->
  <c:if test="${not empty requestScope.success}">
    <div class="alert alert-success alert-dismissible fade show" role="alert">
      <c:out value="${requestScope.success}"/>
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
  </c:if>
  <c:if test="${not empty requestScope.error}">
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
      <c:out value="${requestScope.error}"/>
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
  </c:if>

  <!-- Top stats -->
  <div class="row g-3">
    <div class="col-12 col-sm-6 col-lg-3">
      <div class="card card-stat p-3 h-100">
        <div class="d-flex align-items-center gap-3">
          <div class="icon-wrap">
            <span class="bi bi-people fs-4 text-primary"></span>
          </div>
          <div>
            <div class="text-muted small">Total Customers</div>
            <div class="h4 m-0">
              <c:out value="0" default="0"/>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-12 col-sm-6 col-lg-3">
      <div class="card card-stat p-3 h-100">
        <div class="d-flex align-items-center gap-3">
          <div class="icon-wrap">
            <span class="bi bi-box-seam fs-4 text-primary"></span>
          </div>
          <div>
            <div class="text-muted small">Total Products</div>
            <div class="h4 m-0">
              <c:out value="0" default="0"/>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-12 col-sm-6 col-lg-3">
      <div class="card card-stat p-3 h-100">
        <div class="d-flex align-items-center gap-3">
          <div class="icon-wrap">
            <span class="bi bi-receipt fs-4 text-primary"></span>
          </div>
          <div>
            <div class="text-muted small">Bills Today</div>
            <div class="h4 m-0">
              <c:out value="0" default="0"/>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-12 col-sm-6 col-lg-3">
      <div class="card card-stat p-3 h-100">
        <div class="d-flex align-items-center gap-3">
          <div class="icon-wrap">
            <span class="bi bi-cash-coin fs-4 text-primary"></span>
          </div>
          <div>
            <div class="text-muted small">Revenue (Today)</div>
            <div class="h4 m-0">
              Rs. <c:out value="Rs.0.00" default="0.00"/>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Quick actions -->
  <div class="row g-3 mt-3">
    <div class="col-md-3">
      <a class="text-decoration-none" href="CustomerRegister.jsp">
        <div class="card quick-link h-100">
          <div class="card-body">
            <div class="d-flex align-items-center gap-2">
              <span class="bi bi-person-plus fs-4 text-primary"></span>
              <h6 class="m-0">Add Customer</h6>
            </div>
            <p class="text-muted small mt-2 mb-0">Register a new customer into the system.</p>
          </div>
        </div>
      </a>
    </div>
    <div class="col-md-3">
      <a class="text-decoration-none" href="addProduct.jsp">
        <div class="card quick-link h-100">
          <div class="card-body">
            <div class="d-flex align-items-center gap-2">
              <span class="bi bi-plus-square fs-4 text-primary"></span>
              <h6 class="m-0">Add Product</h6>
            </div>
            <p class="text-muted small mt-2 mb-0">Create or update inventory records.</p>
          </div>
        </div>
      </a>
    </div>
    <div class="col-md-3">
      <a class="text-decoration-none" href="BillingForm.jsp">
        <div class="card quick-link h-100">
          <div class="card-body">
            <div class="d-flex align-items-center gap-2">
              <span class="bi bi-calculator fs-4 text-primary"></span>
              <h6 class="m-0">Create Bill</h6>
            </div>
            <p class="text-muted small mt-2 mb-0">Generate a new bill and print.</p>
          </div>
        </div>
      </a>
    </div>
    <div class="col-md-3">
      <a class="text-decoration-none" href="reports.jsp">
        <div class="card quick-link h-100">
          <div class="card-body">
            <div class="d-flex align-items-center gap-2">
              <span class="bi bi-graph-up-arrow fs-4 text-primary"></span>
              <h6 class="m-0">View Reports</h6>
            </div>
            <p class="text-muted small mt-2 mb-0">Sales and inventory insights.</p>
          </div>
        </div>
      </a>
    </div>
  </div>

  <!-- Recent bills -->
  <div class="card mt-4">
    <div class="card-header d-flex align-items-center justify-content-between">
      <span class="fw-semibold">Recent Bills</span>
      <a href="reports.jsp" class="btn btn-sm btn-outline-primary">View all</a>
    </div>
    <div class="table-responsive">
      <table class="table table-hover align-middle mb-0">
        <thead>
          <tr>
            <th>#</th>
            <th>Customer</th>
            <th>Date</th>
            <th class="text-end">Total (Rs.)</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <c:choose>
            <c:when test="${not empty recentBills}">
              <c:forEach var="bill" items="${recentBills}" varStatus="loop">
                <tr>
                  <td><c:out value="${bill.id}" default="${loop.index + 1}"/></td>
                  <td><c:out value="${bill.customerName}" default="—"/></td>
                  <td><c:out value="${bill.createdAt}" default="—"/></td>
                  <td class="text-end"><c:out value="${bill.total}" default="0.00"/></td>
                  <td>
                    <a class="btn btn-sm btn-outline-secondary" href="printBill.jsp?billId=${bill.id}">Print</a>
                  </td>
                </tr>
              </c:forEach>
            </c:when>
            <c:otherwise>
              <tr>
                <td colspan="5" class="text-center text-muted py-4">No recent bills found.</td>
              </tr>
            </c:otherwise>
          </c:choose>
        </tbody>
      </table>
    </div>
  </div>

</main>

<footer class="container my-5 text-center small">
  <div>© <script>document.write(new Date().getFullYear())</script> Pahana Edu. All rights reserved.</div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous">
 </script>
<!-- Bootstrap Icons -->

</body>
</html>
