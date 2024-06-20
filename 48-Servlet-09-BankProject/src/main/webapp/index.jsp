<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Banking Project</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600&family=Roboto&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">


<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
</head>

<body>

	<%
	String msg = (String) request.getParameter("msg");
	if (msg != null)
		out.print(msg);
	%>


	<!--Loader Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary"
			style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Loader End -->

	<!-- Topbar Start -->
	<div class="container-fluid bg-primary px-5 d-none d-lg-block">
		<div class="row gx-0">
			<div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
				<div class="d-inline-flex align-items-center" style="height: 45px;">
					<a
						class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2"
						href=""><i class="fab fa-twitter fw-normal"></i></a> <a
						class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2"
						href=""><i class="fab fa-facebook-f fw-normal"></i></a> <a
						class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2"
						href=""><i class="fab fa-linkedin-in fw-normal"></i></a>
				</div>
			</div>
			<div class="col-lg-4 text-center text-lg-end">
				<div class="d-inline-flex align-items-center" style="height: 45px;">
					<a href="#"><small class="me-3 text-light"><i
							class="fa fa-user me-2"></i>Register</small></a> <a href="#"><small
						class="me-3 text-light"><i class="fa fa-sign-in-alt me-2"></i>Login</small></a>
					<div class="dropdown">
						<a href="#" class="dropdown-toggle text-light"
							data-bs-toggle="dropdown"><small><i
								class="fa fa-home me-2"></i> My Dashboard</small></a>
						<div class="dropdown-menu rounded">
							<a href="#" class="dropdown-item"><i
								class="fas fa-user-alt me-2"></i> My Profile</a> <a href="#"
								class="dropdown-item"><i class="fas fa-comment-alt me-2"></i>
								Inbox</a> <a href="#" class="dropdown-item"><i
								class="fas fa-bell me-2"></i> Notifications</a> <a href="#"
								class="dropdown-item"><i class="fas fa-cog me-2"></i>
								Account Settings</a> <a href="#" class="dropdown-item"><i
								class="fas fa-power-off me-2"></i> Log Out</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->

	<!-- Navbar & Hero Start -->
	<div class="container-fluid position-relative p-0">
		<nav
			class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
			<a href="" class="navbar-brand p-0">
				<h1 class="m-0">
					<i class="fa fa-home-alt me-3"></i>Banking
				</h1> <!-- <img src="img/logo.png" alt="Logo"> -->
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
				<span class="fa fa-bars"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<div class="navbar-nav ms-auto py-0">
					<a href="index.html" class="nav-item nav-link active">Home</a> <a
						href="#" class="nav-item nav-link">Save</a> <a href="#"
						class="nav-item nav-link">Pay</a> <a href="#"
						class="nav-item nav-link">Invest</a> <a href="#"
						class="nav-item nav-link">Borrow</a>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown">Contact Us</a>
						<div class="dropdown-menu m-0">
							<a href="#" class="dropdown-item">Fraud Awareess</a> <a href="#"
								class="dropdown-item">Interest Rate</a> <a href="#"
								class="dropdown-item">Insta Services</a> <a href="#"
								class="dropdown-item">Card, Loan Services</a> <a href="#"
								class="dropdown-item">Account Services</a>

						</div>
					</div>
					<a href="#" class="nav-item nav-link">Contact</a>
				</div>
				<a href="#" class="btn btn-primary rounded-pill py-2 px-4 ms-lg-4">Check
					Status</a>
			</div>
		</nav>

		<!-- Carousel Start -->
		<div class="carousel-header">
			<div id="carouselId" class="carousel slide" data-bs-ride="carousel">
				<ol class="carousel-indicators">
					<li data-bs-target="#carouselId" data-bs-slide-to="0"
						class="active"></li>
					<li data-bs-target="#carouselId" data-bs-slide-to="1"></li>
					<li data-bs-target="#carouselId" data-bs-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<img src="img/carousel-2.jpg" class="img-fluid" alt="Image">
						<div class="carousel-caption">
							<div class="p-3" style="max-width: 900px;">
								<h4 class="text-white text-uppercase fw-bold mb-4"
									style="letter-spacing: 3px;">Explore The World</h4>
								<h1 class="display-2 text-capitalize text-white mb-4">Personal
									Loan EMI!</h1>
								<p class="mb-5 fs-5">Lorem Ipsum is simply dummy text of the
									printing and typesetting industry. Lorem Ipsum has been the
									industry's standard dummy text ever since the 1500s,</p>
								<div class="d-flex align-items-center justify-content-center">
									<a
										class="btn-hover-bg btn btn-primary rounded-pill text-white py-3 px-5"
										href="#">Query Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<img src="img/carousel-1.jpg" class="img-fluid" alt="Image">
						<div class="carousel-caption">
							<div class="p-3" style="max-width: 900px;">
								<h4 class="text-white text-uppercase fw-bold mb-4"
									style="letter-spacing: 3px;">Explore The World</h4>
								<h1 class="display-2 text-capitalize text-white mb-4">Home
									Loan Services</h1>
								<p class="mb-5 fs-5">Lorem Ipsum is simply dummy text of the
									printing and typesetting industry. Lorem Ipsum has been the
									industry's standard dummy text ever since the 1500s,</p>
								<div class="d-flex align-items-center justify-content-center">
									<a
										class="btn-hover-bg btn btn-primary rounded-pill text-white py-3 px-5"
										href="#">Query Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<img src="img/carousel-3.jpg" class="img-fluid" alt="Image">
						<div class="carousel-caption">
							<div class="p-3" style="max-width: 900px;">
								<h4 class="text-white text-uppercase fw-bold mb-4"
									style="letter-spacing: 3px;">Explore The World</h4>
								<h1 class="display-2 text-capitalize text-white mb-4">Netbanking
									Services</h1>
								<p class="mb-5 fs-5">Lorem Ipsum is simply dummy text of the
									printing and typesetting industry. Lorem Ipsum has been the
									industry's standard dummy text ever since the 1500s,</p>
								<div class="d-flex align-items-center justify-content-center">
									<a
										class="btn-hover-bg btn btn-primary rounded-pill text-white py-3 px-5"
										href="#">Query Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselId" data-bs-slide="prev">
					<span class="carousel-control-prev-icon btn bg-primary"
						aria-hidden="false"></span> <span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselId" data-bs-slide="next">
					<span class="carousel-control-next-icon btn bg-primary"
						aria-hidden="false"></span> <span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>
		<!-- Carousel End -->
	</div>

	<!-- Navbar & Hero End -->

	<!-- About Start -->
	<div class="container-fluid about py-5">
		<div class="container py-5">
			<div class="row g-5 align-items-center">
				<div class="col-lg-5">
					<div class="h-100"
						style="border: 50px solid; border-color: transparent #13357B transparent #13357B;">
						<img src="img/about-img.jpg" class="img-fluid w-100 h-100" alt="">
					</div>
				</div>
				<div class="col-lg-7"
					style="background: linear-gradient(rgba(255, 255, 255, .8), rgba(255, 255, 255, .8));">
					<h5 class="section-about-title pe-3">About Us</h5>
					<h1 class="mb-4">
						Welcome to <span class="text-primary">Our Bank</span>
					</h1>
					<p class="mb-4">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Molestias, dolorum, doloribus sunt dicta,
						officia voluptatibus libero necessitatibus natus impedit quam
						ullam assumenda? Id atque iste consectetur. Commodi odit ab saepe!</p>
					<p class="mb-4">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Accusantium quos voluptatem suscipit neque enim,
						doloribus ipsum rem eos distinctio, dignissimos nisi saepe nulla?
						Libero numquam perferendis provident placeat molestiae quia?</p>
					<div class="row gy-2 gx-4 mb-4">
						<div class="col-sm-6">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>Investor
								Relations
							</p>
						</div>
						<div class="col-sm-6">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>Careers
							</p>
						</div>
						<div class="col-sm-6">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>Other
								Stakeholders' Information
							</p>
						</div>
						<div class="col-sm-6">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>News Room
							</p>
						</div>
						<div class="col-sm-6">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>Regulatory
								Disclosures
							</p>
						</div>
						<div class="col-sm-6">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>CSR
							</p>
						</div>
					</div>

					<a class="btn btn-primary rounded-pill py-3 px-5 mt-2" href="">Read
						More</a>
				</div>
			</div>
		</div>
	</div>
	<!-- About End -->

	<!-- sign up Start -->
	<div class="container-fluid booking py-5">
		<div class="container py-5">
			<div class="row g-5 align-items-center">
				<div class="col-lg-6">

					<h1 class="text-white mb-4">All You Need To Know</h1>
					<p class="text-white mb-4">Lorem ipsum dolor sit amet
						consectetur adipisicing elit. Aspernatur maxime ullam esse fuga
						blanditiis accusantium pariatur quis sapiente, veniam doloribus
						praesentium? Repudiandae iste voluptatem fugiat doloribus quasi
						quo iure officia.</p>
					<p class="text-white mb-4">Lorem ipsum dolor sit amet
						consectetur adipisicing elit. Aspernatur maxime ullam esse fuga
						blanditiis accusantium pariatur quis sapiente, veniam doloribus
						praesentium? Repudiandae iste voluptatem fugiat doloribus quasi
						quo iure officia.</p>
					<a href="#"
						class="btn btn-light text-primary rounded-pill py-3 px-5 mt-2">Read
						More</a>
				</div>
				<div class="col-lg-6">
					<h1 class="text-white mb-3">Register</h1>
					<p class="text-white mb-4">
						Get <span class="text-warning">50% Off</span> On Your First
						Adventure Trip With Travela. Get More Deal Offers Here.
					</p>
					<form>
						<div class="row g-3">
							<div class="col-md-6">
								<div class="form-floating">
									<input type="text" class="form-control bg-white border-0"
										id="name" placeholder="Your Name"> <label for="name">Your
										Name</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-floating">
									<input type="email" class="form-control bg-white border-0"
										id="email" placeholder="Your Email"> <label
										for="email">Your Email</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-floating">
									<input type="text" class="form-control bg-white border-0"
										id="password" placeholder="Your Name"> <label
										for="name">Password</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-floating">
									<input type="text" class="form-control bg-white border-0"
										id="confirmpassword" placeholder="Your Name"> <label
										for="confirmpassword"> Confirm Password</label>
								</div>
							</div>



							<div class="col-6">
								<button class="btn btn-primary text-white w-100 py-3"
									type="signin">Sign In</button>
							</div>

							<div class="col-6">
								<button class="btn btn-primary text-white w-100 py-3"
									type="signup">
									<a href="Register.jsp">Sign Up </a>
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- sign up End -->



	<!-- Services Start -->
	<div class="container-fluid bg-light service py-5">
		<div class="container py-5">
			<div class="mx-auto text-center mb-5" style="max-width: 900px;">
				<h5 class="section-title px-3">Searvices</h5>
				<h1 class="mb-0">Our Services</h1>
			</div>
			<div class="row g-4">
				<div class="col-lg-6">
					<div class="row g-4">
						<div class="col-12">
							<div
								class="service-content-inner d-flex align-items-center bg-white border border-primary rounded p-4 pe-0">
								<div class="service-content text-end">
									<h5 class="mb-4">Money Transfer</h5>
									<p class="mb-0">Dolor sit amet consectetur adipisicing
										elit. Non alias eum, suscipit expedita corrupti officiis
										debitis possimus nam laudantium beatae quidem dolore
										consequuntur voluptate rem reiciendis, omnis sequi harum
										earum.</p>
								</div>
								<div class="service-icon p-4">
									<i class="fa fa-globe fa-4x text-primary"></i>
								</div>
							</div>
						</div>
						<div class="col-12">
							<div
								class="service-content-inner d-flex align-items-center  bg-white border border-primary rounded p-4 pe-0">
								<div class="service-content text-end">
									<h5 class="mb-4">Cards Bill</h5>
									<p class="mb-0">Dolor sit amet consectetur adipisicing
										elit. Non alias eum, suscipit expedita corrupti officiis
										debitis possimus nam laudantium beatae quidem dolore
										consequuntur voluptate rem reiciendis, omnis sequi harum
										earum.</p>
								</div>
								<div class="service-icon p-4">
									<i class="fa fa-hotel fa-4x text-primary"></i>
								</div>
							</div>
						</div>
						<div class="col-12">
							<div
								class="service-content-inner d-flex align-items-center bg-white border border-primary rounded p-4 pe-0">
								<div class="service-content text-end">
									<h5 class="mb-4">Account Services</h5>
									<p class="mb-0">Dolor sit amet consectetur adipisicing
										elit. Non alias eum, suscipit expedita corrupti officiis
										debitis possimus nam laudantium beatae quidem dolore
										consequuntur voluptate rem reiciendis, omnis sequi harum
										earum.</p>
								</div>
								<div class="service-icon p-4">
									<i class="fa fa-user fa-4x text-primary"></i>
								</div>
							</div>
						</div>
						<div class="col-12">
							<div
								class="service-content-inner d-flex align-items-center bg-white border border-primary rounded p-4 pe-0">
								<div class="service-content text-end">
									<h5 class="mb-4">Investment</h5>
									<p class="mb-0">Dolor sit amet consectetur adipisicing
										elit. Non alias eum, suscipit expedita corrupti officiis
										debitis possimus nam laudantium beatae quidem dolore
										consequuntur voluptate rem reiciendis, omnis sequi harum
										earum.</p>
								</div>
								<div class="service-icon p-4">
									<i class="fa fa-cog fa-4x text-primary"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="row g-4">
						<div class="col-12">
							<div
								class="service-content-inner d-flex align-items-center bg-white border border-primary rounded p-4 ps-0">
								<div class="service-icon p-4">
									<i class="fa fa-globe fa-4x text-primary"></i>
								</div>
								<div class="service-content">
									<h5 class="mb-4">Borrow</h5>
									<p class="mb-0">Dolor sit amet consectetur adipisicing
										elit. Non alias eum, suscipit expedita corrupti officiis
										debitis possimus nam laudantium beatae quidem dolore
										consequuntur voluptate rem reiciendis, omnis sequi harum
										earum.</p>
								</div>
							</div>
						</div>
						<div class="col-12">
							<div
								class="service-content-inner d-flex align-items-center bg-white border border-primary rounded p-4 ps-0">
								<div class="service-icon p-4">
									<i class="fa fa-hotel fa-4x text-primary"></i>
								</div>
								<div class="service-content">
									<h5 class="mb-4">Shop</h5>
									<p class="mb-0">Dolor sit amet consectetur adipisicing
										elit. Non alias eum, suscipit expedita corrupti officiis
										debitis possimus nam laudantium beatae quidem dolore
										consequuntur voluptate rem reiciendis, omnis sequi harum
										earum.</p>
								</div>
							</div>
						</div>
						<div class="col-12">
							<div
								class="service-content-inner d-flex align-items-center bg-white border border-primary rounded p-4 ps-0">
								<div class="service-icon p-4">
									<i class="fa fa-user fa-4x text-primary"></i>
								</div>
								<div class="service-content">
									<h5 class="mb-4">Offers</h5>
									<p class="mb-0">Dolor sit amet consectetur adipisicing
										elit. Non alias eum, suscipit expedita corrupti officiis
										debitis possimus nam laudantium beatae quidem dolore
										consequuntur voluptate rem reiciendis, omnis sequi harum
										earum.</p>
								</div>
							</div>
						</div>
						<div class="col-12">
							<div
								class="service-content-inner d-flex align-items-center bg-white border border-primary rounded p-4 ps-0">
								<div class="service-icon p-4">
									<i class="fa fa-cog fa-4x text-primary"></i>
								</div>
								<div class="service-content">
									<h5 class="mb-4">Mutual Funds</h5>
									<p class="mb-0">Dolor sit amet consectetur adipisicing
										elit. Non alias eum, suscipit expedita corrupti officiis
										debitis possimus nam laudantium beatae quidem dolore
										consequuntur voluptate rem reiciendis, omnis sequi harum
										earum.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12">
					<div class="text-center">
						<a class="btn btn-primary rounded-pill py-3 px-5 mt-2" href="">Service
							More</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Services End -->








	<!-- Testimonial Start -->
	<div class="container-fluid testimonial py-5">
		<div class="container py-5">
			<div class="mx-auto text-center mb-5" style="max-width: 900px;">
				<h5 class="section-title px-3">Testimonial</h5>
				<h1 class="mb-0">Our Clients Say!!!</h1>
			</div>
			<div class="testimonial-carousel owl-carousel">
				<div class="testimonial-item text-center rounded pb-4">
					<div class="testimonial-comment bg-light rounded p-4">
						<p class="text-center mb-5">Lorem ipsum dolor, sit amet
							consectetur adipisicing elit. Quis nostrum cupiditate, eligendi
							repellendus saepe illum earum architecto dicta quisquam quasi
							porro officiis. Vero reiciendis,</p>
					</div>
					<div class="testimonial-img p-1">
						<img src="img/testimonial-1.jpg" class="img-fluid rounded-circle"
							alt="Image">
					</div>
					<div style="margin-top: -35px;">
						<h5 class="mb-0">John Abraham</h5>
						<p class="mb-0">New York, USA</p>
						<div class="d-flex justify-content-center">
							<i class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i>
						</div>
					</div>
				</div>
				<div class="testimonial-item text-center rounded pb-4">
					<div class="testimonial-comment bg-light rounded p-4">
						<p class="text-center mb-5">Lorem ipsum dolor, sit amet
							consectetur adipisicing elit. Quis nostrum cupiditate, eligendi
							repellendus saepe illum earum architecto dicta quisquam quasi
							porro officiis. Vero reiciendis,</p>
					</div>
					<div class="testimonial-img p-1">
						<img src="img/testimonial-2.jpg" class="img-fluid rounded-circle"
							alt="Image">
					</div>
					<div style="margin-top: -35px;">
						<h5 class="mb-0">John Abraham</h5>
						<p class="mb-0">New York, USA</p>
						<div class="d-flex justify-content-center">
							<i class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i>
						</div>
					</div>
				</div>
				<div class="testimonial-item text-center rounded pb-4">
					<div class="testimonial-comment bg-light rounded p-4">
						<p class="text-center mb-5">Lorem ipsum dolor, sit amet
							consectetur adipisicing elit. Quis nostrum cupiditate, eligendi
							repellendus saepe illum earum architecto dicta quisquam quasi
							porro officiis. Vero reiciendis,</p>
					</div>
					<div class="testimonial-img p-1">
						<img src="img/testimonial-3.jpg" class="img-fluid rounded-circle"
							alt="Image">
					</div>
					<div style="margin-top: -35px;">
						<h5 class="mb-0">John Abraham</h5>
						<p class="mb-0">New York, USA</p>
						<div class="d-flex justify-content-center">
							<i class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i>
						</div>
					</div>
				</div>
				<div class="testimonial-item text-center rounded pb-4">
					<div class="testimonial-comment bg-light rounded p-4">
						<p class="text-center mb-5">Lorem ipsum dolor, sit amet
							consectetur adipisicing elit. Quis nostrum cupiditate, eligendi
							repellendus saepe illum earum architecto dicta quisquam quasi
							porro officiis. Vero reiciendis,</p>
					</div>
					<div class="testimonial-img p-1">
						<img src="img/testimonial-4.jpg" class="img-fluid rounded-circle"
							alt="Image">
					</div>
					<div style="margin-top: -35px;">
						<h5 class="mb-0">John Abraham</h5>
						<p class="mb-0">New York, USA</p>
						<div class="d-flex justify-content-center">
							<i class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i> <i
								class="fas fa-star text-primary"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Testimonial End -->

	<!-- Subscribe Start -->
	<div class="container-fluid subscribe py-5">
		<div class="container text-center py-5">
			<div class="mx-auto text-center" style="max-width: 900px;">
				<h5 class="subscribe-title px-3">Subscribe</h5>
				<h1 class="text-white mb-4">Our Newsletter</h1>
				<p class="text-white mb-5">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Laborum tempore nam, architecto
					doloremque velit explicabo? Voluptate sunt eveniet fuga eligendi!
					Expedita laudantium fugiat corrupti eum cum repellat a laborum
					quasi.</p>
				<div class="position-relative mx-auto">
					<input
						class="form-control border-primary rounded-pill w-100 py-3 ps-4 pe-5"
						type="text" placeholder="Your email">
					<button type="button"
						class="btn btn-primary rounded-pill position-absolute top-0 end-0 py-2 px-4 mt-2 me-2">Subscribe</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Subscribe End -->

	<!-- Footer Start -->
	<div class="container-fluid footer py-5">
		<div class="container py-5">
			<div class="row g-5">
				<div class="col-md-6 col-lg-6 col-xl-3">
					<div class="footer-item d-flex flex-column">
						<h4 class="mb-4 text-white">Company</h4>
						<a href=""><i class="fas fa-angle-right me-2"></i> Overview </a> <a
							href=""><i class="fas fa-angle-right me-2"></i> Investor
							Relations </a> <a href=""><i class="fas fa-angle-right me-2"></i>
							Careers Other Stakeholders' Information </a> <a href=""><i
							class="fas fa-angle-right me-2"></i> News Room Corporate
							Governance </a> <a href=""><i class="fas fa-angle-right me-2"></i>
							CSR </a>

					</div>
				</div>
				<div class="col-md-6 col-lg-6 col-xl-3">
					<div class="footer-item d-flex flex-column">
						<h4 class="mb-4 text-white">Resources</h4>
						<a href=""><i class="fas fa-angle-right me-2"></i> Custom Duty
							Payment </a> <a href=""><i class="fas fa-angle-right me-2"></i>
							Our Corporate commitment </a> <a href=""><i
							class="fas fa-angle-right me-2"></i> HDFC Bank Venture Capital </a> <a
							href=""><i class="fas fa-angle-right me-2"></i> HDFC Bank
							Co-LAB </a> <a href=""><i class="fas fa-angle-right me-2"></i>
							WhatsApp Banking </a> <a href=""><i
							class="fas fa-angle-right me-2"></i> RBI UDGAM-Unclaimed Deposit</a>
						<a href=""><i class="fas fa-angle-right me-2"></i> Link to ODR
							Portal </a>
					</div>
				</div>
				<div class="col-md-6 col-lg-6 col-xl-3">
					<div class="footer-item d-flex flex-column">
						<h4 class="mb-4 text-white">Support</h4>
						<a href=""><i class="fas fa-angle-right me-2"></i> Contact</a> <a
							href=""><i class="fas fa-angle-right me-2"></i> Legal Notice</a>
						<a href=""><i class="fas fa-angle-right me-2"></i> Privacy
							Policy</a> <a href=""><i class="fas fa-angle-right me-2"></i>
							Terms and Conditions</a> <a href=""><i
							class="fas fa-angle-right me-2"></i> Sitemap</a> <a href=""><i
							class="fas fa-angle-right me-2"></i> Cookie policy</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-6 col-xl-3">
					<div class="footer-item">
						<div class="row gy-3 gx-2 mb-4"></div>
						<h4 class="text-white mb-3">Payments</h4>
						<div class="footer-bank-card">
							<a href="#" class="text-white me-2"><i
								class="fab fa-cc-amex fa-2x"></i></a> <a href="#"
								class="text-white me-2"><i class="fab fa-cc-visa fa-2x"></i></a>
							<a href="#" class="text-white me-2"><i
								class="fas fa-credit-card fa-2x"></i></a> <a href="#"
								class="text-white me-2"><i
								class="fab fa-cc-mastercard fa-2x"></i></a> <a href="#"
								class="text-white me-2"><i class="fab fa-cc-paypal fa-2x"></i></a>
							<a href="#" class="text-white"><i
								class="fab fa-cc-discover fa-2x"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->

	<!-- Copyright Start -->
	<div class="container-fluid copyright text-body py-4">
		<div class="container">
			<div class="row g-4 align-items-center">
				<div class="col-md-12 text-center text-md-end mb-md-0">
					<i class="fas fa-copyright me-2"></i><a class="text-white" href="#">Banking</a>,
					All right reserved.
				</div>

			</div>
		</div>
	</div>
	<!-- Copyright End -->

	<!-- Back to Top -->
	<a href="#"
		class="btn btn-primary btn-primary-outline-0 btn-md-square back-to-top"><i
		class="fa fa-arrow-up"></i></a>


	<!-- JavaScript Libraries -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="lib/lightbox/js/lightbox.min.js"></script>


	<!-- Template Javascript -->
	<script src="js/main.js"></script>
</body>

</html>