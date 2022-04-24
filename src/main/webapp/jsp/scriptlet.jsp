<%--
  Created by IntelliJ IDEA.
  User: Dennis Nijs
  Date: 23/04/2022
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%
    String naam = "Joeri";
    int aantal = 3;
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Voorbeeld scriptlet</title>
</head>
<body>
<h1>Voorbeeld scriptlet</h1>
<%
    for (int i = 0; i < aantal; i++) {
        out.print("<p>" + naam + "</p>");
    }
%>

</body>
</html>
