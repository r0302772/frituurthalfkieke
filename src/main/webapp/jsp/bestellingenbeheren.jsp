<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <main class="px-3">
        <div class="row p-3 text-center">
            <h2 class="display-5 fw-bold"><i class="fa-solid fa-cash-register"></i> Bestellingen Beheren</h2>
        </div>
        <div class="d-grid gap-2 pb-3 d-md-flex justify-content-md-center">
            <button type="button" class="btn btn-success btn-lg">Online bestellingen toestaan!</button>
            <button type="button" class="btn btn-warning btn-lg">Blokkeren voor het komende uur! <span
                    class="badge bg-secondary">30 : 45</span></button>
            <button type="button" class="btn btn-danger btn-lg">Blokkeren tot het einde van de dag!</button>
        </div>

        <div class="row p-3">
            <%--Wanneer--%>
            <div class="col border-end">
                <h4>Wanneer</h4>
                <hr>
                <nav>
                    <div class="nav flex-column nav-pills" id="nav-tabWanneer" role="tablist">
                        <button class="nav-link active" id="nav-vandaag-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-vandaag" type="button" role="tab" aria-controls="nav-vandaag"
                                aria-selected="true">
                            Vandaag <span class="badge bg-secondary">0</span>
                        </button>
                        <button class="nav-link" id="nav-morgen-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-morgen"
                                type="button" role="tab" aria-controls="nav-morgen" aria-selected="false">
                            Morgen <span class="badge bg-secondary">0</span>
                        </button>
                        <button class="nav-link" id="nav-temZondag-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-temZondag"
                                type="button" role="tab" aria-controls="nav-temZondag" aria-selected="false">
                            Tot en met zondag <span class="badge bg-secondary">0</span>
                        </button>
                        <button class="nav-link" id="nav-volgendeWeek-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-volgendeWeek"
                                type="button" role="tab" aria-controls="nav-volgendeWeek" aria-selected="false">
                            Volgende week <span class="badge bg-danger">2</span>
                        </button>
                        <button class="nav-link" id="nav-naVolgendeWeek-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-naVolgendeWeek"
                                type="button" role="tab" aria-controls="nav-naVolgendeWeek" aria-selected="false">
                            Na volgende week <span class="badge bg-secondary">0</span>
                        </button>
                    </div>
                </nav>
            </div>
            <%--Bestellingen--%>
            <div class="col border-end">
                <h4>Bestellingen</h4>
                <hr>
                <div class="tab-content" id="nav-tabWanneerContent">
                    <div class="tab-pane fade show active" id="nav-vandaag" role="tabpanel"
                         aria-labelledby="nav-vandaag-tab">
                        ...
                    </div>
                    <div class="tab-pane fade show" id="nav-morgen" role="tabpanel"
                         aria-labelledby="nav-morgen-tab">
                        ...
                    </div>
                    <div class="tab-pane fade show" id="nav-temZondag" role="tabpanel"
                         aria-labelledby="nav-temZondag-tab">
                        ...
                    </div>
                    <div class="tab-pane fade" id="nav-volgendeWeek" role="tabpanel"
                         aria-labelledby="nav-volgendeWeek-tab">
                        <nav>
                            <div class="nav flex-column nav-pills" id="nav-tabOrdersVolgendeWeek" role="tablist">
                                <button class="nav-link" id="nav-order1-tab" data-bs-toggle="tab"
                                        data-bs-target="#nav-order1" type="button" role="tab"
                                        aria-controls="nav-order1"
                                        aria-selected="true">
                                    DO 05/05 - 13u | Vermeulen J. | 1 Friet 1 Snack
                                </button>
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                        data-bs-target="#tijdslotVerwijderen">DO 05/05 Tijdslot 14u - 15u
                                </button>
                                <div class="modal fade" id="tijdslotVerwijderen" tabindex="-1"
                                     aria-labelledby="tijdslotVerwijderenLabel"
                                     aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title text-danger" id="tijdslotVerwijderenLabel"><i
                                                        class="bi bi-exclamation-triangle-fill"></i> Waarschuwing
                                                </h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <p><strong>Dit tijdslot verwijderen?</strong></p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">
                                                    Annuleer
                                                </button>
                                                <button type="button" class="btn btn-primary">
                                                    Bevestig
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button class="nav-link" id="nav-order2-tab" data-bs-toggle="tab"
                                        data-bs-target="#nav-order2"
                                        type="button" role="tab" aria-controls="nav-order2" aria-selected="false">
                                    DO 05/05 - 14u30 | Van Rooijen | 20 Friet 25 Snack
                                </button>
                            </div>
                        </nav>
                    </div>
                    <div class="tab-pane fade" id="nav-naVolgendeWeek" role="tabpanel"
                         aria-labelledby="nav-naVolgendeWeek-tab">
                        ...
                    </div>
                </div>
            </div>
            <%--Details--%>
            <div class="col">
                <h4>Details</h4>
                <hr>
                <div class="tab-content" id="nav-tabDetailsContent">
                    <div class="tab-pane fade show" id="nav-order1" role="tabpanel"
                         aria-labelledby="nav-order1-tab">
                        <div class="row">
                            <div class="col">
                                <p><strong>Naam: </strong> Vermeulen Jos</p>
                                <p><strong>GSM: </strong> 04.......</p>
                                <hr>
                                <div class="row">
                                    <div class="row">
                                        <div class="col">
                                            <p>1 Kleine Friet<br>
                                                Joppiesaus<br>
                                                Zonder kruiden
                                            </p>
                                        </div>
                                        <div class="col">
                                            €3.00
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <p>1 Curryworst speciaal<br>
                                                Tomantenketchup<br>
                                                Zonder kruiden
                                            </p>
                                        </div>
                                        <div class="col">
                                            €2.00
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <p><strong>Totaal</strong></p>
                                        </div>
                                        <div class="col">
                                            €5.00
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                                            data-bs-target="#bestellingAfgehaald">Bestelling afgehaald
                                    </button>
                                    <div class="modal fade" id="bestellingAfgehaald" tabindex="-1"
                                         aria-labelledby="bestellingAfgehaaldLabel"
                                         aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <form>
                                                    <div class="modal-header">
                                                        <h5 class="modal-title text-danger"
                                                            id="bestellingAfgehaaldLabel"><i
                                                                class="bi bi-exclamation-triangle-fill"></i>
                                                            Waarschuwing
                                                        </h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p><strong>Is deze bestelling afgehaald?</strong></p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary"
                                                                data-bs-dismiss="modal">
                                                            Annuleer
                                                        </button>
                                                        <button type="button" class="btn btn-primary">
                                                            Bevestig
                                                        </button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade show " id="nav-order2" role="tabpanel"
                         aria-labelledby="nav-order2-tab">
                        ...
                    </div>
                </div>
            </div>
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
