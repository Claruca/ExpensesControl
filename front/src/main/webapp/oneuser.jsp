<%@ page import="DB.Users" %>
<%@ page import="DB.Expenses" %>
<%@ page import="DB.DBConnection" %><%--
  Created by IntelliJ IDEA.
  User: clara.marti
  Date: 16/05/2018
  Time: 9:14
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
    <link href="/css/usuaris.css" rel="stylesheet" type="text/css">
    <title>Informació Usuari</title>
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


    <%
        Users oneUsu = (Users) request.getAttribute("oneUsu");
        Double sumtotal = (Double) request.getAttribute("sumtotal");
        if (oneUsu != null) {

            out.println("<div class=\"card text-center mx-auto\" style=\"width: 30rem;\">\n" +
                    "  <img class=\"card-img-top\" src=\"data:image/jpeg;base64,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\" alt=\"Card image cap\">\n" +
                    "  <div class=\"card-body\">\n" +
                    "<p>" + oneUsu.getId() + "<p>" +
                    "<p>" + oneUsu.getName() + "</p>" +
                    "<p>" + oneUsu.getSurname() + "</p>" +
                    "<p>" + oneUsu.getBalance() + "</p>"
            );

            out.println("<table class=\"table\">" +
                    "<thead>\n" +
                    "    <tr>\n" +
                    "      <th scope=\"col\">ID</th>\n" +
                    "      <th scope=\"col\">Categoria</th>\n" +
                    "      <th scope=\"col\">Quantitat</th>\n" +
                    "    </tr>" +
                    "</thead>" + "<tbody>\n");

            for (Expenses exp : oneUsu.getExpencount()) {
                out.println(

                        "<tr>" +
                                "<th scope=\"row\">" + exp.getId() + "</th>" +
                                "<td>" + exp.getCategory() + "</td>" +
                                "<td>" + exp.getAmount() + "</td>");
            }

            out.println("</tbody>" + "</table>");
            out.println("<p>Total despeses:</p>" + "<p>" + sumtotal + "</p>");

            out.println("</div>\n" + "</div>");
        }

    %>
</div>

</div>


</body>
</html>
