<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Categorie" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Categorie> categorien = (List<Categorie>) request.getAttribute("categorien");
%>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Nieuw Artikel</title>
    <link rel="icon" type="image/x-icon" href="/images/drumstick-bite-solid.svg">
</head>
<body class="d-flex h-100">
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <jsp:include page="header.jsp" />

    <main>
        <div class="row p-3 text-center">
            <%--Titel--%>
            <h2 class="display-5 fw-bold"><i class="bi bi-plus"></i> Nieuw Artikel</h2>
        </div>
        <div class="modal-content">
            <form action="/artikel/toevoegen/result" method="get">
                <div class="modal-header">
                    <h5 class="modal-title" id="bewerkArtikelLabel">Nieuw Artikel
                    </h5>
                </div>
                <div class="modal-body">
                    <div class="row pb-3">
                        <div class="col">
                            <%--Naam--%>
                            <label for="naam" class="form-label"><strong>Artikel</strong></label>
                            <input type="text" name="naam"
                                   class="form-control" id="naam" required>
                        </div>
                        <div class="col">
                            <%--Prijs--%>
                            <label for="prijs" class="form-label"><strong>Prijs</strong></label>
                            <input type="number" name="prijs" min=0 step="0.01"
                                   class="form-control"
                                   id="prijs" required>
                        </div>
                    </div>
                    <div class="row pb-3">
                        <div class="col">
                            <%--Selectbox categorien--%>
                            <label for="categorie"
                                   class="form-label"><strong>Categorie</strong></label>
                            <select name="categorie" class="form-select" aria-label="Select categorie"
                                    id="categorie" required>
                                <option selected disabled>Selecteer categorie.</option>
                                <%
                                    for (Categorie categorie : categorien) {
                                        out.print("<option value=\"" + categorie.getId() + "\">" + categorie.getNaam() + "</option>");
                                    }
                                %>
                            </select>
                        </div>
                    </div>
                    <div class="row pb-3">
                        <div class="col">
                            <%--Opmerking--%>
                            <label for="opmerking"
                                   class="form-label"><strong>Opmerking</strong></label>
                            <textarea class="form-control" id="opmerking" name="opmerking" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <%--Op voorraad--%>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="beschikbaar" value=""
                                       id="beschikbaar" checked>
                                <label class="form-check-label" for="beschikbaar">
                                    Op voorraad
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <a class="btn btn-secondary" href="/artikelsbeheren">
                        Annuleer
                    </a>
                    <input type="submit" value="Bevestig" class="btn btn-primary">
                </div>
            </form>
            <%
                String s[] = request.getParameterValues("beschikbaar");
                if (s != null && s.length != 0) {
                    request.setAttribute("beschikbaar", true);
                } else {
                    request.setAttribute("beschikbaar", false);
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
