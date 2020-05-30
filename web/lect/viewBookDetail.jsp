<%-- 
    Document   : viewBookDetail
    Created on : May 28, 2020, 7:21:51 PM
    Author     : Reo
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
        <title>Bus Rental - Book Details</title>

        <style>
            body{
                background-image: url("..//img/bg16.jpg");
                background-size: 100%;
                background-repeat: no-repeat;
                color: white;   
            }

            table{
                text-align: left;
                width: 500px;
            }
            th, td {
                padding: 10px;
            }

        </style>
    </head>
    <body>

        <header>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="lect/dashboardLect.jsp" style="color:white">BusUMT</a>
                    <ul class="navbar-nav">
                        <li class="nav-item-active"><a class="nav-link" href="..//processViewProfile">Profile</a></li>
                        <li class="nav-item-active"><a href="bookBus.jsp" class="nav-link">Bus Booking</a></li>
                        <li class="nav-item-active"><a href="..//processViewStatus" class="nav-link">Book Status</a></li>
                        <li class="nav-item-active" ><a href="#" class="nav-link">|</a></li>
                        <li class="nav-item-active"><a href="..//processLogout" class="nav-link">Logout</a></li>
                    </ul>
                </div>
            </nav> 
        </header>

        <br>
        <table border="0" align="center">
            <tr>
                <th><h6>Booking Date: </h6></th>
                <td><input type="hidden" name="bd" value="${bd}"/>${bd}</td>
            </tr>
            <tr>
                <th><h6>Date Needed: </h6></th>
                <td><input type="hidden" name="dateNeed" id="dateNeed" value="${dn}"/>${dn}</td>
            </tr>
            <tr>
                <th><h6>Depart time: </h6></th>
                <td><input type="hidden" name="dn" value="${depart}"/>${depart}</td>
            </tr>
            <tr>
                <th><h6>Arrive back: </h6></th>
                <td><input type="hidden" name="dn" value="${ab}"/>${ab}</td>
            </tr>
            <tr>
                <th><h6>Location: </h6></th>
                <td><input type="hidden" name="location" value="${location}"/>${location}</td>
            </tr>
            <tr>
                <th><h6>Number of Passenger: </h6></th>
                <td><input type="hidden" name="pax" value="${pax}"/>${pax}</td>
            </tr>
            <tr>                
                <th><h6>Names of driver: </h6></th>
                <td>
                    <c:set var="bookID" value="${param.id}"/>
                    <jsp:useBean id="bookDao" class="com.rental.dao.DaoBook"/>
                    <c:forEach items="${bookDao.getAssignedDriver(bookID)}" var="list">
                        <c:out value="${list.getFname()}"/><br>
                    </c:forEach>
                </td>
            </tr>
        </table>
    </body>
</html>
