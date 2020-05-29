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
        <style>
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
        <title>JSP Page</title>
    </head>
    <body>
        <table align="center">
            <tr>
                <th align="left">Name of Requester: </th>
                <td><input type="hidden" name="id" value="${bookID}"/>${username}</td>
            </tr>
            <tr>
                <th align="left">Departure date: </th>
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
        </table>
            <br>
        <div class="button-container">
            <form action="..//processUpdateSchedule?id=<c:out value="${param.id}"/>" method="post">
                <div>
                    <input type="submit" value="Completed"/>
                </div>
            </form>
            <form action="driver/schedule.jsp" method="post">
                <div>
                    <input type="submit" value="Return"/>
                </div>
            </form>
        </div>
    </body>
</html>
