<%-- 
    Document   : viewEditSchedule
    Created on : May 29, 2020, 4:55:15 PM
    Author     : -
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <title>Bus Rental - Edit Schedule</title>
        <style>           
            body{
                background-image: url("..//img/bg16.jpg");
                background-size: 100%;
                background-repeat: no-repeat;
                color: white;   
            }

            table{
                text-align: left;
                width: 400px;
            }
            th, td {
                padding: 10px;
            }
            .button-container{
                text-align: center;
            }
            .button-container form,
            .button-container form div {
                display: inline;
            }

            .button-container button {
                display: inline;
                vertical-align: middle;
            }
        </style>
    </head>
    <body>

        <header>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="driver/dashboardDriver.jsp" style="color:white">BusUMT</a>
                    <ul class="navbar-nav">
                        <li class="nav-item-active"><a class="nav-link" href="..//processViewProfile">Profile</a></li>
                        <li class="nav-item-active"><a href="schedule.jsp" class="nav-link">Schedule</a></li>
                        <li class="nav-item-active" ><a href="#" class="nav-link">|</a></li>
                        <li class="nav-item-active"><a href="..//processLogout" class="nav-link">Logout</a></li>
                    </ul>
                </div>
            </nav> 
        </header>

        <br><br>
    <center>
        <table>
            <tr>
                <th><h6>Name of Requester:</h6></th>
                <td><input type="hidden" name="id" value="${bookID}"/>${username}</td>
            </tr>  
            <tr>
                <th><h6>Departure date:</h6></th>
                <td><input type="hidden" name="dateNeed" id="dateNeed" value="${dn}"/>${dn}</td>
            </tr>
            <tr>
                <th><h6>Depart time:</h6></th>
                <td><input type="hidden" name="dn" value="${depart}"/>${depart}</td>
            </tr> 
            <tr>
                <th><h6>Arrive back:</h6></th>
                <td><input type="hidden" name="dn" value="${ab}"/>${ab}</td>
            </tr> 
            <tr>
                <th><h6>Location:</h6></th>
                <td><input type="hidden" name="location" value="${location}"/>${location}</td>
            </tr> 
            <tr>
                <th><h6>Number of Passenger:</h6></th>
                <td><input type="hidden" name="pax" value="${pax}"/>${pax}</td>
            </tr> 
        </table>
    </center>
    <br>
    <div class="button-container">
        <form action="..//processUpdateSchedule?id=<c:out value="${param.id}"/>" method="post">
            <div>
                <button class="btn btn-lg btn-success " type="submit" value='Completed' style="width: 10%">Completed</button>
            </div>
        </form>
        <form action="driver/schedule.jsp" method="post">
            <div>
                <button class="btn btn-lg btn-success " type="submit" value='Return' style="width: 10%">Return</button>
            </div>
        </form>
    </div>
</body>
</html>
