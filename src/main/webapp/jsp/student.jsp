<%--
  Created by IntelliJ IDEA.
  User: Dennis Nijs
  Date: 23/04/2022
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Student" %>
<%
    Student student = (Student) request.getAttribute("student");
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details student</title>
</head>
<body>
<h1>Details student</h1>
<div>
    Id: <%=student.getId()%><br>
    Naam: <%=student.getVoornaam() + " " + student.getFamilienaam()%><br>
    Klas: <%= student.getKlas()%>
</div>
</body>
</html>
