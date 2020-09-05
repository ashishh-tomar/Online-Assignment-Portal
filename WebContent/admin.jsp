<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
	body{
	background-image: url("images/pexels-ann-h-1762851.jpg");
	background-size:cover;
	background-attachment: fixed;
}
</style>
</head>
<body>

<!-- NavBar  Start -->
<nav class="navbar navbar-expand-lg navbar-light bg-light bg-transparent">
  <a class="navbar-brand"style="margin-left:10%;" href="#"><b>Admin Profile page</b></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
	<ul class="navbar-nav mr-right">
    <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle"></a>
      </li>
    	<li class="nav-item" style="margin-left:1000px;">
        <a class="nav-link" href="index.jsp"><b>Logout</b></a>
      </li>
    	
    </ul>
  
</nav>

<!-- End of NavBar -->
<!-- post assignmets -->

<div class="container-fluid ml-5">
	<div class="row">
		<div class="col-md-4">
			<div class="card">
      			<div class="card-body">
        		<h5 class="card-title ">Post new Assignments</h5>
        		<form action="AssignmentServlet" method="post">
        			<div class="form-group">
    					<label for="Title">Subject</label>
    					<input type="text" class="form-control" name="title" id="username" aria-describedby="usernamehelp" placeholder="Enter Subject">
    					
  					</div>
  						<div class="form-group">
        					<textarea rows="15" cols="10" name="content"class="form-control">Enter your Content</textarea>
        				</div>
  					<div class="form-group">
    					<label for="submsision">Last Date of submission</label>
    					<input type="date" class="form-control" name="date" id="exampleInputPassword1" required="required">
  					</div>
  				
  					<button type="submit" class="btn btn-warning mt-2">Post</button>
				</form>
        	</div>
    </div>
		</div>
		<div class="col-md-6 " style="margin-left: 10%;"  id="post-container2">
		
		</div> 
		
		
		
		
	
		
	
	</div>
</div>




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
			$('#post-container2').html(data)
		}
	})
	
})
</script>
</body>
</html>