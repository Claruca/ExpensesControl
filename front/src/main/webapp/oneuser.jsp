<%@ page import="DB.Users" %>
<%@ page import="DB.Expenses" %><%--
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
    <title>Title</title>
</head>
<body>

<%
    Users oneUsu = (Users) request.getAttribute("oneUsu");
    if (oneUsu != null) {
        out.println("<div class=\"row\">" +
                "<div class=\"col-md-6 mt-3\">" +
                "<h3>" + oneUsu.getId() + "</h3>" +
                "<p>" + oneUsu.getName() + "</p>" +
                "<p>" + oneUsu.getSurname() + "</p>" +
                "<p>" + oneUsu.getBalance() + "</p>" +
                "</div >" + "</div>" + "</div>");


        for (Expenses exp : oneUsu.getExpencount()) {
            out.println("<p>"+ exp.getId() + "</p>");
        }
    }

%>






</body>
</html>
