
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
        <title>Driver Status Page</title>

        <style>
            body{
                background-image: url("img/bg10.jpg");
                background-size: 100%;
                background-repeat: no-repeat;
                color: white;
            }
            .nav-item-active{
                text-align: left;
            }
            
        </style>

    </head>
    <body>

        <header>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <div class="container-fluid">
                <a class="navbar-brand" href="Homepage.html" style="color:white">BusUMT</a>
                    <ul class="navbar-nav">
                        <li class="nav-item-active"><a class="nav-link" href="Homepage.html">Home</a></li>
                        <li class="nav-item-active"><a href="booking.jsp" class="nav-link">Book</a></li>
                        <li class="nav-item-active"><a href="viewbooking.jsp" class="nav-link">Status</a></li>
                        <li class="nav-item-active"><a href="viewdriver.jsp" class="nav-link">Driver</a></li>
                    </ul>
                </div>
            </nav> 
        </header>      
        
        <div class="container">
            <table class="table table-dark table-striped">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Name</th>
                        <th>Bus Plate No.</th>
                        <th>Status</th>
                    </tr>  
                </thead>
                <tbody>
                    <tr >
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                    </tr>      
                </tbody>
            </table>
        </div>
    </body>
</html>
