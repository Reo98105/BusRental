<%-- 
    Document   : schedule
    Created on : May 23, 2020, 9:43:35 PM
    Author     : Reo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <title>Bus Rental - Schedule</title>

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

        <br>

    <div class="container">
        <table class="table table-dark table-striped" id="myTable">
            <thead>
                <tr>
                    <th onclick="sortTable(1)">Day</th>
                    <th onclick="sortTable(2)">Departure time</th>
                    <th onclick="sortTable(3)">Return time</th>
                    <th onclick="sortTable(4)">Location</th>
                    <th>Action</th>
                </tr>  
            </thead>
            <tbody>
                <tr>
                    <td>Sunday</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><a href="#">Detail</a></td>
                </tr>
                <tr>
                    <td>Monday</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><a href="#">Detail</a></td>
                </tr> 
                <tr>
                    <td>Tuesday</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><a href="#">Detail</a></td>
                </tr> 
                <tr>
                    <td>Wednesday</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><a href="#">Detail</a></td>
                </tr> 
                <tr>
                    <td>Thursday</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><a href="#">Detail</a></td>
                </tr> 
                <tr>
                    <td>Friday</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><a href="#">Detail</a></td>
                </tr> 
                <tr>
                    <td>Saturday</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><a href="#">Detail</a></td>
                </tr> 
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
