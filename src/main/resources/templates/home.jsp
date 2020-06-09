<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="style/style.css">
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js"
	type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />
<link rel="icon" href="/img/img.svg" sizes="96x96" type="image/svg">
<link rel="stylesheet" type="text/css" href="/style/style.css">
<title>MovieCruiser</title>
</head>
<body class="text-white">
	<nav class="navbar navbar-expand-sm navbar-dark">
		<a class="navbar-brand" href=""><i class="material-icons mr-1">camera_roll</i>MovieCruiser</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse ml-auto mr-1 flex-grow-0"
			id="navbarSupportedContent">
			<ul class="navbar-nav">
				
			</ul>
		</div>
	</nav>
	<section class="search-banner text-white py-3 form-arka-plan"
		id="search-banner">
		<div class="container abc">
			<div class="container py-5 my-4">
				<div class="row text-center">
					<div class="col-md-12">
						<h2 class="text-white d-flex justify-content-start">Find
							Movie</h2>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="card acik-renk-form">

							<div class="row">
								<div class="col-lg">
									<div class="input-group md-form form-sm form-1">
										<div class="input-group-prepend">
											<span><i class="material-icons text-dark"
												aria-hidden="true">movie</i></span>
										</div>
										<input class="form-control my-0 py-1" type="text"
											placeholder="Search movie" aria-label="Search">
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="row mt-3 d-flex justify-content-center">
		<form action="movie-item-admin">
			<input class="btn btn-default adm" type="submit" value="Admin Page" />
		</form>
	</div>

	<div class="row d-flex justify-content-center mt-3">
		<form action="movie-item-customer">
			<input class="btn btn-default adm" type="submit"
				value="Customer Page" />
		</form>
	</div>
	<h2>Hello!!</h2>

	</div>
	<script language="javascript" type="text/javascript"
		src="footer/footer.js"></script>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>