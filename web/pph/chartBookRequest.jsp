
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <title>Graph Book Request</title>
    </head>
    <body class="bg-light">


        <header>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="dashboardPph.jsp" style="color:white">BusUMT</a>
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

        <br>      
        <div class="container">
            <canvas id="myChart"> </canvas>
        </div>

        <script>
            let myChart = document.getElementById('myChart').getContext('2d');

            //Global Options
            Chart.defaults.global.defaultFontFamily = 'Lato';
            Chart.defaults.global.defaultFontSize = 16;
            Chart.defaults.global.defaultFontColor = '#777';

            let massPopChart = new Chart(myChart, {
                type: 'bar', //bar horizontalBar, pie, line
                data: {
                    labels: ['January', 'February', 'March', 'April', 'May', 'Jun', 'July', 'August', 'September', 'October', 'November', 'December', ],
                    datasets: [{
                            label: 'Total Book',
                            data: [
                                0,
                                0,
                                0,
                                0,
                                5,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0
                            ],
                            backgroundColor: [
                                'rgb(219, 24, 219)',
                                'rgb(219, 24, 219)',
                                'rgb(219, 24, 219)',
                                'rgb(219, 24, 219)',
                                'rgb(219, 24, 219)',
                                'rgb(219, 24, 219)',
                                'rgb(219, 24, 219)',
                                'rgb(219, 24, 219)',
                                'rgb(219, 24, 219)',
                                'rgb(219, 24, 219)',
                                'rgb(219, 24, 219)',
                                'rgb(219, 24, 219)',
                                
                            ],
                            borderWidth: 1,
                            borderColor: '#777',
                            hoverBorderWidth: 3,
                            hoverBorderColor: '#000'
                        }, {
                            label: 'Accepted',
                            data: [
                                0,
                                0,
                                0,
                                0,
                                3,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0  
                            ],
                            backgroundColor: [
                                'rgb(127,255,0)',
                                'rgb(127,255,0)',
                                'rgb(127,255,0)',
                                'rgb(127,255,0)',
                                'rgb(127,255,0)',
                                'rgb(127,255,0)',
                                'rgb(127,255,0)',
                                'rgb(127,255,0)',
                                'rgb(127,255,0)',
                                'rgb(127,255,0)',
                                'rgb(127,255,0)',
                                'rgb(127,255,0)',
                            ],
                            borderWidth: 1,
                            borderColor: '#777',
                            hoverBorderWidth: 3,
                            hoverBorderColor: '#000'
                        }, {
                            label: 'Rejected',
                            data: [
                                0,
                                0,
                                0,
                                0,
                                2,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0 
                            ],
                            backgroundColor: [
                                'rgb(220,20,60)',
                                'rgb(220,20,60)',
                                'rgb(220,20,60)',
                                'rgb(220,20,60)',
                                'rgb(220,20,60)',
                                'rgb(220,20,60)',
                                'rgb(220,20,60)',
                                'rgb(220,20,60)',
                                'rgb(220,20,60)',
                                'rgb(220,20,60)',
                                'rgb(220,20,60)',
                                'rgb(220,20,60)',
                            ],
                            borderWidth: 1,
                            borderColor: '#777',
                            hoverBorderWidth: 3,
                            hoverBorderColor: '#000'
                        }
                    ]
                },
                options: {
                    title: {
                        display: true,
                        text: 'Book Request in 2020',
                        fontSize: 25
                    },
                    legend: {
                        display: true,
                        position: 'right',
                        labels: {
                            fontColor: '#000'
                        }
                    },
                    layout: {
                        padding: {
                            left: 50,
                            right: 0,
                            bottom: 0,
                            top: 0
                        }
                    },
                    tooltips: {
                        enabled: true
                    }
                }
            });


        </script>
    </body>
</html>
