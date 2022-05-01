<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student toevoegen</title>
</head>
<body>
<h1>Student toevoegen</h1>

<form action="/studenten/toevoegen/result" method="get">
    <label for="voornaam">Voornaam:</label><br>
    <input type="text" id="voornaam" name="voornaam"><br>
    <label for="familienaam">Familienaam:</label><br>
    <input type="text" id="familienaam" name="familienaam"><br>
    <label for="klas">Klas:</label><br>
    <input type="text" id="klas" name="klas"><br><br>
    <input type="submit" value="Toevoegen"><br>
</form>
</body>
</html>
