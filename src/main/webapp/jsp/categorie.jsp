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
    <header class="mb-auto">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid"><a class="navbar-brand" href="/"><i class="fa-solid fa-drumstick-bite"></i>
                Frituur t'Half Kieke</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span>
                </button>
                <ul class="navbar-nav navbar-collapse">
                    <li class="nav-item"><a class="nav-link" href="/login"><i class="bi bi-box-arrow-in-right"></i>
                        Inloggen</a></li>
                    <li class="nav-item"><a class="nav-link" href="/"><i class="bi bi-box-arrow-left"></i> Uitloggen</a>
                    </li>
                </ul>
                <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="/artikelsbeheren"><i
                                class="fa-solid fa-warehouse"></i> Artikels</a></li>
                        <li class="nav-item"><a class="nav-link" href="/bestellingenbeheren"><i
                                class="fa-solid fa-cash-register"></i> Bestellingen</a></li>
                        <li class="nav-item"><a class="nav-link" href="/tijdslotenbeheren"><i
                                class="bi bi-lock-fill"></i> Tijdsloten</a></li>
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="/menu"><i class="fa-solid fa-utensils"></i> Menu</a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="/contact"><i
                                class="fa-solid fa-address-book"></i> Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="/winkelwagen"><i class="bi bi-cart-fill"></i>
                            Winkelwagen</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <hr>
    </header>

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

