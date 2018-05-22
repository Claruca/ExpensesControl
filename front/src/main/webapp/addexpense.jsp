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
    <link href="css/dashboard.css" rel="stylesheet">
    <title>Afegir despesa</title>
</head>

<body>
<%--<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="index.jsp">Control de Despeses</a>
    <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link" href="#">Sign out</a>
        </li>
    </ul>
</nav>--%>


<div class="container-fluid" style="margin-top:80px;">

    <form  class="mx-auto" style="width: 500px;" method="get" action="/add">
        <div class="form-group">
            <div class="input-group">
                <%
                    Random rand = new Random();

                    int  n = rand.nextInt(50) + 1;
                %>
                <input class="form-control mr-sm-3" name="id_g" value="<%= n %>" type="text" placeholder="id de gasto"
                       aria-label="Id Despesa">
            </div>
            <%--<input class="form-control mr-sm-3" name="category" type="text" placeholder="category"--%>
            <%--aria-label="Categoria">--%>
            <div class="form-group">
                <label for="category"></label>
                <select class="form-control" name="category" id="category" aria-label="Categoria">
                    <option>cuina</option>
                    <option>banyo</option>
                    <option>menjar</option>
                    <option>drogueria</option>
                    <option>altres</option>
                </select>
            </div>
            <div class="input-group">
                <input class="form-control mr-sm-3" name="amount" type="text" placeholder="amount"
                       aria-label="Quantitat">
                <input type="hidden" name="id" value="<%= request.getParameter("id")%>">
                <div class="input-group-btn">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Afegir gasto</button>
                </div>
            </div>


        </div>
    </form>

</div>
</body>
</html>

