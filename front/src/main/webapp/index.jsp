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
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="index.jsp">Control de Despeses</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
            aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
        </ul>
        <form class="form-inline mt-2 mt-md-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Cerca</button>
        </form>
    </div>
</nav>

<div class="container-fluid" style="margin-top:80px;">


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
                        <form method="post" action="type">
                            <label for="cat"></label>
                            <select class="form-control" name="cat" id="cat">
                                <option>cuina</option>
                                <option>banyo</option>
                                <option>menjar</option>
                                <option>drogueria</option>
                                <option>altres</option>
                            </select>
                            <button type="submit"><span data-feather="bar-chart-2"></span>Filtrar</button>
                        </form>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" onclick="myFunction()">
                            <span data-feather="shopping-cart"></span>
                            Afegir categoria
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="register.html" class="nav-link">
                            <span data-feather="users"></span>
                            Afegir Usuari
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
                <button type="button" class="btn btn-primary ml-3">Total <span class="badge badge-light">
                                <%
                                    Double total = DBConnection.alltotal();
                                    out.println("<p>" + total + "&#8364;</p>");
                                %>
                </span>
                    <span class="sr-only">total</span>
                </button>

            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Selecciona un usuari:</h1>
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
            <div class="text-center">
                <%
                    DBConnection db = new DBConnection();
                    List<Users> list = db.showUsers();
                    for (Users usu : list) {
                        out.println("<div class=\"card text-center d-inline-block shadow p-4 mb-4 bg-white\" style=\"width:280px\">\n" +
                                "                        <img class=\"card-img-top mt-3 rounded-circle\" src=\"https://www.w3schools.com/bootstrap4/img_avatar1.png\"\n" +
                                "                           alt=\"Card image\" style=\"width:50%\">\n" +
                                "                        <div class=\"card-body\">\n" +
                                "                          <h3 class=\"card-text\">" + usu.getName() + "</h3>" +
                                "                          <h3 class=\"card-text\">" + usu.getSurname() + "</h3>\n" +
//"                            <a href=\"/afegir?id="+usu.getId()+"\" paramclass=\"btn btn-primary btn-outline-success\">Afegir Gasto</a>\n" +
                                "                                  <form style=\"display:inline\" action=\"/afegir\" method=\"post\">\n" +
                                "                                    <input  name=\"id\" type=\"hidden\" value=" + usu.getId() + ">" +
                                "<button class=\"btn btn-primary btn-outline-success\" type=submit>Afegir gasto</button>" +
                                "</form>" +
                                "                                   <a href=\"/unusuari/?idusu=" + usu.getId() + "\" class=\"btn btn-primary btn-outline-success\">Veure</a>\n" +
                                "                    </div>\n" +
                                "                    <br>\n" +
                                "                        </div>");
                    }%>

            </div>
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

<script>
    function myFunction() {
        var myWindow = window.open("/newcategory", "_blank","toolbar=yes,scrollbars=yes,resizable=yes,top=500,left=500,width=400,height=400");
    }
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






