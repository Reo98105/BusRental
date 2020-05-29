<%-- 
    Document   : viewProfilePph
    Created on : 04-May-2020, 08:34:42
    Author     : faizah
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <title>View Profile</title>

        <style>
            body{
                background-image: url("img/bg19.jpg");
                background-size: 100%;
                background-repeat: no-repeat;
                color: white;   
            }

            table{
                text-align: left;
                width: 400px;
            }

        </style>

    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="pph/dashboardLect.jsp" style="color:white">BusUMT</a>
                    <ul class="navbar-nav">
                        <li class="nav-item-active"><a class="nav-link" href="..//processViewProfile">Profile</a></li>
                        <li class="nav-item-active"><a href="pph/viewBookRequest.jsp" class="nav-link">Bus Booking List</a></li>
                        <li class="nav-item-active"><a href="chartBookRequest.jsp" class="nav-link">Graph</a></li>
                        <li class="nav-item-active" ><a href="#" class="nav-link">|</a></li>
                        <li class="nav-item-active"><a href="..//processLogout" class="nav-link">Logout</a></li>
                    </ul>
                </div>
            </nav> 
        </header> 

    <center>
            <br><br><br>
        <h2>Profile</h2>
        <br>
        <table>
            <tr>
                <td><h6><label for="username">Username</label></h6></td>
                <td>${username}</td>

            </tr>
            <tr>
                <td><h6><label for="fullname">Fullname:</label></h6></td>
                <td>${name}</td>

            </tr>
            <tr>
                <td><h6><label for="role">Role:</label></h6></td>
                <td>${role}</td>                
            </tr>
        </table>
            <br><br><br>
        <form action='..//processViewUpdate'>
            <center>
                <button class="btn btn-lg btn-success " type="submit" value='Change Password' style="width: 15%">Change Password</button>
            </center>
        </form>
    </center>
</body>
</html>
