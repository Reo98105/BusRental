
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
        <title>Booking Page</title>

        <style>
            body{
                background-image: url("img/bg5.jpg");
                background-size: 100%;
                background-repeat: no-repeat;
                color: white;
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
            <form class="form-label-group">
                <center><h2>Booking Form</h2><br>

                    <div class="form-group"> 
                        <label for="name">Full Name</label>
                        <input type="text" id="fullname" class="form-control" size="50" placeholder="Full Name" required>
                    </div>

                    <div class="form-group"> 
                        <label for="bookingdate">Booking Date</label>
                        <input type="text" id="bookingdate" class="form-control" size="20" placeholder="yyyy/mm/dd" required>
                    </div>

                    <div class="form-group"> 
                        <label for="dateneeded">Date Needed</label>
                        <input type="text" id="dateneeded" class="form-control" size="20" placeholder="yyyy/mm/dd" required>
                    </div>

                    <div class="form-group">
                        <label for="busnumber">Bus Quantity:</label>
                        <input type="number" id="busno" class="form-control" size="20" placeholder="Quantity" required>
                    </div>

                    <button class="btn btn-lg btn-success " type="submit" style="width: 15%">Book</button><br><br>                
                </center>
            </form>
        </div>
    </body>
</html>
