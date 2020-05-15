
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
        <title>Update Password</title>

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
                    <a class="navbar-brand" href="pph/dashboardLect.jsp" style="color:white">BusUMT</a>
                    <ul class="navbar-nav">
                        <li class="nav-item-active"><a class="nav-link" href="..//processViewProfile">Profile</a></li>
                        <li class="nav-item-active"><a href="pph/viewBookRequest.jsp" class="nav-link">Bus Booking List</a></li>
                        <li class="nav-item-active" ><a href="#" class="nav-link">|</a></li>
                        <li class="nav-item-active"><a href="..//processLogout" class="nav-link">Logout</a></li>
                    </ul>
                </div>
            </nav> 
        </header> 

    <center>
        <br>
        <h2>Change Password</h2>
        <br>
        <div class="form-group">
            <form action="..//processUpdatePass" method="post">
                <table>
                    <tr>
                        <td align-text="left">
                            <label for="username">Username:</label>
                        </td>
                        <td>${username}</td>
                    </tr>
                    <tr>
                        <td align-text="left">
                            <label for="fullname">Full Name:</label>
                        </td>
                        <td>${name}</td>
                    </tr>
                    <tr>
                        <td align-text="left">
                            <label for="role">Role:</label>
                        </td>
                        <td>${role}</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label for="current" >Current Password</label>
                            <input type="password" name="current"  class="form-control" size="20" placeholder="Current Password" required><br>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label for="new" >New Password</label>
                            <input type="password" name="new" class="form-control" size="20" placeholder="New Password" required><br>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <label for="re" >Retype Password</label>
                            <input type="password" name="re" class="form-control" size="20" placeholder="Retype Password" required><br>
                        </td>
                    </tr>
                </table>
            <button class="btn btn-lg btn-success" style="width: 20%">Change</button>
        </form>
        </div>
    </center>
</body>
</html>
