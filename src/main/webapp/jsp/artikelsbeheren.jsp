<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel" %>
<%@ page import="java.util.List" %>
<%
    List<Artikel> artikels = (List<Artikel>) request.getAttribute("artikels");
%>
<html lang="nl" class="h-100">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Artikels Beheren</title>
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
        <div class="row px-3 text-center">
            <h2 class="display-5 fw-bold"><i class="fa-solid fa-warehouse"></i> Artikels Beheren</h2>
        </div>
        <%--Nieuw Artikel--%>
        <div>
            <a type="button" class="btn btn-primary" href='/artikelsbeheren/artikel/toevoegen'><i class="bi bi-plus"></i> Nieuw
                Artikel</a>
            <a type="button" class="btn btn-primary" href='/categorie'><i class="bi bi-plus"></i> Overzicht categoriën</a>
        </div>
        <%--Niew Artikel MODAL--%>
        <%--        <div class="modal fade" id="nieuwArtikel" tabindex="-1" aria-labelledby="nieuwArtikelLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="nieuwArtikelLabel">Nieuw Artikel</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="row pb-3">
                                    <div class="col">
                                        <label for="naamNieuwArtikel" class="form-label"><strong>Artikel</strong></label>
                                        <input type="text" class="form-control" id="naamNieuwArtikel"
                                               value="" required>
                                    </div>
                                    <div class="col">
                                        <label for="prijsNieuwArtikel" class="form-label"><strong>Prijs</strong></label>
                                        <input type="number" class="form-control" id="prijsNieuwArtikel" min=0 required>
                                    </div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col">
                                        <label for="categorieNieuwArtikel" class="form-label"><strong>Categorie</strong></label>
                                        <select class="form-select" aria-label="Select categorie" id="categorieNieuwArtikel"
                                                required>
                                            <option disabled selected>Selecteer categorie.</option>
                                            <option value="frieten">Frieten</option>
                                            <option value="burgers">Burgers</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col">
                                        <label for="info"
                                               class="form-label"><strong>Opmerking</strong></label>
                                        <textarea class="form-control" id="infoNieuwArtikel" rows="3"
                                                  placeholder="Bv. Extra info over de ingredienten. Bevat gluten."></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value=""
                                                   id="voorraadNieuwArtikelCheck"
                                                   checked>
                                            <label class="form-check-label" for="voorraadNieuwArtikelCheck">
                                                Op voorraad
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                    Annuleer
                                </button>
                                <button type="button" class="btn btn-primary">
                                    Bevestig
                                </button>
                            </div>
                        </div>
                    </div>
                </div>--%>
        <%--Niew categorie MODAL--%>
        <div class="modal fade" id="nieuweCategorie" tabindex="-1" aria-labelledby="nieuweCategorieLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="nieuweCategorieLabel">Nieuw Categorie</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="row pb-3">
                            <div class="col">
                                <label for="naamNieuweCategorie" class="form-label"><strong>Naam</strong></label>
                                <input type="text" class="form-control" id="naamNieuweCategorie"
                                       value="" required>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                            Annuleer
                        </button>
                        <button type="button" class="btn btn-primary">
                            Bevestig
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <div class="row p-3">
            <%--Frietentabel--%>
            <table class="table table-bordered border-dark">
                <%--<h3 class="p-1">Frieten <img src="/images/fries.png" style="width: 25px;"></h3>--%>
                <thead>
                </thead>
                <tbody class="align-middle">
                <%
                    for (Artikel artikel : artikels) {
                        out.print("<tr>"
                                + "<td>" + artikel.getNaam()
                                + "<p class=\"fw-light\">" + artikel.getOpmerking() + "</p>"
                                + "</td>"
                                + "<td class=\"text-center\">" + "€" + artikel.getPrijs() + "</td>");
                        if (artikel.getBeschikbaar())
                             {out.print("<td class=\"text-center\">Op voorraad</td>");}
                        else {out.print("<td class=\"text-center text-danger\">Niet op voorraad</td>");}
                                out.print("<td class=\"text-center\">" +
                                "<div class=\"row gap-3\">" +
                                "<div class=\"col\">" +
                                "<a type=\"button\" class=\"btn btn-primary\" href='/artikelsbeheren/artikel/bewerken?id=" + artikel.getId() + "'>Bewerken</a>" +
                                "</div>" +
                                "<div class=\"col\">" +
                                "<a type=\"button\" class=\"btn btn-danger\" href='/artikelsbeheren/artikel/delete?id=" + artikel.getId() + "'>Delete</a>" +
                                "</div>" +
                                "</div>" +
                                "</td>"
                                + "</tr>");
                    }
                %>
                </tbody>
            </table>
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
