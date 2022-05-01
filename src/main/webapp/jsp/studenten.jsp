<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Student" %>
<%@ page import="java.util.List" %>
<%
    List<Student> studenten = (List<Student>) request.getAttribute("studenten");
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Overzicht studenten</title>
</head>
<body>
<a href="/studenten/toevoegen">
    Student aanmaken
</a>
<table>
    <tr>
        <th>Naam</th>
        <th>Klas</th>
        <th>Acties</th>
    </tr>
    <%
        for (Student student : studenten) {
            out.print("<tr>"
                    + "<td>" + student.getVoornaam() + " " + student.getFamilienaam() + "</td>"
                    + "<td>" + student.getKlas() + "</td>"
                    + "<td><a href='/studenten/detail?id=" + student.getId() + "'>Details</a> | <a href='/studenten/edit?id="
                    + student.getId() + "'>Edit</a> | <a href='/studenten/delete?id=" + student.getId() + "'>Delete</a></td>"
                    + "</tr>");
        }
    %>
</table>

</body>
</html>
