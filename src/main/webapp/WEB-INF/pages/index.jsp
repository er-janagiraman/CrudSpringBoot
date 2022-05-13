<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="sweetalert2.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
 <div class="container-fluid" >
        <div class="row">
          <!-- Navbar -->
            <div class="col-lg-12" >
              <nav class="navbar navbar-inverse">
                <div class="container-fluid" id="nav">
                  <div class="navbar-header"><a class="navbar-brand" href="#">FA Softwares</a></div>
                    <div class="active"><a href="http://localhost:9090/home">Home</a></div>
                    <div><a href="http://localhost:9090/creation">Creation</a></div>
                    
					<div><a href="http://localhost:9090/table">Table</a></div>
					<div><a href="http://localhost:9090/ajaxtable">Ajex Table</a></div>
					<div><a href="http://localhost:9090/login">Log Out</a></div>
                </div>
             </nav>
            </div>
          <!-- /#Navbar -->
        </div>
      </div>
    <!-- /#header -->

	
	<!--Body-->
	<div class="container">
		<div class="row">
			<div class="col-sm-6 left">
				<!--Form-->
				<form action="getdata" method="get">
					<!--Name-->
					<div class="form-group">
						<label for="formGroupExampleInput">Name</label> <input type="text"
							class="form-control" name="userName" placeholder="Enter Name">
					</div>
					<!--Phone-->
					<div class="form-group">
						<label for="formGroupExampleInput2">Phone</label> <input
							type="text" class="form-control" name="userPhoneNo"
							placeholder="Enter phone no">
					</div>
					<!--Date of Birth-->
					<div class="form-group dob">
						<label for="formGroupExampleInput">Date Of Birth</label> <input
							type="date" class="form-control dob" name="userDob"
							placeholder="Enter Date Of Birth">
					</div>
					<!--Team-->
					<label for="formGroupExampleInput">Team</label> <select
						class="form-select" aria-label="Default select example"
						name="teamName">
						<option value="RS">RS</option>
						<option value="Go Policy">Go Policy</option>
						<option value="LIC">LIC</option>
					</select>
					<!--Gender-->
					<label class="form-check-label" for="flexRadioDefault1">
						Gender </label>
					<!--Male-->
					<div class="form-check">
						<input class="form-check-input" name="gender" value="Male"
							type="radio" id="flexRadioDefault1"> <label
							class="form-check-label" for="flexRadioDefault1"> Male </label>
					</div>
					<!--Female-->
					<div class="form-check">
						<input class="form-check-input" name="gender" value="Female"
							type="radio" id="flexRadioDefault2" checked> <label
							class="form-check-label" for="flexRadioDefault2"> Female
						</label>
						<!--Company Name-->
						<div class="form-group">
							<label for="formGroupExampleInput">Company Name</label> <input
								type="text" class="form-control" name="companyName"
								placeholder="Enter Company Name">
						</div>
						<!--Experience-->
						<div class="form-group">
							<label for="formGroupExampleInput">previous Experience</label> <input
								type="number" class="form-control" name="previousExperience"
								placeholder="Enter Previous Experience">
						</div>
						<br>
						<!--Submit Button-->
						<input type="submit" class="btn btn-primary" value="submit">
					</div>
				</form>
			</div>
			<div class="col-sm-6 right">
				<div class="fadet">
					<p>FA Software (FAS) is a vibrant organization with a deep
						technical core, meaningful business size, innovation focus and
						customer success at the center of our culture.</p>
				</div>
				<div class="fadet">
					<p>We look forward to resolving complex challenges for our
						customers on the digital transformation road map, pushing the
						boundaries of solution and technology.</p>
				</div>
				<div class="fadet">
					<p>Building the technology blocks for the Insurance business
						and Financial Services Industry</p>
				</div>
				<div class="fadet">
					<p>We are a powerhouse of Open Source Software
						architects,designers and developers</p>
				</div>
				<div class="fadet">
					<p></p>
				</div>
			</div>

		</div>
	</div>


	<style>
.dob {
	cursor: pointer;
}

.form-select {
	cursor: pointer;
}

.img {
	height: 58px;
}

h5 {
	color: white;
}

.left {
	background-image: linear-gradient(to bottom right, rgb(252, 42, 123),
		rgb(62, 248, 248));
	color: black;
}

.right {
	background-image: linear-gradient(to bottom right, rgb(126, 243, 243),
		rgb(250, 150, 188));
	color: black;
}

.header {
	text-align: center;
}

.fa {
	margin-left: 160px;
	margin-top: 50px;
}
#nav{
color:white;
}

.fadet {
	margin-top: 55px;
}
</style>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>