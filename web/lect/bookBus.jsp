
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
        <title>Bus Rental - Bus Booking</title>

        <style>
            body{
                background-image: url("..//img/bg14.jpg");
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
                    <a class="navbar-brand" href="lect/dashboardLect.jsp" style="color:white">BusUMT</a>
                    <ul class="navbar-nav">
                        <li class="nav-item-active"><a class="nav-link" href="..//processViewProfile">Profile</a></li>
                        <li class="nav-item-active"><a href="lect/bookBus.jsp" class="nav-link">Bus Booking </a></li>
                        <li class="nav-item-active"><a href="..//processViewStatus" class="nav-link">Book Status</a></li>
                        <li class="nav-item-active" ><a href="#" class="nav-link">|</a></li>
                        <li class="nav-item-active"><a href="..//processLogout" class="nav-link">Logout</a></li>
                    </ul>
                </div>
            </nav> 
        </header> 

        <br>
        <div class="container">
            <form class="form-label-group" action="..//processBooking" method="post">
                <center><h2>Bus Booking Form</h2><br>
                    <div class="form-group"> 
                        <label for="bookingdate">Booking Date</label>
                        <input type="text" name="bookDate" class="form-control" size="10" placeholder="yyyy/mm/dd" required>

                        <label for="dateneeded">Date Needed</label>
                        <input type="text" name="dateNeed" class="form-control" size="10" placeholder="yyyy/mm/dd" required>

                        <label for="name">Purpose</label>
                        <input type="text" name="purpose" class="form-control" size="60" placeholder="Purpose" required>

                        <label for="name">Location</label>
                        <input type="text" name="location" class="form-control" size="60" placeholder="Location" required>

                        <label for="busnumber">Number of Passenger</label>
                        <input type="number" name="pax" class="form-control" size="3" placeholder="Quantity" required><br>

                        <button class="btn btn-lg btn-success " type="submit" style="width: 25%">Book</button><br><br>     
                    </div>
                </center>
            </form>
        </div>
    </body>
</html>
