<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="css/site.css">

<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-6jHF7Z3XI3fF4XZixAuSu0gGKrXwoX/w3uFPxC56OtjChio7wtTGJWRW53Nhx6Ev"
	crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Home</title>
</head>

<body>

	<div class="container white">

		<jsp:include page="/WEB-INF/common/nav_after.jsp"></jsp:include>

		<!-- end of nav bar -->

		<div class="row">
			<c:if test="${created eq true}">
				<div class="col-md-12">
					<div class="alert alert-success alert-dismissible fade show"
						role="alert">
						<strong>Success</strong> You have successfully registered.
						<button type="button" class="close" data-dismiss="alert"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				</div>
			</c:if>
			<c:if test="${ex eq true}">
				<div class="col-md-12">
					<div class="alert alert-danger alert-dismissible fade show"
						role="alert">
						<strong>Error!</strong> Cannot register at this time. Please try
						after some time.
						<button type="button" class="close" data-dismiss="alert"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				</div>
			</c:if>
		</div>

		<div class="row">
			<div class="col-md-2 col-sm-4">

				<div class="left-navigation">
					<ul class="list">
						<li>Home</li>
						<li>Office</li>
						<li>School</li>
						<li>Gym</li>
						<li>Art Class</li>
						<li>Hike Club</li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 col-sm-8 main-content">
				<div class="row">

					<div class="col-md-12">
						<div class="row">
							<div class="col-xl-3 col-sm-6 mb-3">
								<div class="card text-white bg-primary o-hidden h-100">
									<div class="card-body">
										<div class="card-body-icon">
											<i class="fas fa-fw fa-comments"></i>
										</div>
										<div class="mr-5">26 New Messages!</div>
									</div>
									<a class="card-footer text-white clearfix small z-1" href="#">
										<span class="float-left">View Details</span> <span
										class="float-right"> <i class="fas fa-angle-right"></i>
									</span>
									</a>
								</div>
							</div>
							<div class="col-xl-3 col-sm-6 mb-3">
								<div class="card text-white bg-warning o-hidden h-100">
									<div class="card-body">
										<div class="card-body-icon">
											<i class="fas fa-fw fa-list"></i>
										</div>
										<div class="mr-5">11 New Tasks!</div>
									</div>
									<a class="card-footer text-white clearfix small z-1" href="#">
										<span class="float-left">View Details</span> <span
										class="float-right"> <i class="fas fa-angle-right"></i>
									</span>
									</a>
								</div>
							</div>
							<div class="col-xl-3 col-sm-6 mb-3">
								<div class="card text-white bg-success o-hidden h-100">
									<div class="card-body">
										<div class="card-body-icon">
											<i class="fas fa-fw fa-shopping-cart"></i>
										</div>
										<div class="mr-5">123 New Orders!</div>
									</div>
									<a class="card-footer text-white clearfix small z-1" href="#">
										<span class="float-left">View Details</span> <span
										class="float-right"> <i class="fas fa-angle-right"></i>
									</span>
									</a>
								</div>
							</div>
							<div class="col-xl-3 col-sm-6 mb-3">
								<div class="card text-white bg-danger o-hidden h-100">
									<div class="card-body">
										<div class="card-body-icon">
											<i class="fas fa-fw fa-life-ring"></i>
										</div>
										<div class="mr-5">13 New Tickets!</div>
									</div>
									<a class="card-footer text-white clearfix small z-1" href="#">
										<span class="float-left">View Details</span> <span
										class="float-right"> <i class="fas fa-angle-right"></i>
									</span>
									</a>
								</div>
							</div>
						</div>

					</div>
				</div>
				<footer id="footer">
					<div class="row">
						<div class="col-lg-12">

							<ul class="list-unstyled">
								<li class="float-lg-right"><a href="#top">Back to top</a></li>
								<li><a href="https://blog.bootswatch.com"
									onclick="pageTracker._link(this.href); return false;">Blog</a></li>
								<li><a href="https://blog.bootswatch.com/rss/">RSS</a></li>
								<li><a href="https://twitter.com/bootswatch">Twitter</a></li>
								<li><a href="https://github.com/thomaspark/bootswatch/">GitHub</a></li>
								<li><a href="../help/#api">API</a></li>
								<li><a href="../help/#donate">Donate</a></li>
							</ul>
							<p>
								Made by <a href="https://thomaspark.co">Thomas Park</a>.
							</p>
							<p>
								Code released under the <a
									href="https://github.com/thomaspark/bootswatch/blob/master/LICENSE">MIT
									License</a>.
							</p>
							<p>
								Based on <a href="https://getbootstrap.com" rel="nofollow">Bootstrap</a>.
								Icons from <a href="https://fontawesome.com/" rel="nofollow">Font
									Awesome</a>. Web fonts from <a href="https://fonts.google.com/"
									rel="nofollow">Google</a>.
							</p>

						</div>
					</div>

				</footer>
			</div>

		</div>


	</div>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/additional-methods.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script src="js/site.js"></script>
</body>

</html>