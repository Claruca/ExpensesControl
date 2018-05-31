<%@ page import="DB.Expenses" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: clara.marti
  Date: 25/05/2018
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Tajawal:500" rel="stylesheet">
    <link href="/css/dashboard.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:700" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <title>Categoria</title>
</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="/index.jsp">Control de Despeses</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
            aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
        </ul>
        <form class="form-inline mt-2 mt-md-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Cerca</button>
        </form>
    </div>
</nav>

<div class="container-fluid" style="margin-top:160px;">

    <div class="jumbotron mx-auto w-50" style="min-width: 350px;">
        <%
            ArrayList<Expenses> at = (ArrayList<Expenses>) request.getAttribute("llista");
            Double totalcat = (Double) request.getAttribute("cattotal");


            out.println("<table class=\"table table-hover w-50 text-center mx-auto \">" +
                    "<thead>\n" +
                    "    <tr>\n" +
                    "      <th scope=\"col\">Nom</th>\n" +
                    "      <th scope=\"col\">Categoria</th>\n" +
                    "      <th scope=\"col\">Quantitat</th>\n" +
                    "      <th scope=\"col\">Data</th>\n" +
                    "    </tr>" +
                    "</thead>" + "<tbody id=\"taula\">\n");

            for (Expenses exp : at) {
                out.println("<tr>" +
                        "<th>" + exp.getIdUsuari() + "</th>" +
                        "<td>" + exp.getCategory() + "</td>" +
                        "<td>" + exp.getAmount() + "</td>" +
                        "<td>" + exp.getDating() + "</td>"

                );
            }

            out.println("</tbody>" + "</table>");
            out.println("<h3 class=\"text-center\">Total: " + totalcat + "</h3>");

        %>
        <%--<button class="btn btn-primary btn-outline-success" type="submit">Afegir gasto</button>--%>
        <div class="d-flex justify-content-end w-100">
        <input class=" btn btn-primary btn-outline-success" type=button onClick="parent.location='/index.jsp'"
               value='Back'>
        </div>


    </div>
</div>



</body>
</html>
