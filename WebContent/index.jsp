<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>

<!-- Jumbotron starting -->
<div class="jumbotron jumbotron-fluid" style="background-image : url(images/pexels-ann-h-1762851.jpg);background-size: 100%;">
  <div class="container">
    <h1 class="display-4">Online Assigments</h1>
    <p class="lead"><q>The beautiful thing about learning is that no one can take it away from you</q>.</p>
  </div>
</div>


<!-- Form for student login -->
<div class="container">
	<div class="row">
		<div class="col-md-6 offset-3">
			<div class="card">
      			<div class="card-body">
        		<h5 class="card-title ">Login as :</h5>
        		<form action="StudentServlet" method="post">
        		<div class="form-group">
    						<input type="radio"  id="person" name="person" value="student" required="required">Student
    						<input type="radio"  id="person" name="person" value="admin" required="required">Admin
  						</div>
				
				
  					<div class="form-group">
    					<label for="exampleInputEmail1">Username</label>
    					<input type="text" class="form-control" name="name" id="username" aria-describedby="usernamehelp" placeholder="Enter username">
    					<small id="usernameHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  					</div>
  					<div class="form-group">
    					<label for="exampleInputPassword1">Password</label>
    					<input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password">
  					</div>
  					<button type="submit" class="btn btn-warning">login</button>
				</form>
        		
      </div>
    </div>
		</div>
		
		
		
		
	
		
	
	</div>
</div>


</body>
</html>