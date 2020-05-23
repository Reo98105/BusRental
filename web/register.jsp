
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <title>Register Page</title>

        <style>

            .form-group{
                width: 35%;
            }
            body{
                background-image: url("img/bg1.jpg");
                background-size: 100%;
                background-repeat: no-repeat;
            }
            .hidden {
                display: none;
            }	

        </style>
    </head>
    <body>
        <header>
            <nav class="navbar" style="background-color: #1C2331;">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#" style="color:white">BusUMT</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="nav-item-active"><a href="login.jsp" style="color:white">Home</a></li>
                    </ul>
                    
                </div>
            </nav> 
        </header>
    <center>
        <div class="container">
            <form class="form-label-group" action="processRegister" method="post">
                <center><h2>Register</h2><br></center>
                <div class="form-group"> 
                    <label for="name">Full Name</label>
                    <input type="text" name="fullname" class="form-control" size="50" placeholder="Full Name" required>
                </div>

                <div class="form-group">
                    <label for="role" >Occupation list (select one):</label>
                    <select class="form-control" name="role">
			<option>Please select:</option>
                        <option value="PPH Staff">PPH Staff</option>
			<option value="Driver">Driver</option>
                        <option value="Lecturer">Lecture</option>
                        <option value="HEPA Staff">HEPA Staff</option>
                    </select>
                </div>

                <div class="form-group">                    
                    <label for="username">Username</label>
                    <input type="text" name="username" class="form-control" size="50" placeholder="P25587" required autofocus>
                    <small>*PPH staff start with P, Driver - D, Lecturer - L, HEPA Staff - H</small>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" class="form-control" size="50" placeholder="Password" required>
                </div>

                <button class="btn btn-lg btn-success " type="submit" style="width: 15%">Sign Up</button><br><br>
            </form>
        </div>
    </center>    
</body>
</html>
