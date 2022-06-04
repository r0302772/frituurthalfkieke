<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Categorie" %>
<%@ page import="java.util.List" %>
<%
    List<Categorie> categorien = (List<Categorie>) request.getAttribute("categorien");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Overzicht Categoriën</title>
    <link rel="icon" type="image/x-icon" href="/images/drumstick-bite-solid.svg">
</head>
<body class="d-flex h-100">
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <jsp:include page="header.jsp" />

    <main>
        <div class="row p-3 text-center">
            <h2 class="display-5 fw-bold"> Overzicht Categoriën</h2>
        </div>
        <div class="modal-content row">
            <form action="/categorie/toevoegen/result" method="get">
                <div class="modal-header">
                    <h5 class="modal-title" id="nieuweCategorieLabel">Nieuwe Categorie</h5>
                </div>
                <div class="modal-body">
                    <div class="row pb-3">
                        <div class="col">
                            <label for="naam" class="form-label"><strong>Naam</strong></label>
                            <input type="text" name="naam" class="form-control" id="naam"
                                   value="" required>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <a type="button" class="btn btn-secondary" href="/artikelsbeheren">
                        Annuleer
                    </a>
                    <input type="submit" value="Bevestig" class="btn btn-primary">
                </div>
            </form>
        </div>
        <div class="row p-3">

            <table class="table table-bordered border-dark">
                <h3 class="p-1">Categoriën </h3>
                <thead>
                </thead>
                <tbody class="align-middle">
                <%
                    for (Categorie categorie : categorien) {
                        out.print(
                                "<tr>" +
                                "<form action=\"/categorie/bewerken/result\" method=\"get\">" +
                                "<input type=\"hidden\" id=\"id\" name=\"id\" value=\"" + categorie.getId() + "\">" +
                                "<td>" +
                                "<input type=\"text\" name=\"naam\" value=\"" + categorie.getNaam() + "\" class=\"form-control\" id=\"naam\" required>" +
                                "</td>" +
                                "<td class=\"text-center\">" +
                                "<div class=\"row gap-3\">" +
                                "<div class=\"col\">" +
                                "<input type=\"submit\" class=\"btn btn-primary\"value=\"Bewerken\" >" +
                                "</div>" +
                                "</form>" +
                                "<form class='col' action=\"/categorie/delete/result\" method=\"get\">" +
                                "<input type=\"hidden\" id=\"id\" name=\"id\" value=\"" + categorie.getId() + "\">" +
                                "<input type=\"submit\" class=\"btn btn-danger\"value=\"Delete\" >" +
                                "</form>" +
                                "</div>" +
                                "</td>" +
                                "</tr>" +
                                "</form>"
                        );
                    }
                %>
                </tbody>
            </table>
        </div>
    </main>


    <jsp:include page="footer.jsp" />
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>

