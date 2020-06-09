<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.cognizant.MOVIECRUISE.model.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <link rel="stylesheet" type="text/css" href="style/style.css">
     <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js"
  type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css"
  rel="stylesheet" type="text/css" />
  <link rel="icon" href="img/img.svg" sizes="96x96" type="image/svg">
<link rel="stylesheet" type="text/css" href="style/style.css">
    <title>MovieCruiser</title>
  </head>

<body class="text-white">
<% MovieItem m=(MovieItem)request.getAttribute("movie"); %>
 <script language="javascript" type="text/javascript" src="header/header-admin.js"></script>        
<div class="container mt-3">

  <h4>Edit Movie Item</h4>
  <form name="editMovieForm" onsubmit="return validateForm();" action="edit-movie-status" class="needs-validation" novalidate>
  <input type="text" name="id" style="visibility:hidden" value="<%=m.getId()%>">
  <input type="text" name="image" style="visibility:hidden" value="<%=m.getImage()%>">
  <div class="form-row">
    <div class="form-group col-lg-12 col-12 col-md-12 col-sm">
    <label for="name">Title</label>
    <input type="text" class="form-control" id="name" name="name" value="<%=m.getName()%>" required>
    <div class="invalid-feedback">
        Please provide a valid city.
      </div>
  </div>
  
  </div>
  <div class="form-row">
    <div class="form-group col-lg-3 col-12 col-md-12 col-sm">
    <label for="price">Box office</label>
    <input type="text" class="form-control" id="price" name="price" value="<%=m.getPrice()%>"required>
    <div class="invalid-feedback">
        Please provide a valid city.
      </div>
  </div>
  
    <div class="form-group col-lg-3 col-12 col-md-12 col-sm">
    <label for="datepicker">Date of Launch</label>
    
    <input name="dateOfLaunch" class="form-control" type="date" required/>
  	<div class="invalid-feedback">
        Please provide a valid city.
      </div>
  </div>
   <div class="form-group col-lg-3 col-12 col-md-12 col-sm">
    <label for="category">Genre</label>
    <select class="form-control" id="category" name="category" required>
            <option></option>
      <option value="Sci Fiction">Sci Fiction</option>
      <option value="Superhero">Superhero</option>
      <option value="Romance">Romance</option>
      <option value="Comedy">Comedy</option>
      <option value="Adventure">Adventure</option>
      <option value="Thriller">Thriller</option>
    </select>							<div class="invalid-feedback">
        Please provide a valid city.
      </div>
    
  </div>

  <div class="form-group col-lg-3 col-12 col-md-12 col-sm">
    <label>Active</label>
    <br/>
    <% if(m.isActive().equals("Yes")){ %>
							<input class="form-radiobutton" type="radio" name="active" id="field-yes" value="Yes" checked><label class="form-item" for="field-yes" checked>Yes</label></input>
							<input class="form-radiobutton" type="radio" name="active" id="field-no" value="No"><label class="form-item" for="field-no">No</label></input>
						<%}else { %>
							<input class="form-radiobutton" type="radio" name="active" id="field-yes" value="Yes" ><label class="form-item" for="field-yes" checked>Yes</label></input>
							<input class="form-radiobutton" type="radio" name="active" id="field-no" value="No" checked><label class="form-item" for="field-no">No</label></input>
						<%} %>
  </div>
  <div class="invalid-feedback">
        Please provide a valid city.
      </div>
</div>


<div class="form-row mt-4">
  
  <input id="save" class="form-button btn btn-default edit" type="submit" name="submit" value="Save" >
</div>
</form>
  </div>
  <script language="javascript" type="text/javascript" src="footer/footer.js"></script>
  <script>
    $('#datepicker').datepicker({
      uiLibrary : 'bootstrap4',
      format:'dd/MM/yyyy'
    });
  </script>
  <script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>