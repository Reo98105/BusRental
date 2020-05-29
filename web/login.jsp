
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <title>Bus Rental - Login</title>

        <style>

            .form-group{
                width: 35%;
            }
            body{
                background-image: url("img/bg3.jpg");
                background-size: 100%;
                background-repeat: no-repeat;
            }

        </style>

    </head>
    <body>
        <header>
            <nav class="navbar" style="background-color: #1C2331;">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#" style="color:white">BusUMT</a>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="register.jsp" style="color:white"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    </ul>
                </div>
            </nav> 
        </header>

    <center>
        <div class="container">
            <form class="form-label-group" action="processLogin" method="post">
                <div class="form-group">
                    <h2>Login</h2><br>
                    <table>
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <label for="username">Username</label>
                                <input type="text" name="username" class="form-control" size="50" placeholder="Username" required autofocus>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2" style="text-align: center">
                                <label for="password">Password</label>
                                <input type="password" name="password" class="form-control" size="50" placeholder="Password" required><br>
                            </td>
                        </tr>
                        <br>
                        <tr>
                            <td>
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="role" style="text-align: left" value="lecturer">Lecturer
                                </label>
                            </td>
                            <td>
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="role" value="pph">PPH Staff
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="role" value="hepa">HEPA Staff
                                </label>
                            </td>
                            <td>
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="role" value="driver">Driver
                                </label>
                            </td>
                        </tr>
                    </table>
                    <br>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" value="remember-me"> Remember me
                        </label>
                    </div>
                    <p>Create Your Account Here <a href="register.jsp">Sign Up</a></p><br><br>
                    <button class="btn btn-lg btn-primary btn-block" type="submit" style="width: 25%">Sign in</button>
            </form>
        </div>
    </center>
</body>
</html>
