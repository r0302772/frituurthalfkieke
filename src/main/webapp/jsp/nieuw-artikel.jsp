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
    <title>Frituur t'Half Kieke | Artikel Bewerken</title>
    <link rel="icon" type="image/x-icon" href="/images/drumstick-bite-solid.svg">
</head>
<body class="d-flex h-100">
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="mb-auto">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="/"><i class="fa-solid fa-drumstick-bite"></i> Frituur t'Half Kieke</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <ul class="navbar-nav navbar-collapse">
                    <li class="nav-item">
                        <a class="nav-link" href="/login"><i class="bi bi-box-arrow-in-right"></i> Inloggen</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/"><i class="bi bi-box-arrow-left"></i> Uitloggen</a>
                    </li>
                </ul>
                <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="/artikelsbeheren"><i class="fa-solid fa-warehouse"></i>
                                Artikels</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/bestellingenbeheren"><i class="fa-solid fa-cash-register"></i>
                                Bestellingen</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/tijdslotenbeheren"><i class="bi bi-lock-fill"></i> Tijdsloten</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="/menu"><i class="fa-solid fa-utensils"></i> Menu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/contact"><i class="fa-solid fa-address-book"></i> Contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/winkelwagen"><i class="bi bi-cart-fill"></i> Winkelwagen</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <hr>
    </header>

    <main>
        <div class="row p-3 text-center">
            <%--Titel--%>
            <h2 class="display-5 fw-bold"><i class="bi bi-plus"></i> Nieuw Artikel</h2>
        </div>
        <div class="modal-content">
            <form action="/artikelsbeheren/artikel/toevoegen/result" method="get">
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
                            <input type="text" name="prijs"
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
            <%--Beschikbaar blijft om de een of andere reden op false staan, je kan een artikel op false zetten maar niet terug op true...--%>
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

    <footer class="mt-auto text-center pt-3">
        <hr>
        <p>Frituur t'Half Kieke - Copyright &copy; 2022 - <a href="/login">Admin</a></p>
    </footer>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
