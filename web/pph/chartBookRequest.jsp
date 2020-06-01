<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
        <title>Book Request Graph</title>
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

        <jsp:useBean id="bookDao" class="com.rental.dao.DaoBook"/>
        <jsp:useBean id="book" class="com.rental.user.userBooking"/>
        <table class="table" id="dataTable">
            <thead>
            <th>Month</th>
            <th>Total Booking Request</th>
            <th>Accepted Request</th>
            <th>Rejected Request</th>
        </thead>
        <tr>
            <td>January</td>
            <td>                
                <c:set var="total" value="${bookDao.getTotalRequest(1)}"/>
                <c:out value="${total.getCount()}"/>
            </td>
            <td>
                <c:set var="accept" value="${bookDao.getAccept(1)}"/>
                <c:out value="${accept.getCount()}"/>
            </td>
            <td>
                <c:set var="reject" value="${bookDao.getReject(1)}"/>
                <c:out value="${reject.getCount()}"/>
            </td>
        </tr>
        <tr>
            <td>February</td>
            <td>
                <c:set var="total" value="${bookDao.getTotalRequest(2)}"/>
                <c:out value="${total.getCount()}"/>
            </td>
            <td>
                <c:set var="accept" value="${bookDao.getAccept(2)}"/>
                <c:out value="${accept.getCount()}"/>
            </td>
            <td>
                <c:set var="reject" value="${bookDao.getReject(2)}"/>
                <c:out value="${reject.getCount()}"/>
            </td>
        </tr>
        <tr>
            <td>March</td>
            <td>
                <c:set var="total" value="${bookDao.getTotalRequest(3)}"/>
                <c:out value="${total.getCount()}"/>
            </td>
            <td>
                <c:set var="accept" value="${bookDao.getAccept(3)}"/>
                <c:out value="${accept.getCount()}"/>
            </td>
            <td>
                <c:set var="reject" value="${bookDao.getReject(3)}"/>
                <c:out value="${reject.getCount()}"/>
            </td>
        </tr>
        <tr>
            <td>April</td>
            <td>
                <c:set var="total" value="${bookDao.getTotalRequest(4)}"/>
                <c:out value="${total.getCount()}"/>
            </td>
            <td>
                <c:set var="accept" value="${bookDao.getAccept(4)}"/>
                <c:out value="${accept.getCount()}"/>
            </td>
            <td>
                <c:set var="reject" value="${bookDao.getReject(4)}"/>
                <c:out value="${reject.getCount()}"/>
            </td>
        </tr>
        <tr>
            <td>May</td>
            <td>
                <c:set var="total" value="${bookDao.getTotalRequest(5)}"/>
                <c:out value="${total.getCount()}"/>
            </td>
            <td>
                <c:set var="accept" value="${bookDao.getAccept(5)}"/>
                <c:out value="${accept.getCount()}"/>
            </td>
            <td>
                <c:set var="reject" value="${bookDao.getReject(5)}"/>
                <c:out value="${reject.getCount()}"/>
            </td>
        </tr>
        <tr>
            <td>June</td>
            <td>
                <c:set var="total" value="${bookDao.getTotalRequest(6)}"/>
                <c:out value="${total.getCount()}"/>
            </td>
            <td>
                <c:set var="accept" value="${bookDao.getAccept(6)}"/>
                <c:out value="${accept.getCount()}"/>
            </td>
            <td>
                <c:set var="reject" value="${bookDao.getReject(6)}"/>
                <c:out value="${reject.getCount()}"/>
            </td>
        </tr>
        <tr>
            <td>July</td>
            <td>
                <c:set var="total" value="${bookDao.getTotalRequest(7)}"/>
                <c:out value="${total.getCount()}"/>
            </td>
            <td>
                <c:set var="accept" value="${bookDao.getAccept(7)}"/>
                <c:out value="${accept.getCount()}"/>
            </td>
            <td>
                <c:set var="reject" value="${bookDao.getReject(7)}"/>
                <c:out value="${reject.getCount()}"/>
            </td>
        </tr>
        <tr>
            <td>August</td>
            <td>
                <c:set var="total" value="${bookDao.getTotalRequest(8)}"/>
                <c:out value="${total.getCount()}"/>
            </td>
            <td>
                <c:set var="accept" value="${bookDao.getAccept(8)}"/>
                <c:out value="${accept.getCount()}"/>
            </td>
            <td>
                <c:set var="reject" value="${bookDao.getReject(8)}"/>
                <c:out value="${reject.getCount()}"/>
            </td>
        </tr>
        <tr>
            <td>September</td>
            <td>
                <c:set var="total" value="${bookDao.getTotalRequest(9)}"/>
                <c:out value="${total.getCount()}"/>
            </td>
            <td>
                <c:set var="accept" value="${bookDao.getAccept(9)}"/>
                <c:out value="${accept.getCount()}"/>
            </td>
            <td>
                <c:set var="reject" value="${bookDao.getReject(9)}"/>
                <c:out value="${reject.getCount()}"/>
            </td>
        </tr>
        <tr>
            <td>October</td>
            <td>
                <c:set var="total" value="${bookDao.getTotalRequest(10)}"/>
                <c:out value="${total.getCount()}"/>
            </td>
            <td>
                <c:set var="accept" value="${bookDao.getAccept(10)}"/>
                <c:out value="${accept.getCount()}"/>
            </td>
            <td>
                <c:set var="reject" value="${bookDao.getReject(10)}"/>
                <c:out value="${reject.getCount()}"/>
            </td>
        </tr>
        <tr>
            <td>November</td>
            <td>
                <c:set var="total" value="${bookDao.getTotalRequest(11)}"/>
                <c:out value="${total.getCount()}"/>
            </td>
            <td>
                <c:set var="accept" value="${bookDao.getAccept(11)}"/>
                <c:out value="${accept.getCount()}"/>
            </td>
            <td>
                <c:set var="reject" value="${bookDao.getReject(11)}"/>
                <c:out value="${reject.getCount()}"/>
            </td>
        </tr>
        <tr>
            <td>December</td>
            <td>
                <c:set var="total" value="${bookDao.getTotalRequest(12)}"/>
                <c:out value="${total.getCount()}"/>
            </td>
            <td>
                <c:set var="accept" value="${bookDao.getAccept(12)}"/>
                <c:out value="${accept.getCount()}"/>
            </td>
            <td>
                <c:set var="reject" value="${bookDao.getReject(12)}"/>
                <c:out value="${reject.getCount()}"/>
            </td>
        </tr>
    </table>
    <br>
    <div class="chart">
        <canvas id="myChart"> </canvas>
    </div>

    <script>
        function BuildChart(labels, total, accept, reject, totalTitle, acceptTitle, rejectTitle){
        var ctx = document.getElementById('myChart').getContext('2d');

        //Global Options
        Chart.defaults.global.defaultFontFamily = 'Lato';
        Chart.defaults.global.defaultFontSize = 16;
        Chart.defaults.global.defaultFontColor = '#777';

        var myChart = new Chart(ctx, {
            type: 'bar', //bar horizontalBar, pie, line
            data: {
                labels: labels,
                datasets: [{
                        label: totalTitle,
                        data: total,
                        backgroundColor: [
                            'rgb(0, 255, 255)',
                            'rgb(0, 255, 255)',
                            'rgb(0, 255, 255)',
                            'rgb(0, 255, 255)',
                            'rgb(0, 255, 255)',
                            'rgb(0, 255, 255)',
                            'rgb(0, 255, 255)',
                            'rgb(0, 255, 255)',
                            'rgb(0, 255, 255)',
                            'rgb(0, 255, 255)',
                            'rgb(0, 255, 255)',
                            'rgb(0, 255, 255)'
                        ],
                        borderWidth: 1,
                        borderColor: '#777',
                        hoverBorderWidth: 3,
                        hoverBorderColor: '#000'
                    }, {
                        label: acceptTitle,
                        data: accept,
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
                            'rgb(127,255,0)'
                        ],
                        borderWidth: 1,
                        borderColor: '#777',
                        hoverBorderWidth: 3,
                        hoverBorderColor: '#000'
                    }, {
                        label: rejectTitle,
                        data: reject,
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
                            'rgb(220,20,60)'
                        ],
                        borderWidth: 1,
                        borderColor: '#777',
                        hoverBorderWidth: 3,
                        hoverBorderColor: '#000'
                    }
                ]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
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
        return myChart;
    }

        // HTML To JSON Script 
// *Forked* from https://johndyer.name/html-table-to-json/
        var table = document.getElementById('dataTable');
        var json = []; // first row needs to be headers 
        var headers = [];
        for (var i = 0; i < table.rows[0].cells.length; i++) {
            headers[i] = table.rows[0].cells[i].innerHTML.toLowerCase().replace(/ /gi, '');
        }
// go through cells 
        for (var i = 1; i < table.rows.length; i++) {
            var tableRow = table.rows[i];
            var rowData = {};
            for (var j = 0; j < tableRow.cells.length; j++) {
                rowData[headers[j]] = tableRow.cells[j].innerHTML;
            }
            json.push(rowData);
        }
        console.log(json);
// Map json values back to label array
        var labels = json.map(function (e) {
            return e.month;
        });
        console.log(labels);
// Map json values back to values array
        var total = json.map(function (e) {
            return e.totalbookingrequest;
        });
        var accept = json.map(function (e) {
            return e.acceptedrequest;
        });
        var reject = json.map(function (e) {
            return e.rejectedrequest;
        });
        console.log(total);
        console.log(accept);
        console.log(reject);
        var chart = BuildChart(labels, total, accept, reject, "Total Booking Request", "Accepted", "Rejected");
    </script>
</body>
</html>
