<%--
  Created by IntelliJ IDEA.
  User: Dennis Nijs
  Date: 23/04/2022
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>

<%
    String kleur = "oranje";
    String hexCode = "#f04c03";
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Voorbeeld expression</title>
</head>
<body>
    <h1>Voorbeeld expression</h1>
    <p>
        Dit is een <span style="color: <%=hexCode%>"><%=kleur%></span> van Thomas More!
    </p>
</body>
</html>
