<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Tijdslot" %>
<%@ page import="java.util.Date" %>
<%@ page import="javax.swing.text.DateFormatter" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    SimpleDateFormat date = new SimpleDateFormat("dd-MM-yyyy");
    Date datum = (Date) request.getAttribute("datum");
    String formatedDate = date.format(datum);
    Tijdslot selectedTijdslot = (Tijdslot) request.getAttribute("selectedTijdslot");
%>
<html lang="nl" class="h-100">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Bevestiging Bestelling</title>
    <link rel="icon" type="image/x-icon" href="/images/drumstick-bite-solid.svg">
</head>
<body class="d-flex h-100">
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <jsp:include page="header.jsp"/>

    <main class="text-center">
        <div class="row px-3">
            <h2 class="display-5 fw-bold"><i class="bi bi-check2"></i> Bestelling bevestigd!</h2>
        </div>
        <hr>
        <div class="row p-3">
            <h5>U wordt verwacht op <%=formatedDate%> tussen <%=selectedTijdslot.getStartuur()%>
                en <%=selectedTijdslot.getEinduur()%>!</h5>
        </div>
        <hr>
        <div class="row p-3">
            <h5 class="text-danger"><i class="bi bi-info-circle-fill"></i> Check uw mailbox/spam voor de
                bevestiginsmail.</h5>
        </div>

    </main>

    <jsp:include page="footer.jsp"/>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
