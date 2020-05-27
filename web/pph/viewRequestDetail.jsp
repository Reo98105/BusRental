
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
                background-image: url("..//img/bg17.jpg");
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
                        <li class="nav-item-active"><a href="pph/viewBookRequest.jsp" class="nav-link">Bus Booking List</a></li>
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
                    <input type="hidden" id="dayID" name="dayID" value=""/>
                    <script type = "text/javascript">
                        var dateNeed = document.getElementById("dateNeed").value;
                        var dt = new Date(dateNeed);
                        var dayofdate = dt.getDay();
                        document.getElementById("dayID").value = dayofdate;
                    </script>
                    <th align='left'>List of available busses: </th>
                    <c:set var="count" value="0"/>
                    <c:set var="bookID" value="${param.id}"/>
                    <jsp:useBean id="driDao" class="com.rental.dao.DaoDriver"/>
                    <c:forEach items="${driDao.getFreeDriver(bookID, dayID)}" var="list">
                    <input type="checkbox" name="${count}" value="<c:out value="${list.getDriID()}"/>"/>
                    <label for="${count}"><c:out value="${list.getUsername()}"/></label>  <%--driver name here--%>
                    <label for="${count}"><c:out value="${list.getCap()}"/></label>  <%--pax here--%>
                    <c:set var="count" value="${count + 1}"/>
                    </c:forEach>
                </tr>
            </table>
            <br>
            <center>
                <button class="btn btn-lg btn-success btn-block" type="submit" name='BtnSubmit' style="width: 10%">Proceed</button>
            </center>
        </form>
    </body>
</html>
