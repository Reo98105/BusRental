
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
        <title>Bus Rental - Status Page</title>

        <style>
            body{
                background-image: url("..//img/bg6.jpg");
                background-size: 100%;
                background-repeat: no-repeat;
                color: white;
            }
            
            .table{
                size: "60%";
            }
            .toptable{
                background-color: darkslategray;
            }
            .downtable{
                background-color: gray;
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
                        <li class="nav-item-active"><a href="lect/bookBus.jsp" class="nav-link">Bus Booking</a></li>
                        <li class="nav-item-active"><a href="..//processViewStatus" class="nav-link">Book Status</a></li>
                        <li class="nav-item-active" ><a href="#" class="nav-link">|</a></li>
                        <li class="nav-item-active"><a href="..//processLogout" class="nav-link">Logout</a></li>
                    </ul>
                </div>
            </nav> 
        </header>
        
        <br>        
        <div class="container">
            <table class="table table-dark table-striped">
                <thead>
                    <tr>
                        <th align='center' onclick="sortTable(1)">Booked Date</th>
                        <th align='center' onclick="sortTable(2)">Date Needed</th>
                        <th align='center' onclick="sortTable(3)">Purpose</th>
                        <th align='center' onclick="sortTable(4)">Location</th>
                        <th align='center' onclick="sortTable(5)">Pax</th>
                        <th align='center' onclick="sortTable(6)">Status</th>
                    </tr>  
                </thead>
                <tbody>
                    <jsp:useBean id="book" class="com.rental.dao.DaoBook" scope="page"/>
                    <c:forEach items="${book.getBookDetailByID(currentUser)}" var="bookDetail">
                        <c:choose>
                            <c:when test="${bookDetail.getStatus() eq 0}">
                                <tr>
                                    <td><c:out value="${bookDetail.getBookDate()}"/></td>
                                    <td><c:out value="${bookDetail.getDateNeed()}"/></td>
                                    <td><c:out value="${bookDetail.getDepart()}"/></td>
                                    <td><c:out value="${bookDetail.getArriveback()}"/></td>
                                    <td><c:out value="${bookDetail.getPurpose()}"/></td>
                                    <td><c:out value="${bookDetail.getLocation()}"/></td>
                                    <td><c:out value="${bookDetail.getPax()}"/></td>
                                    <td><c:out value="Pending"/></td>
                            </tr>
                            </c:when>
                                
                            <c:when test="${bookDetail.getStatus() eq 1}">
                                <tr>
                                    <td><c:out value="${bookDetail.getBookDate()}"/></td>
                                    <td><c:out value="${bookDetail.getDateNeed()}"/></td>
                                    <td><c:out value="${bookDetail.getPurpose()}"/></td>
                                    <td><c:out value="${bookDetail.getLocation()}"/></td>
                                    <td><c:out value="${bookDetail.getPax()}"/></td>
                                    <td><c:out value="Processing"/>
                                </tr>
                            </c:when>
                                
                            <c:when test="${bookDetail.getStatus() eq 2}">
                                <tr>
                                    <td><c:out value="${bookDetail.getBookDate()}"/></td>
                                    <td><c:out value="${bookDetail.getDateNeed()}"/></td>
                                    <td><c:out value="${bookDetail.getPurpose()}"/></td>
                                    <td><c:out value="${bookDetail.getLocation()}"/></td>
                                    <td><c:out value="${bookDetail.getPax()}"/></td>
                                    <td><c:out value="Accepted"/> &nbsp;<a href="#">Detail..</a></td>
                                </tr> 
                            </c:when>
                                
                            <c:when test="${bookDetail.getStatus() eq 3}">
                                <tr>
                                    <td><c:out value="${bookDetail.getBookDate()}"/></td>
                                    <td><c:out value="${bookDetail.getDateNeed()}"/></td>
                                    <td><c:out value="${bookDetail.getPurpose()}"/></td>
                                    <td><c:out value="${bookDetail.getLocation()}"/></td>
                                    <td><c:out value="${bookDetail.getPax()}"/></td>
                                    <td><c:out value="Rejected"/></td>
                                </tr> 
                            </c:when>
                        </c:choose>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        
        <script>
            function sortTable(n) {
                var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
                table = document.getElementById("myTable");
                switching = true;

                dir = "asc";

                while (switching) {

                    switching = false;
                    rows = table.rows;

                    for (i = 1; i < (rows.length - 1); i++) {

                        shouldSwitch = false;

                        x = rows[i].getElementsByTagName("TD")[n];
                        y = rows[i + 1].getElementsByTagName("TD")[n];

                        if (dir == "asc") {
                            if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {

                                shouldSwitch = true;
                                break;
                            }
                        } else if (dir == "desc") {
                            if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {

                                shouldSwitch = true;
                                break;
                            }
                        }
                    }
                    if (shouldSwitch) {

                        rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                        switching = true;

                        switchcount++;
                    } else {

                        if (switchcount == 0 && dir == "asc") {
                            dir = "desc";
                            switching = true;
                        }
                    }
                }
            }
        </script>
    </body>
</html>
