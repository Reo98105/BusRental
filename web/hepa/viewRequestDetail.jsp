
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
        <title>Booking Status Page</title>

        <style>
            body{
                background-image: url("..//img/bg18.jpg");
                background-size: 100%;
                background-repeat: no-repeat;
                color: white;
            }

            table{
                width: 700px;
                height: 450px;
            }

        </style>

    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="hepa/dashboardHepa.jsp" style="color:white">BusUMT</a>
                    <ul class="navbar-nav">
                        <li class="nav-item-active"><a class="nav-link" href="..//processViewProfile">Profile</a></li>
                        <li class="nav-item-active"><a href="hepa/viewBookRequest.jsp" class="nav-link">Manage Request</a></li>
                        <li class="nav-item-active" ><a href="#" class="nav-link">|</a></li>
                        <li class="nav-item-active"><a href="..//processLogout" class="nav-link">Logout</a></li>

                    </ul>
                </div>
            </nav> 
        </header> 
        <br><br>
        <form action="..//processUpdateDetail" method="post">
            <table border="0" align="center">
                <tr>
                    <th align="left">Name of Requester: </th>
                    <td><input type="hidden" name="id" value="${bookID}"/>${username}</td>
                </tr>
                <tr>
                    <th align="left">Booking Date: </th>
                    <td><input type="hidden" name="bd" value="${bd}"/>${bd}</td>
                </tr>
                <tr>
                    <th align="left">Date Needed: </th>
                    <td><input type="hidden" name="dn" value="${dn}"/>${dn}</td>
                </tr>
                <tr>
                    <th align="left">Purpose: </th>
                    <td><input type="hidden" name="purpose" value="${purpose}"/>${purpose}</td>
                </tr>
                <tr>
                    <th align="left">Location: </th>
                    <td><input type="hidden" name="location" value="${location}"/>${location}</td>
                </tr>
                <tr>
                    <th align="left">Number of Passenger: </th>
                    <td><input type="hidden" name="pax" value="${pax}"/>${pax}</td>
                </tr>
                <th align='left'>Status: </th>
                <td>
                    <select id="approval" name='approval'>
                        <option value='1'>Approve</option>
                        <option value='3'>Reject</option>
                    </select>
                </td>
            </table>
            <br>
            <center>
                <button class="btn btn-lg btn-success btn-block" type="submit" name='BtnSubmit' style="width: 10%">Proceed</button>
            </center>
        </form>
    </body>
</html>
