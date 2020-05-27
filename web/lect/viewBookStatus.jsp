
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
                        <th align='center'>Booked Date</th>
                        <th align='center'>Date Needed</th>
                        <th align='center'>Depart Time</th>
                        <th align='center'>Arrive back</th>
                        <th align='center'>Purpose</th>
                        <th align='center'>Location</th>
                        <th align='center'>Pax</th>
                        <th align='center'>Status</th>
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
    </body>
</html>
