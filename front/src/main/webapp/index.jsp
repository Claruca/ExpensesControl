<%@ page import="DB.Users" %>
<%@ page import="DB.DBConnection" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: clara.marti
  Date: 08/05/2018
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

    <link href="css/dashboard.css" rel="stylesheet">

    <title>Control de Despeses</title>
</head>
<body>
<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Control de Despeses</a>
    <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link" href="#">Sign out</a>
        </li>
    </ul>
</nav>

<div class="container-fluid">


    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">
                            <span data-feather="home"></span>
                            Resum <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="file"></span>
                            Compres
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="shopping-cart"></span>
                            Products
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="users"></span>
                            Customers
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="bar-chart-2"></span>
                            Reports
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="layers"></span>
                            Integrations
                        </a>
                    </li>
                </ul>

                <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                    <span>Saved reports</span>
                    <a class="d-flex align-items-center text-muted" href="#">
                        <span data-feather="plus-circle"></span>
                    </a>
                </h6>
                <ul class="nav flex-column mb-2">
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="file-text"></span>
                            Current month
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="file-text"></span>
                            Last quarter
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="file-text"></span>
                            Social engagement
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="file-text"></span>
                            Year-end sale
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Resum</h1>
                <div class="btn-toolbar mb-2 mb-md-0">
                    <div class="btn-group mr-2">
                        <button class="btn btn-sm btn-outline-secondary">Share</button>
                        <button class="btn btn-sm btn-outline-secondary">Export</button>
                    </div>
                    <button class="btn btn-sm btn-outline-secondary dropdown-toggle">
                        <span data-feather="calendar"></span>
                        This week
                    </button>
                </div>
            </div>

            <!--<canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>-->
            <div class="my-4 w-100 ml-sm-auto col-lg-9 px-4">
                <h2>Usuaris</h2>
                    <%
                DBConnection db = new DBConnection();
                       List<Users> list = db.showUsers();
                       for (Users usu : list){
                           out.println("<div class=\"card\" style=\"width:400px\">\n" +
"                    <img class=\"card-img-top\" src=\"https://www.w3schools.com/bootstrap4/img_avatar1.png\"\n" +
"                         alt=\"Card image\" style=\"width:100%\">\n" +
"                    <div class=\"card-body\">\n" +
"                        <h3 class=\"card-text\">\n" +
"                            <h4>"+usu.getId()+"</h4>\n" +
"                            <h4>"+usu.getName()+"</h4>\n" +
"                            <h4>"+usu.getSurname()+"</h4>\n" +
"                            <h4>"+usu.getBalance()+"</h4>\n" +
"                            <a href=\"#\" class=\"btn btn-primary btn-outline-success\">See Profile</a>\n" +
"                        </h3>\n" +
"                        <a href=\"#\" class=\"btn btn-primary btn-outline-success\">See Profile</a>\n" +
"                    </div>\n" +
"                    <br>\n" +
"                </div>");
}%>

                <a href="register.html" class="btn btn-primary btn-outline-success">See Profile</a>


                <%--<div class="card" style="width:400px">
                    <img class="card-img-top" src="https://www.w3schools.com/bootstrap4/img_avatar1.png"
                         alt="Card image" style="width:100%">
                    <div class="card-body">
                        <h3 class="card-text">
                            <a href="#" class="btn btn-primary btn-outline-success">See Profile</a>
                        </h3>
                        <a href="#" class="btn btn-primary btn-outline-success">See Profile</a>
                    </div>
                    <br>
                </div>
                <a href="register.html" class="btn btn-primary btn-outline-success">See Profile</a>--%>

                <%-- <form class="form-inline my-2 my-md-0" method="post" action="home">
                     <div class="input-group">
                         <input class="form-control mr-sm-3" name="id" type="text" placeholder="&euro"
                                aria-label="Afegir">
                         &lt;%&ndash;<input type="hidden" name="id" value=""><br/>"&ndash;%&gt;
                         <div class="input-group-btn">
                             <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Afegir</button>
                         </div>
                     </div>
                 </form>--%>


                <%--<h2>Section title</h2>
                <div class="table-responsive">
                    <table class="table table-striped table-sm">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Header</th>
                            <th>Header</th>
                            <th>Header</th>
                            <th>Header</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1,001</td>
                            <td>Lorem</td>
                            <td>ipsum</td>
                            <td>dolor</td>
                            <td>sit</td>
                        </tr>
                        </tbody>
                    </table>

                    <div class="alert alert-success alert-dismissible fade show">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <strong>Success!</strong> This alert box could indicate a successful or positive action.
                    </div>
                </div>--%>
        </main>
    </div>
</div>


</body>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<!--<script src="css/bootstrap-4.1.0/dist/js/bootstrap.min.js"></script>-->

<!-- Icons -->
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
    feather.replace()
</script>

<!-- Graphs -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
<!--<script>-->
<!--var ctx = document.getElementById("myChart");-->
<!--var myChart = new Chart(ctx, {-->
<!--type: 'line',-->
<!--data: {-->
<!--labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],-->
<!--datasets: [{-->
<!--data: [100, 400, 60, 78, 85, 120, 500],-->
<!--lineTension: 0,-->
<!--backgroundColor: 'transparent',-->
<!--borderColor: '#bf1718',-->
<!--borderWidth: 4,-->
<!--pointBackgroundColor: '#007bff'-->
<!--}]-->
<!--},-->
<!--options: {-->
<!--scales: {-->
<!--yAxes: [{-->
<!--ticks: {-->
<!--beginAtZero: false-->
<!--}-->
<!--}]-->
<!--},-->
<!--legend: {-->
<!--display: false-->
<!--}-->
<!--}-->
<!--});-->
<!--</script>-->

</html>






