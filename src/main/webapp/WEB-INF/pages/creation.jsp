<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>creation</title>
<script type="text/javascript">

</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<!-- Navbar -->
			<div class="col-lg-12">
				<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
					<div class="container-fluid">
						<ul class="nav navbar-nav">
							<li class="active"><a href="http://localhost:9090/home">Home</a></li>
							<li><a href="http://localhost:9090/creation">Creation</a></li>
						
							<li><a href="http://localhost:9090/table">Table</a></li>
							<li><a href="http://localhost:9090/ajaxtable">Ajex Table</a></li>
							<li><a href="http://localhost:9090/modal">Modal Table</a></li>
							<li><a href="http://localhost:9090/datatable">Data Table</a></li>
							<li><a href="http://localhost:9090/login"><span class="glyphicon glyphicon-user"></span>Log Out</a></li>
							<li><img style="padding-left: 200px" alt="FA logo" src="https://www.timesascent.com/images/printAd/2021/9/22/FAS_new.png" height="50px"></li>
						</ul>

					</div>
				</nav>
			</div>
			<!-- /#Navbar -->
		</div>
	</div>
	<!-- /#header -->
	<!-- Body -->
	<div class="container-fluid">
		<div class="row">
			<!-- Form -->
			<div class="col-lg-12">
				<form action="/creation" method="get">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Email</label> <input type="text"
								name="email" class="form-control" id="email"
								placeholder="Enter Email">
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Password</label> <input
								type="password" name="password" class="form-control"
								id="password" placeholder="Password">
						</div>
					</div>
					<div class="form-row">
					<div class="form-group col-md-6">
							<label for="inputPassword4">Name</label> <input
								type="text" name="name" class="form-control"
								id="name" placeholder="Enter Name">
						</div>
					<div class="form-group col-md-6">
						<label for="inputAddress2">Phone</label> <input type="text"
							name="phone" class="form-control" id="phone"
							placeholder="Enter Phone No">
					</div>
										
					</div>
					<div class="form-row">
						<div class="form-group col-md-4">
						<label for="inputAddress2">Date Of Birth</label> <input type="date"
							name="dob" class="form-control" id="dob"
							placeholder="Enter Date Of Birth">
						</div>
						<div class="form-group col-md-4">
							<label for="inputCity">City</label> <input type="text"
								name="city" class="form-control" id="city" placeholder="Enter City">
						</div>
						<div class="form-group col-md-4">
							<label for="inputState">State</label> <select id="state"
								name="state" class="form-control">
								<option selected>TN</option>
								<option value="PY">PY</option>
								<option value="AP">AP</option>
								<option value="KL">KL</option>
								<option value="KA">KA</option>
							</select>
						</div>
						
						
					</div>
					<div class="form-row">
						<div class="form-group col-md-4">
							<label for="inputZip">Zip Code</label> <input type="text"
								name="zipcode" class="form-control" id="zipcode">
						</div>
						<div class="form-check col-md-4">
							<label class="form-check-label" for="flexRadioDefault1">Gender</label><br>
  							<input class="form-check-input" type="radio" value="male" name="gender" id="gender">
 							 <label class="form-check-label" for="flexRadioDefault1">Male</label>
 							 <input class="form-check-input" type="radio" value="female" name="gender" id="gender">
 							 <label class="form-check-label" for="flexRadioDefault1">FeMale</label>
						</div>
						<div class="form-group col-md-4">
							<label for="inputState">Team</label> <select id="team"
								name="team" class="form-control">
								<option selected>RS</option>
								<option>Go Policy</option>
								<option>LIC</option>
								<option>OBS</option>
							</select>
						</div>
					</div>
					<div class="form-row">
						 <div class="form-group col-md-4">
   						 	<label for="exampleFormControlFile1">Select File</label>
    					 	<input type="file" class="form-control-file" id="inputFile">
  						 </div>
  						  <div class="form-group col-md-4">
    					 	<textarea class="form-control-file" id="textArea" hidden="hidden"></textarea>
  						 </div>
  						 <div class="form-group col-md-4">
  						 <img  id="image">
  						 </div>
  						 
					</div>
				
					<button type="button" class="btn btn-primary" onclick="saveBase64()">Submit</button>
				</form>
				<%-- <h1>${result}</h1> --%>
			</div>
			<!--/#Form -->
		</div>
	</div>
	<!-- /#Body -->
	
	<!-- <h1>Base64</h1>
	<input  type="file">
	<button type="submit" onclick="saveBase64()">Submit</button>
	<textarea id="" > -->
	<!-- <img id=""> -->
	<script>
	function readFile() {
		  /* alert() */
		  if (this.files && this.files[0]) {
		    
		    var FR= new FileReader();
		    
		    FR.addEventListener("load", function(e) {
		      document.getElementById("image").src          = e.target.result;
		      document.getElementById("textArea").innerHTML = e.target.result;
		    }); 
		    
		    FR.readAsDataURL( this.files[0] );
		  }
		  
		}

		document.getElementById("inputFile").addEventListener("change", readFile);
		
		
			function saveBase64(){
				var encodeValue = document.getElementById("textArea").value;
				var email = document.getElementById("email").value;
				var passWord = document.getElementById("password").value;
				var name = document.getElementById("name").value;
				var phone = document.getElementById("phone").value;
				var dob = document.getElementById("dob").value;
				var city = document.getElementById("city").value;
				var state = document.getElementById("state").value;
				var zipCode = document.getElementById("zipcode").value;
				var gender = $("input[type=radio][name=gender]:checked").val()
				var team = document.getElementById("team").value;
				$(document).ready(function() {
					$.ajax({
				           url: "http://localhost:9090/base64",
				           data: { base64 : encodeValue, email : email, passWord : passWord, name : name,
				        	   phone : phone, dob : dob, city : city, state : state, zipCode : zipCode,
				        	   gender : gender, team : team},
				           type: "POST",
				           dataType: "text",
				           success: function(response) {
				        	 
				        	   if(response=="Base64 Value saved sucessfully"){
				        		 alert("Sucessful");
				        		 location.reload();
						        }
						        else{
						        	alert(response);
						        }
				           },
				           error: function() {
				             alert("error");
				           }
				          });
					
				});
			}
			
		
	</script>
	<style>
    body {
    	background-color:rgb(195, 248, 245);
    }
	</style>
</body>
</html>