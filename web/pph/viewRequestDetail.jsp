
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
                    <a class="navbar-brand" href="pph/dashboardPph.jsp" style="color:white">BusUMT</a>
                    <ul class="navbar-nav">
                        <li class="nav-item-active"><a class="nav-link" href="..//processViewProfile">Profile</a></li>
                        <li class="nav-item-active"><a href="viewBookRequest.jsp" class="nav-link">Bus Booking List</a></li>
                        <li class="nav-item-active"><a href="chartBookRequest.jsp" class="nav-link">Graph</a></li>
                        <li class="nav-item-active" ><a href="#" class="nav-link">|</a></li>
                        <li class="nav-item-active"><a href="..//processLogout" class="nav-link">Logout</a></li>
                    </ul>
                </div>
            </nav> 
        </header> 
        <br><br>
        <form action="..//processAssignDriver" method="post">
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
                    <td><input type="hidden" name="dateNeed" id="dateNeed" value="${dn}"/>${dn}</td>
                </tr>
                <tr>
                    <th align="left">Depart time: </th>
                    <td><input type="hidden" name="dn" value="${depart}"/>${depart}</td>
                </tr>
                <tr>
                    <th align="left">Arrive back: </th>
                    <td><input type="hidden" name="dn" value="${ab}"/>${ab}</td>
                </tr>
                <tr>
                    <th align="left">Location: </th>
                    <td><input type="hidden" name="location" value="${location}"/>${location}</td>
                </tr>
                <tr>
                    <th align="left">Number of Passenger: </th>
                    <td><input type="hidden" name="pax" value="${pax}"/>${pax}</td>
                </tr>
                <tr>
                <input type="hidden" id="dayID" name="dayID" value="test"/>
                <script type = "text/javascript">
                    var dateNeed = document.getElementById("dateNeed").value;
                    var dt = new Date(dateNeed);
                    var dayofdate = dt.getDay();
                    document.getElementById("dayID").value = dayofdate;
                </script>
                <th align='left'>List of available busses: </th>
                <td>
                    <c:set var="bookID" value="${param.id}"/>
                    <jsp:useBean id="driDao" class="com.rental.dao.DaoDriver"/>
                    <c:forEach items="${driDao.getFreeDriver(bookID, dayID)}" var="list">              
                        <input type="checkbox" name="driver" value="<c:out value="${list.getDriID()}"/>"/>&emsp;
                        <label for="driver"><c:out value="${list.getFname()}"/> </label>&emsp;&emsp;  <%--driver name here--%>
                        <label for="driver"><c:out value="${list.getCap()}"/> pax</label><br>  <%--pax here--%>
                    </c:forEach>
                </td>
                </tr>
            </table>
            <br>
            <center>
                <button class="btn btn-lg btn-success btn-block" type="submit" name='BtnSubmit' style="width: 10%">Proceed</button>
            </center>
        </form>
    </body>
</html>
