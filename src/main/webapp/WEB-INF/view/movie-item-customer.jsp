<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<link rel="icon" href="img/img.svg" sizes="96x96" type="image/svg">
<link rel="stylesheet" type="text/css" href="style/style.css">
<title>MovieCruiser</title>
</head>
<body>
	<!-- <script language="javascript" type="text/javascript"
		src="header/header-customer.js"></script>
		 -->
		
	<nav class="navbar navbar-expand-sm navbar-dark"><a class="navbar-brand" href="/"><i class="material-icons mr-1" >camera_roll</i>MovieCruiser</a><button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"><span class="navbar-toggler-icon"></span></button><div class="collapse navbar-collapse ml-auto mr-1 flex-grow-0" id="navbarSupportedContent"><input class="form-control" id="myInput" type="text" placeholder="Search.."><ul class="navbar-nav"><li class="nav-item active"><a class="nav-link" href="movie-item-customer">Movie</a></li><li class="nav-item active"><a class="nav-link" href="movie-list-favourite">Favourites</a></li><li><a class="btn btn-primary" href="<c:url value="/logout" />">Logout</a></li></ul></div></nav>

	<section>
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<!-- Slide One - Set the background image for this slide in the line below -->
				<div class="carousel-item active"
					style="background-image: url('https://wallpapercave.com/wp/wp3891853.jpg')">
					<div class="carousel-caption d-none d-md-block">
						<h3 class="display-4">Avengers:Endgame</h3>
						<p class="lead">Watch the superheroes save the world.Now!</p>
					</div>
				</div>
				<!-- Slide Two - Set the background image for this slide in the line below -->
				<div class="carousel-item"
					style="background-image: url('https://wallpapercave.com/wp/wp4121459.jpg')">
					<div class="carousel-caption d-none d-md-block">
						<h3 class="display-4">Alladin</h3>
						<p class="lead">A whole new world awaits.</p>
					</div>
				</div>
				<!-- Slide Three - Set the background image for this slide in the line below -->
				<div class="carousel-item"
					style="background-image: url('https://wallpapercave.com/wp/wp4287364.png')">
					<div class="carousel-caption d-none d-md-block">
						<h3 class="display-4">Terminator:Dark Fate</h3>
						<p class="lead">a lean, tough, and absorbing sequel that taps
							back into the enthralling surface of the "Terminator" series</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</section>
	<div class="container m-3 text-light text-center">
	<h3>${fav}</h3>
	
	</div>
	<div class="container mt-3" >
		<div class="container-fluid" id="card">
			<div class="row">
				<c:forEach items="${mList}" var="mList">
					<div class="col-sm col-md-6 col-lg-3 p-1 d-flex" id="myDIV">
						<div class="card flex-fill">
							<img class="card-img-top" src="${mList.image }"
								alt="Card image cap">
							<div class="card-body">
								<div class="d-flex justify-content-between title">
									<div>
										<h5 class="card-title">${mList.name }</h5>
									</div>
									<div>
										<span class="card-title text-danger">&#8377;${mList.price}</span>
									</div>
								</div>
								<div class="d-flex justify-content-between">
									<div>
										<c:choose>

											<c:when test="${mList.active eq 'Yes'}">
            									<small><span class="badge badge-success">Active</span><label
													class="text-muted">${mList.category}</label></small>
         									</c:when>
										<c:otherwise>
            								<small><span class="badge badge-danger">InActive</span><label
											class="text-muted">${mList.category}</label></small>
        								 </c:otherwise>
										</c:choose>


										
									</div>
									<div></div>
								</div>
							</div>
							<div class="card-footer d-flex justify-content-between">
								<div class="mt-n2">
									<small class="text-muted"><i
										class="material-icons time">access_time</i><label>Launch</label></small>
									<div class="mt-n2">
										<small class="text-muted"><label><fmt:formatDate
													type="date" dateStyle="short" timeStyle="short"
													value="${mList.dateOfLaunch}" /></label></small>
									</div>
								</div>
								<div>
																	<div class="d-flex justify-content-between">
									<div>
										<c:choose>

											<c:when test="${mList.favourite eq 'Yes'}">
            									<a id="myDIV" class="myDIV text-muted fill" href="/movie-item-favourite?id=${mList.id}&val=No"></a>   
         									</c:when>
										<c:otherwise>
            								<a id="myDIV" class="myDIV text-muted" href="/movie-item-favourite?id=${mList.id}&val=Yes"></a>   
        								 </c:otherwise>
										</c:choose>
<br>
                                        <a name="buy" href="payment_home?id=${mList.id}&TXN_AMT=${mList.price}" class="btn btn-success">Check Out</a>
										
									</div>
									<div></div>
								</div>		
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<script language="javascript" type="text/javascript"
		src="footer/footer.js"></script>


<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myDIV .card").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

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