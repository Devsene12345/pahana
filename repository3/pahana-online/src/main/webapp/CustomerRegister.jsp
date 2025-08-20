<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register Customer • Pahana Edu</title>
    <!-- Use context path so it works no matter the WAR name -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    

    <style>
        :root{
            --brand:#0d6efd;
            --brand-alt:#6610f2;
            --bg:#f5f7fb;
            --card-bg:#ffffff;
            --text:#222;
        }

        html, body {
            height: 100%;
        }
        body {
            background: radial-gradient(1200px 600px at 10% -10%, rgba(13,110,253,.12), transparent 60%),
                        radial-gradient(1200px 600px at 110% 110%, rgba(102,16,242,.10), transparent 60%),
                        var(--bg);
            color: var(--text);
        }

        .brand-nav {
            background: linear-gradient(135deg, var(--brand), var(--brand-alt));
        }
        .brand-nav .navbar-brand {
            font-weight: 700;
            letter-spacing: .2px;
        }

        .form-wrap {
            max-width: 720px;
            margin: 56px auto;
            padding: 0 16px;
        }

        .form-card {
            background: var(--card-bg);
            border: 1px solid rgba(0,0,0,.05);
            border-radius: 18px;
            box-shadow: 0 10px 30px rgba(0,0,0,.08);
            overflow: hidden;
        }

        .form-card__header {
            background: linear-gradient(135deg, rgba(13,110,253,.12), rgba(102,16,242,.12));
            padding: 20px 24px;
            border-bottom: 1px solid rgba(0,0,0,.05);
        }
        .form-card__header h2 {
            margin: 0;
            font-size: 1.25rem;
            font-weight: 700;
        }
        .form-card__body {
            padding: 24px;
        }

        .form-label {
            font-weight: 600;
        }

        .form-control, .form-select {
            border-radius: 10px;
            border: 1px solid #dfe3ea;
        }
        .form-control:focus, .form-select:focus {
            border-color: var(--brand);
            box-shadow: 0 0 0 .2rem rgba(13,110,253,.15);
        }

        .btn-brand {
            background: linear-gradient(135deg, var(--brand), var(--brand-alt));
            border: none;
            border-radius: 12px;
            padding: 10px 18px;
            transition: transform .04s ease, filter .2s ease;
        }
        .btn-brand:hover { filter: brightness(1.05); }
        .btn-brand:active { transform: translateY(1px); }

        .helper-text {
            font-size: .85rem;
            color: #6c757d;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark brand-nav">
    <div class="container">
        <a class="navbar-brand" href="home.jsp">Pahana Edu</a>
        <div class="ms-auto d-flex gap-2">
            <a class="btn btn-light btn-sm" href="home.jsp">Home</a>
            <a class="btn btn-outline-light btn-sm" href="help.jsp">Help</a>
        </div>
    </div>
</nav>

<main class="form-wrap">
    <div class="form-card">
        <div class="form-card__header">
            <h2>Customer Registration</h2>
        </div>
        <div class="form-card__body">
            <form action="customer" method="post" novalidate>
                <input type="hidden" name="action" value="register">

                <div class="row g-3">
                    <div class="col-md-6">
                        <label class="form-label" for="accountNumber">Account Number</label>
                        <input id="account_number" type="text" class="form-control" name="account_number" required>
                        <div class="helper-text">e.g., AC-2025-001</div>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label" for="name">Full Name</label>
                        <input id="name" type="text" class="form-control" name="name" required>
                    </div>

                    <div class="col-12">
                        <label class="form-label" for="address">Address</label>
                        <input id="address" type="text" class="form-control" name="address" placeholder="No., Street, City">
                    </div>

                    <div class="col-md-6">
                        <label class="form-label" for="email">Email</label>
                        <input id="email" type="email" class="form-control" name="email" required>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label" for="phone">Phone</label>
                        <input id="phone" type="text" class="form-control" name="phone" required>
                    </div>
                </div>

                <div class="d-flex justify-content-end mt-4">
                    <a class="btn btn-outline-secondary me-2" href="home.jsp">Cancel</a>
                    <button type="submit" class="btn btn-brand text-white">Register</button>
                </div>
                <%
                  String success = request.getParameter("success");
                  if ("true".equals(success)) {
                %>
                      <div class="alert alert-success">Customer registered successfully!</div>
               <%
                   }
               %>
                
            </form>
        </div>
    </div>
</main>

</body>
</html>
