<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href = "css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<meta charset="UTF-8">
<title>Pahana Edu</title>
<style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
        }

        /* Navigation Bar */
        .navbar {
            background-color: #ffffff;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            padding: 1rem 1.5rem;
        }
        .navbar-brand {
            font-weight: 700;
            color: #0056b3 !important;
        }
        .navbar-brand .fa-book-open {
            margin-right: 10px;
        }
        .nav-link, .btn-nav {
            font-weight: 600;
        }
        .btn-nav {
            margin-left: 10px;
        }

        /* Hero Section */
        .hero-section {
            background: linear-gradient(45deg, #0056b3, #007bff);
            color: #ffffff;
            padding: 100px 0;
            text-align: center;
        }
        .hero-section h1 {
            font-size: 3.5rem;
            font-weight: 700;
            margin-bottom: 20px;
        }
        .hero-section p {
            font-size: 1.25rem;
            font-weight: 300;
            max-width: 700px;
            margin: 0 auto 30px auto;
        }
        .hero-section .btn {
            font-size: 1.1rem;
            padding: 12px 30px;
            border-radius: 50px;
            font-weight: 600;
            margin: 0 10px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .hero-section .btn-primary {
            background-color: #ffffff;
            color: #007bff;
            border: none;
        }
        .hero-section .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 4px 15px rgba(255,255,255,0.2);
        }
        .hero-section .btn-secondary {
            background-color: transparent;
            border: 2px solid #ffffff;
            color: #ffffff;
        }
         .hero-section .btn-secondary:hover {
            background-color: #ffffff;
            color: #007bff;
            transform: translateY(-3px);
            box-shadow: 0 4px 15px rgba(255,255,255,0.2);
        }

        /* Store Section */
        .store-section {
            padding: 80px 0;
        }
        .section-title {
            text-align: center;
            margin-bottom: 60px;
            font-weight: 700;
            color: #343a40;
        }
        .product-card {
            background-color: #ffffff;
            border: none;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            height: 100%;
            display: flex;
            flex-direction: column;
        }
        .product-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 40px rgba(0,0,0,0.12);
        }
        .product-card .card-img-top {
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
            height: 200px;
            object-fit: cover;
        }
        .product-card .card-body {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            padding: 25px;
        }
        .product-card .card-title {
            font-size: 1.25rem;
            font-weight: 600;
            margin-bottom: 15px;
        }
        .product-card .card-text {
            flex-grow: 1;
        }
        .product-card .btn {
            margin-top: auto;
        }
        .carousel-control-prev-icon{
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 100%;
        
        }
        .carousel-control-next-icon {
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 100%;
        }

        /* Footer */
        .footer {
            background-color: #343a40;
            color: #ffffff;
            padding: 40px 0;
            text-align: center;
        }
        .footer p {
            margin: 0;
        }
</style>
</head>
<body>
   <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="home.jsp">
                <i class="fas fa-book-open"></i>
                Pahana Edu
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    
                        <li class="nav-item">
                            <a class="nav-link" href="#">Welcome, To Pahana Book Shop</a>
                        </li>
                       
                        <li class="nav-item">
                            <a class="btn btn-outline-primary btn-nav" href="UserLogin.jsp">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-primary btn-nav" href="CustomerRegister.jsp">Register</a>
                        </li>
                    
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="container">
            <h1>Pahana Edu Bookshop</h1>
            <p>
                Where items for you need for educational needs.
            </p>
            
                <div>
                    <button type="button" class="btn btn-primary" onclick="window.location.href='UserLogin.jsp'">Get Started</button>
                    <button type="button" class="btn btn-secondary" onclick="window.location.href='CustomerRegister.jsp'">Create Account</button>
                </div>
               
        </div>
    </section>

    <!-- Store Section with Carousel -->
    <section class="store-section">
        <div class="container">
            <h2 class="section-title">Buy Our Items</h2>
            <div id="productCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <!-- Slide 1 -->
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card product-card">
                                    <img src="https://www.heinzmarketing.com/blog/gotta-read-atomic-habits-by-james-clear-motivation-action-and-keeping-good-habits/" class="card-img-top" alt="Product Image">
                                    <div class="card-body">
                                        <h5 class="card-title">Books</h5>
                                        <p class="card-text">Those who love for Reading</p>
                                        <a href="#" class="btn btn-primary" onclick="window.location.href='Store.jsp'">Buy Now</a>
                                    </div>
                                </div>
                            </div>
                           
                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card product-card">
                                    <img src="https://www.nytimes.com/wirecutter/reviews/best-notebooks/" class="card-img-top" alt="Product Image">
                                    <div class="card-body">
                                        <h5 class="card-title">Notebook</h5>
                                        <p class="card-text">A high-quality notebook for all your writing needs. 200 pages, ruled.</p>
                                        <a href="#" class="btn btn-primary" onclick="window.location.href='Store.jsp'">Buy Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card product-card">
                                    <img src="https://no.rs-online.com/web/p/ink-pens/1794035" class="card-img-top" alt="Product Image">
                                    <div class="card-body">
                                        <h5 class="card-title">Pen</h5>
                                        <p class="card-text">A set of 12 vibrant gel pens. Smooth writing and long-lasting ink.</p>
                                        <a href="#" class="btn btn-primary" onclick="window.location.href='Store.jsp'">Buy Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Slide 2 -->
                    
                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card product-card">
                                    <img src="https://papertree.com.bd/product/doms-geotron-mathematical-drawing-instruments-box-2/?srsltid=AfmBOooREn7fUzf1ellaTuoyB7bP0pnZSMgOyMeraCSaWSxpL56XXEaY" class="card-img-top" alt="Product Image">
                                    <div class="card-body">
                                        <h5 class="card-title">Geometry Box</h5>
                                        <p class="card-text">Complete mathematical instrument set for students and professionals.</p>
                                        <a href="#" class="btn btn-primary" onclick="window.location.href='Store.jsp'">Buy Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card product-card">
                                    <img src="images/Art-Materials.webp" class="card-img-top" alt="Product Image">
                                    <div class="card-body">
                                        <h5 class="card-title">Art Supply Kit</h5>
                                        <p class="card-text">Includes crayons, color pencils, and watercolors for the young artist.</p>
                                        <a href="#" class="btn btn-primary" onclick="window.location.href='Store.jsp'">Buy Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Carousel Controls -->
                
                <a class="carousel-control-prev" href="#productCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                
                
                <a class="carousel-control-next" href="#productCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </section>


    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <p>&copy; 2025 Pahana Edu. All Rights Reserved.</p>
        </div>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>
</html>