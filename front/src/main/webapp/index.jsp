<%@ page import="DB.Users" %><%--
  Created by IntelliJ IDEA.
  User: clara.marti
  Date: 08/05/2018
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    Users users = new Users(1,"Clara","Martí", "claruca", 0.00);
        out.println(users.getAlias() + "" + users.getName());


%>

</body>
</html>
