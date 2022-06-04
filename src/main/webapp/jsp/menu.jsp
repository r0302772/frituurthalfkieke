<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel" %>
<%@ page import="java.util.List" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Categorie" %>
<%
    List<Categorie> categorien = (List<Categorie>) request.getAttribute("categorien");
    List<Artikel> artikels = (List<Artikel>) request.getAttribute("artikels");
%>
<html lang="nl" class="h-100">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Menu</title>
    <link rel="icon" type="image/x-icon" href="/images/drumstick-bite-solid.svg">
</head>
<body class="d-flex h-100">
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <jsp:include page="header.jsp" />

    <main>
        <div class="row px-3 text-center">
            <h2 class="display-5 fw-bold"><i class="fa-solid fa-utensils"></i> Menu</h2>
        </div>
        <div class="row p-3">
            <% for (Categorie categorie : categorien) {
                if (categorie.getArtikels().stream().count() != 0) {
                    out.print(
                            "<div class=\"row pb-3\">" +
                            "<table class=\"table table-bordered border-dark\">" +
                                    "<h3 class=\"p-1\">" + categorie.getNaam() + "</h3>" +
                                    "<thead></thead>" +
                                    "<tbody class=\"align-middle\">"
                    );

                    for (Artikel artikel : artikels) {
                        if (artikel.getCategorie() == categorie) {
                            out.print(
                                    "<tr>" +
                                            "<td class=\"col-6\">" + artikel.getNaam() +
                                            "<p class=\"fw-light\">" + artikel.getOpmerking() + "</p>" +
                                            "</td>" +
                                            "<td class=\"text-center col-3\">" + "€" + artikel.getPrijs() + "</td>"
                            );

                            if (artikel.getBeschikbaar()) {
                                out.print(
                                        "<td class=\"text-center text-danger col-3\">" +
                                                "<a type=\"button\" class=\"btn btn-primary\" href='/artikel-toevoegen-aan-winkelwagen?id=" + artikel.getId() + "'>" +
                                                "Voeg toe" +
                                                "</a>" +
                                                "</td>"
                                );
                            } else {
                                out.print(
                                        "<td class=\"text-center text-danger col-3\">Niet op voorraad</td>"
                                );
                            }

                            out.print("</tr>");
                        }
                    }

                    out.print(
                            "</tbody>" +
                                    "</table>" +
                                    "</div>" +
                                    "<hr>"
                    );
                }
            }

            %>
        </div>
    </main>

    <jsp:include page="footer.jsp" />
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
