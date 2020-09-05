<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Profile</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
	body{
	background-image: url("images/pexels-pixabay-261909.jpg");
	background-size:cover;
	background-attachment: fixed;
}
</style>
</head>
<body>

<!-- NavBar  Start -->
<nav class="navbar navbar-expand-lg navbar-light text-white bg-transparent">
  <a class="navbar-brand" href="#"><b>Student Profile page</b></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
	<ul class="navbar-nav mr-right">
    <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle"></a>
      </li>
    	<li class="nav-item" style="margin-left:1190px;">
        <a class="nav-link" href="index.jsp"><b>Logout</b></a>
      </li>
    	
    </ul>
  
</nav>

<!-- Main body -->
<main>
	<div class="container" >
		<div class="col-md-10 offset-1"  id="post-container">
		
		</div> 
	
	</div>
</main>

<!-- End of main body -->




<!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script>

$(document).ready(function (e){
	$.ajax({
		url:"assignment.jsp",
		success: function (data,textStatus,jqXHR)
		{
			console.log(data);
			$('#post-container').html(data)
		}
	})
	
})
</script>
</body>
</html>