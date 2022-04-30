<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Student" %>
<%
    Student student = (Student) request.getAttribute("student");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student toevoegen</title>
</head>
<body>
<h1>Student aanpassen</h1>

<form action="/studenten/edit/result" method="get">
    <label for="voornaam">Voornaam:</label><br>
    <input type="text" id="voornaam" name="voornaam" value="<%=student.getVoornaam()%>"><br>
    <label for="familienaam">Familienaam:</label><br>
    <input type="text" id="familienaam" name="familienaam" value="<%=student.getFamilienaam()%>"><br>
    <label for="klas">Klas:</label><br>
    <input type="text" id="klas" name="klas" value="<%=student.getKlas()%>"><br><br>
    <input type="submit" value="Edit"><br>
</form>
<a href="/studenten">
    Annuleer
</a>
</body>
</html>