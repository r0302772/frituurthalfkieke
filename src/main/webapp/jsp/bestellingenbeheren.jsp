<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Bestelling" %>
<%@ page import="java.util.List" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.ArtikelBestelling" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Categorie" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Bestelling> bestellingen = (List<Bestelling>) request.getAttribute("bestellingen");
    List<Artikel> artikels = (List<Artikel>) request.getAttribute("artikels");
    List<Categorie> categorien = (List<Categorie>) request.getAttribute("categorien");

    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM");
    LocalDateTime now = LocalDateTime.now();
%>
<html lang="nl" class="h-100">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Bestellingen Beheren</title>
    <link rel="icon" type="image/x-icon" href="/images/drumstick-bite-solid.svg">
</head>
<body class="d-flex h-100">
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <jsp:include page="header.jsp"/>

    <main class="px-3">
        <div class="row p-3 text-center">
            <h2 class="display-5 fw-bold"><i class="fa-solid fa-cash-register"></i> Bestellingen Beheren</h2>
        </div>

        <div class="row p-3">
            <%--Wanneer--%>
            <div class="col-md-3 border-end">
                <h4>Tijdsloten <%=dtf.format(now)%> </h4>
                <hr>
                <nav>
                    <div class="nav flex-column nav-pills" id="nav-tabWanneer" role="tablist">
                        <button class="nav-link active" id="nav-vandaag-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-vandaag" type="button" role="tab" aria-controls="nav-vandaag"
                                aria-selected="true">
                            Vandaag <span class="badge bg-secondary">0</span>
                        </button>
                        <button class="nav-link" id="nav-volgendeWeek-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-volgendeWeek"
                                type="button" role="tab" aria-controls="nav-volgendeWeek" aria-selected="false">
                            Volgende week <span class="badge bg-danger">2</span>
                        </button>
                    </div>
                </nav>
            </div>
            <%--Bestellingen--%>
            <div class="col-md border-end">
                <h4>Bestellingen</h4>
                <hr>
                <div class="tab-content" id="nav-tabWanneerContent">
                    <div class="tab-pane fade show active" id="nav-vandaag" role="tabpanel"
                         aria-labelledby="nav-vandaag-tab">
                        <nav>
                            <div class="nav flex-column nav-pills" id="nav-tabOrdersVolgendeWeek" role="tablist">
                            <% for (Bestelling bestelling : bestellingen) {
                                out.print("<a href='#'" +
                                        "class='nav-link' " +
                                        "id='nav-order1-tab' " +
                                        "data-bs-toggle='tab' " +
                                        "data-bs-target='#nav-order1' " +
                                        "type='button' " +
                                        "role='tab'" +
                                        "aria-controls='nav-order1'" +
                                        "aria-selected='true'>" +
                                        bestelling.getAchternaam() + " " + bestelling.getVoornaam() +
                                        "</a><a class='nav-link btn-danger' href='/bestelling/detail?id=" + bestelling.getId() + "'>Details</a>"

                                );
                            } %>
                            </div>
                        </nav>
                    </div>
                    <div class="tab-pane fade show" id="nav-morgen" role="tabpanel"
                         aria-labelledby="nav-morgen-tab">
                        ...
                    </div>
                </div>
            </div>
        </div>
    </main>

    <jsp:include page="footer.jsp"/>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
