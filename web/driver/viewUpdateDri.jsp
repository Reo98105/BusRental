
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
        <title>Bus rental - update bus detail</title>

        <style>
            body{
                background-image: url("..//img/bg22.jpg");
                background-size: 100%;
                background-repeat: no-repeat;
                color: white;   
            }
            table{
                size: 30%;
                text-align: left;
                width: 400px;
            }
            .form-group{
                width: 35%;
            }

        </style>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="dashboardDriver.jsp" style="color:white">BusUMT</a>
                    <ul class="navbar-nav">
                        <li class="nav-item-active"><a class="nav-link" href="..//processViewProfile">Profile</a></li>
                        <li class="nav-item-active"><a href="schedule.jsp" class="nav-link">Schedule</a></li>
                        <li class="nav-item-active" ><a href="#" class="nav-link">|</a></li>
                        <li class="nav-item-active"><a href="..//processLogout" class="nav-link">Logout</a></li>
                    </ul>
                </div>
            </nav> 
        </header>
        
        <jsp:useBean id="driverDao" class="com.rental.dao.DaoDriver"/>
        <c:set var="driver" value="${driverDao.getDriver(un)}"/>

    <center>
        <br>
        <h2>Update bus detail</h2>
        <br>
        <div class="form-group">
            <form action="..//processUpdateDri" method="post">
                <table>
                    <tr>
                        <td align-text="left">
                            <label for="username">Username:</label>
                        </td>
                        <td>${un}</td>
                    </tr>
                    <tr>
                        <td align-text="left">
                            <label for="fullname">Full Name:</label>
                        </td>
                        <td>${driver.getFname()}</td>
                    </tr>
                    <tr>
                        <td align-text="left">
                            <label for="role">Role:</label>
                        </td>
                        <td>${driver.getRole()}</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label for="current" >Bus plat number:</label>
                            <input type="text" name="platNo"  class="form-control" size="20" placeholder="TBH 1414" required><br>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label for="new" >Bus capacity:</label>
                            <input type="text" name="capacity" class="form-control" size="20" placeholder="45" required><br>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="hidden" name="driID" value="${driver.getDriID()}"/>
                            <input type="hidden" name="cond" value="1"/>
                        </td>
                    </tr>
                </table>
            <button class="btn btn-lg btn-success" style="width: 20%">Update</button>
        </form>
        </div>
    </center>
</body>
</html>