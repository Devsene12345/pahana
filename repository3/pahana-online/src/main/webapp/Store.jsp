<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href = "css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<meta charset="UTF-8">
<title>Store</title>
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
        padding: 80px 0;
        text-align: center;
    }
    .hero-section h1 {
        font-size: 3.2rem;
        font-weight: 700;
        margin-bottom: 20px;
    }
    .hero-section p {
        font-size: 1.2rem;
        font-weight: 300;
        max-width: 600px;
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
        margin-bottom: 40px;
        font-weight: 700;
        color: #343a40;
    }
    .filter-buttons {
        text-align: center;
        margin-bottom: 50px;
    }
    .filter-buttons .btn {
        margin: 5px;
        font-weight: 600;
        border-radius: 50px;
        padding: 10px 20px;
    }
    .product-card {
        background-color: #ffffff;
        border: none;
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.08);
        transition: transform 0.3s ease, box-shadow 0.3s ease, opacity 0.4s ease;
        height: 100%;
        display: flex;
        flex-direction: column;
        margin-bottom: 30px;
    }
    .product-card:hover {
        transform: translateY(-10px);
        box-shadow: 0 15px 40px rgba(0,0,0,0.12);
    }
    .product-card .card-img-top {
        border-top-left-radius: 15px;
        border-top-right-radius: 15px;
        height: 220px;
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
        margin-bottom: 10px;
    }
    .product-card .card-text {
        color: #6c757d;
        flex-grow: 1;
        margin-bottom: 15px;
    }
    .product-price {
        font-size: 1.4rem;
        font-weight: 700;
        color: #007bff;
        margin-bottom: 15px;
    }
    .product-rating .fa-star {
        color: #ffc107;
    }
    .product-card .btn-buy {
        font-weight: 600;
        padding: 10px 20px;
        border-radius: 50px;
        margin-top: auto;
    }
    
    /* Hiding products */
    .product-item.hide {
        display: none;
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
                        <a class="nav-link" href="#">Welcome to Pahana Book Shop</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-primary btn-nav" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-primary btn-nav" href="Register.jsp">Register</a>
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
                Your one-stop shop for all educational materials. Explore our collection and find everything you need for a successful academic journey.
            </p>
            <div>
                <a href="#store" class="btn btn-primary">Shop Now</a>
                <a href="Register.jsp" class="btn btn-secondary">Create Account</a>
            </div>
        </div>
    </section>

    <!-- Store Section -->
    <section id="store" class="store-section">
        <div class="container">
            <h2 class="section-title">Store</h2>
            
            <!-- Filter Buttons -->
            <div class="filter-buttons">
               <button class="btn btn-primary" onclick="filterProducts('all')">All</button>
               <button class="btn btn-outline-primary" onclick="filterProducts('book')">Books</button>
               <button class="btn btn-outline-primary" onclick="filterProducts('notebook')">Notebook</button>
               <button class="btn btn-outline-primary" onclick="filterProducts('pen')">Pen</button>
               <button class="btn btn-outline-primary" onclick="filterProducts('backpack')">School Backpack</button>
               <button class="btn btn-outline-primary" onclick="filterProducts('geometry')">Geometry Box</button>
               <button class="btn btn-outline-primary" onclick="filterProducts('art')">Art Supply Kit</button>
            </div>
            
            <!-- Store Items -->
            <div class="row">
                <!-- Product items will be placed here -->
                
                <!-- Books -->
                <div class="col-lg-4 col-md-6 product-item" data-category="book">
                    <div class="card product-card">
                        <img src="https://www.heinzmarketing.com/blog/gotta-read-atomic-habits-by-james-clear-motivation-action-and-keeping-good-habits/" class="card-img-top" alt="Atomic Habits">
                        <div class="card-body">
                            <h5 class="card-title">Atomic Habits</h5>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
                            <p class="product-price">$12.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 product-item" data-category="book">
                    <div class="card product-card">
                        <img src="https://wizdomapp.com/robert-kiyosakis-rich-dad-poor-dad/" class="card-img-top" alt="Rich Dad Poor Dad">
                        <div class="card-body">
                            <h5 class="card-title">Rich Dad Poor Dad</h5>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
                            <p class="product-price">$12.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                 <div class="col-lg-4 col-md-6 product-item" data-category="book">
                    <div class="card product-card">
                        <img src="https://www.ebay.com/itm/364164559983" class="card-img-top" alt="Madol Duwa">
                        <div class="card-body">
                            <h5 class="card-title">Madol Duwa</h5>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
                            <p class="product-price">$12.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 product-item" data-category="book">
                    <div class="card product-card">
                        <img src="images/BOSL.jpg" class="card-img-top" alt="Madol Duwa">
                        <div class="card-body">
                            <h5 class="card-title">Birds of Sri Lanka</h5>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
                            <p class="product-price">$12.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 product-item" data-category="book">
                    <div class="card product-card">
                        <img src="images/Wild.jpg" class="card-img-top" alt="Madol Duwa">
                        <div class="card-body">
                            <h5 class="card-title">Wild Sri Lanka</h5>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
                            <p class="product-price">$12.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 product-item" data-category="book">
                    <div class="card product-card">
                        <img src="images/World of Wildlife.jpg" class="card-img-top" alt="Madol Duwa">
                        <div class="card-body">
                            <h5 class="card-title">World of Wildlife</h5>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
                            <p class="product-price">$12.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 product-item" data-category="book">
                    <div class="card product-card">
                        <img src="images/Snakes of Sri Lanka.jpg" class="card-img-top" alt="Madol Duwa">
                        <div class="card-body">
                            <h5 class="card-title">Snakes of Sri Lanka (Sinhala Version)</h5>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
                            <p class="product-price">$12.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 product-item" data-category="book">
                    <div class="card product-card">
                        <img src="images/Feel good.png" class="card-img-top" alt="Madol Duwa">
                        <div class="card-body">
                            <h5 class="card-title">Feel Good Productivity</h5>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
                            <p class="product-price">$12.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 product-item" data-category="book">
                    <div class="card product-card">
                        <img src="images/TDOAC.jpg" class="card-img-top" alt="Madol Duwa">
                        <div class="card-body">
                            <h5 class="card-title">The Diary Of A CEO</h5>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
                            <p class="product-price">$12.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 product-item" data-category="book">
                    <div class="card product-card">
                        <img src="images/The Psychology of Money.jpg" class="card-img-top" alt="Madol Duwa">
                        <div class="card-body">
                            <h5 class="card-title">The Psychology of Money</h5>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
                            <p class="product-price">$12.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 product-item" data-category="book">
                    <div class="card product-card">
                        <img src="images/ikigai-the-japanese-secret-to-a-long-and-happy-life.jpg" class="card-img-top" alt="Madol Duwa">
                        <div class="card-body">
                            <h5 class="card-title">IKIGAI</h5>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
                            <p class="product-price">$12.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                


                <!-- Notebooks -->
                <div class="col-lg-4 col-md-6 product-item" data-category="notebook">
                    <div class="card product-card">
                        <img src="images/Atlas-Spirex-Spiral-Note-Book-100-pages.jpg" class="card-img-top" alt="Notebook">
                        <div class="card-body">
                            <h5 class="card-title">Atlas Spirex Spiral Note Book</h5>
                            <p class="card-text">A high-quality notebook for all your writing needs. 100 pages, ruled.</p>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                            <p class="product-price">$5.49</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                 <div class="col-lg-4 col-md-6 product-item" data-category="notebook">
                    <div class="card product-card">
                        <img src="images/Atlas CR Books 120 pages.jpg" class="card-img-top" alt="CR Book">
                        <div class="card-body">
                            <h5 class="card-title">Atlas CR Book 120 pages</h5>
                            <p class="card-text">A high-quality CR book for all your writing needs.</p>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                            <p class="product-price">$4.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <!-- Pens -->
                <div class="col-lg-4 col-md-6 product-item" data-category="pen">
                    <div class="card product-card">
                        <img src="images/WF2272401.jpg" class="card-img-top" alt="Atlas Max Pen">
                        <div class="card-body">
                            <h5 class="card-title">Atlas Max Pen</h5>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i></div>
                            <p class="product-price">$1.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 product-item" data-category="pen">
                    <div class="card product-card">
                        <img src="images/Atlas-Chooty-Pen-0.7-Red.jpg" class="card-img-top" alt="Atlas Chooty Pen">
                        <div class="card-body">
                            <h5 class="card-title">Atlas Chooty Red</h5>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i></div>
                            <p class="product-price">$0.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 product-item" data-category="pen">
                    <div class="card product-card">
                        <img src="images/White Board Marker Green.jpg" class="card-img-top" alt="Atlas Chooty Pen">
                        <div class="card-body">
                            <h5 class="card-title">White Board Marker Green</h5>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i></div>
                            <p class="product-price">$0.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 product-item" data-category="pen">
                    <div class="card product-card">
                        <img src="images/Artline550A WhiteBoard Marker blue.jpg" class="card-img-top" alt="Atlas Chooty Pen">
                        <div class="card-body">
                            <h5 class="card-title">Artline550A WhiteBoard Marker Blue</h5>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i></div>
                            <p class="product-price">$0.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>

                <!-- Backpacks -->
                <div class="col-lg-4 col-md-6 product-item" data-category="backpack">
                    <div class="card product-card">
                        <img src="images/School Bag1.jpg" class="card-img-top" alt="Backpack">
                        <div class="card-body">
                            <h5 class="card-title">School Backpack</h5>
                            <p class="card-text">Durable and spacious backpack for students. Multiple compartments.</p>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i></div>
                            <p class="product-price">$24.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                

                <!-- Geometry Box -->
                <div class="col-lg-4 col-md-6 product-item" data-category="geometry">
                    <div class="card product-card">
                        <img src="images/Nataraj Geomatry Box.jpg" class="card-img-top" alt="Geometry Box">
                        <div class="card-body">
                            <h5 class="card-title">Nataraj Geometry Box</h5>
                            <p class="card-text">Complete mathematical instrument set for students.</p>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
                            <p class="product-price">$15.00</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 product-item" data-category="geometry">
                    <div class="card product-card">
                        <img src="images/Atlas Mathematical Box.jpg" class="card-img-top" alt="Geometry Box">
                        <div class="card-body">
                            <h5 class="card-title">Atlas Mathematical Box</h5>
                            <p class="card-text">Complete mathematical instrument set for students.</p>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
                            <p class="product-price">$15.00</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>

                <!-- Art Supplies -->
                <div class="col-lg-4 col-md-6 product-item" data-category="art">
                    <div class="card product-card">
                        <img src="images/Panda Water Colors.png" class="card-img-top" alt="Art Supplies">
                        <div class="card-body">
                            <h5 class="card-title">Panda Water Colors</h5>
                            <p class="card-text">Includes a vibrant set of watercolors for the young artist.</p>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i></div>
                            <p class="product-price">$19.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                 <div class="col-lg-4 col-md-6 product-item" data-category="art">
                    <div class="card product-card">
                        <img src="images/Artist Paint.jpg" class="card-img-top" alt="Paint Brush">
                        <div class="card-body">
                            <h5 class="card-title">Artist Paint Brush Set</h5>
                            <p class="card-text">A set of high-quality brushes for all painting needs.</p>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i></div>
                            <p class="product-price">$8.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 product-item" data-category="art">
                    <div class="card product-card">
                        <img src="images/Drawing Board.webp" class="card-img-top" alt="Paint Brush">
                        <div class="card-body">
                            <h5 class="card-title">Drawing Board</h5>
                            <p class="card-text">A set of high-quality brushes for all painting needs.</p>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i></div>
                            <p class="product-price">$8.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 product-item" data-category="art">
                    <div class="card product-card">
                        <img src="images/Camlin Drawing.jpeg" class="card-img-top" alt="Paint Brush">
                        <div class="card-body">
                            <h5 class="card-title">Camlin Drawing</h5>
                            <p class="card-text">A set of high-quality brushes for all painting needs.</p>
                            <div class="product-rating mb-2"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i></div>
                            <p class="product-price">$8.99</p>
                            <a href="#" class="btn btn-primary btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <p>&copy; 2025 Pahana Edu. All Rights Reserved.</p>
        </div>
    </footer>

    <!-- JavaScript for filtering -->
    <script>
        function filterProducts(category) {
            // Get all product items
            const items = document.querySelectorAll('.product-item');
            
            // Handle button active state
            const buttons = document.querySelectorAll('.filter-buttons .btn');
            buttons.forEach(button => {
                // Check if the button's onclick attribute contains the selected category
                if (button.getAttribute('onclick').includes(`'${category}'`)) {
                    button.classList.add('btn-primary');
                    button.classList.remove('btn-outline-primary');
                } else {
                    button.classList.remove('btn-primary');
                    button.classList.add('btn-outline-primary');
                }
            });

            // Loop through all items and show/hide them
            items.forEach(item => {
                const itemCategory = item.getAttribute('data-category');
                if (category === 'all' || category === itemCategory) {
                    item.classList.remove('hide');
                } else {
                    item.classList.add('hide');
                }
            });
        }
    </script>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>