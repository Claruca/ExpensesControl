<%--
  Created by IntelliJ IDEA.
  User: clara.marti
  Date: 21/05/2018
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="DB.Users" %>
<%@ page import="DB.DBConnection" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Architects+Daughter" rel="stylesheet">
    <link href="css/dashboard.css" rel="stylesheet">
    <title>Afegir despesa</title>
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

    <div>
        <h1 class="titolPrin">Afegir gasto</h1>
    </div>

    <div class="jumbotron" style="min-width: 500px;">

        <form class="mx-auto" style="width: 450px;" method="post" action="/add">
            <div class="form-group">
                <div class="input-group p-3">
                    <%
                        Random rand = new Random();
                        int n = rand.nextInt(1000) + 1;
                    %>
                    <input class="form-control mr-sm-3" name="id_g" value="<%= n %>" type="text"
                           style="max-width: 50px"
                           aria-label="Id Despesa">
                </div>
                <%--<input class="form-control mr-sm-3" name="category" type="text" placeholder="category"--%>
                <%--aria-label="Categoria">--%>
                <div class="form-group p-3">
                    <label for="category"></label>
                    <select class="form-control" name="category" id="category" aria-label="Categoria">
                        <option>cuina</option>
                        <option>banyo</option>
                        <option>menjar</option>
                        <option>drogueria</option>
                        <option>altres</option>
                    </select>
                </div>
                <div class="input-group p-3">
                    <input class="form-control mr-sm-3" name="amount" type="text" placeholder="&euro;"
                           aria-label="Quantitat">
                    <input type="hidden" name="id" value="<%= request.getParameter("id")%>">
                    <div class="input-group-btn p-3">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Afegir gasto</button>
                    </div>
                </div>


            </div>
        </form>
    </div>
</div>
</body>
</html>

