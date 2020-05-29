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
        <title>Bus Rental - Book Details</title>
    </head>
    <body>
        <table border="0" align="center">
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
                <th align='left'>Names of driver: </th>
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
