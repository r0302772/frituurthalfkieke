<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
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
        <div class="row p-3">
            <table class="table table-bordered border-dark">
                <h3 class="p-1">Frieten <img src="/images/fries.png" style="width: 25px;"></h3>
                <thead>
                <%--                <tr>
                                    <th scope="col">Grootte</th>
                                    <th scope="col">Prijs</th>
                                    <th scope="col">Bestellen</th>
                                </tr>--%>
                </thead>
                <tbody class="align-middle">
                <tr>
                    <td>Kinder Friet</td>
                    <td class="text-center">€2.00</td>
                    <td class="text-center">Op voorraad</td>
                    <td class="text-center">
                        <div class="row gap-3">
                            <div class="col">
                                <%--Bewerk artikel--%>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#bewerkArtikel">Bewerken
                                </button>
                            </div>
                            <div class="col">
                                <%--Delete artikel--%>
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                        data-bs-target="#deleteArtikel">Delete
                                </button>
                            </div>
                        </div>
                    </td>
                </tr>
                <%--Bewerk artikel MODAL--%>
                <div class="modal fade" id="bewerkArtikel" tabindex="-1" aria-labelledby="bewerkArtikelLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="bewerkArtikelLabel">Kinder Friet</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="row pb-3">
                                    <div class="col">
                                        <label for="naamArtikel" class="form-label"><strong>Artikel</strong></label>
                                        <input type="text" class="form-control" id="naamArtikel"
                                               value="Kinder Friet" required>
                                    </div>
                                    <div class="col">
                                        <label for="prijsArtikel" class="form-label"><strong>Prijs</strong></label>
                                        <input type="number" class="form-control" id="prijsArtikel" min=0
                                               value=2 required>
                                    </div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col">
                                        <label for="info"
                                               class="form-label"><strong>Opmerking</strong></label>
                                        <textarea class="form-control" id="info" rows="3"
                                                  placeholder="Bv. Extra info over de ingredienten. Bevat gluten."></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="voorraadCheck" checked>
                                            <label class="form-check-label" for="voorraadCheck">
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
                </div>
                <%--Delete artikel MODAL--%>
                <div class="modal fade" id="deleteArtikel" tabindex="-1" aria-labelledby="deleteArtikelLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title text-danger" id="deleteArtikelLabel"><i
                                        class="bi bi-exclamation-triangle-fill"></i> Waarschuwing</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p><strong>U staat op het punt om "Kinder Friet" te verwijderen! <br>
                                    Bent u zeker?</strong></p>
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
                <tr>
                    <td>Medium Friet</td>
                    <td class="text-center">€2.50</td>
                    <td class="text-center">Op voorraad</td>
                    <td class="text-center">
                        <div class="row gap-3">
                            <div class="col">
                                <button type="button" class="btn btn-primary">Bewerken</button>
                            </div>
                            <div class="col">
                                <button type="button" class="btn btn-danger">Delete</button>
                            </div>
                    </td>
                </tr>
                <tr>
                    <td>Grote Friet</td>
                    <td class="text-center">€3.00</td>
                    <td class="text-center">Op voorraad</td>
                    <td class="text-center">
                        <div class="row gap-3">
                            <div class="col">
                                <button type="button" class="btn btn-primary">Bewerken</button>
                            </div>
                            <div class="col">
                                <button type="button" class="btn btn-danger">Delete</button>
                            </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        Friet Stoofvlees
                    </td>
                    <td class="text-center">€4.00</td>
                    <td class="text-center">Op voorraad</td>
                    <td class="text-center">
                        <div class="row gap-3">
                            <div class="col">
                                <button type="button" class="btn btn-primary">Bewerken</button>
                            </div>
                            <div class="col">
                                <button type="button" class="btn btn-danger">Delete</button>
                            </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <hr>
        <div class="row p-3">
            <table class="table table-bordered border-dark">
                <h3 class="p-1">Burgers <i class="fa-solid fa-burger"></i></h3>
                <thead>
                <%--                <tr>
                                    <th scope="col">Grootte</th>
                                    <th scope="col">Prijs</th>
                                    <th scope="col">Bestellen</th>
                                </tr>--%>
                </thead>
                <tbody class="align-middle">
                <tr>
                    <td>
                        Bicky Classic
                        <p class="fw-light">Runds, Bicky Uitjes, Bicky Saus</p>
                    </td>
                    <td class="text-center">€3.00</td>
                    <td class="text-center">Op voorraad</td>
                    <td class="text-center">
                        <div class="row gap-3">
                            <div class="col">
                                <button type="button" class="btn btn-primary">Bewerken</button>
                            </div>
                            <div class="col">
                                <button type="button" class="btn btn-danger">Delete</button>
                            </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        Bicky Cheese
                        <p class="fw-light">Runds, Bicky Uitjes, Bicky Saus, Kaas</p>
                    </td>
                    <td class="text-center">€3.50</td>
                    <td class="text-center text-danger">Niet op voorraad</td>
                    <td class="text-center">
                        <div class="row gap-3">
                            <div class="col">
                                <button type="button" class="btn btn-primary">Bewerken</button>
                            </div>
                            <div class="col">
                                <button type="button" class="btn btn-danger">Delete</button>
                            </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        Bicky Chicken
                        <p class="fw-light">Kip, Bicky Uitjes, Bicky Saus</p>
                    </td>
                    <td class="text-center">€3.50</td>
                    <td class="text-center">Op voorraad</td>
                    <td class="text-center">
                        <div class="row gap-3">
                            <div class="col">
                                <button type="button" class="btn btn-primary">Bewerken</button>
                            </div>
                            <div class="col">
                                <button type="button" class="btn btn-danger">Delete</button>
                            </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        Cheeseburger
                        <p class="fw-light">Runds, Groenten, Kaas, Saus</p>
                    </td>
                    <td class="text-center">€4.00</td>
                    <td class="text-center">Op voorraad</td>
                    <td class="text-center">
                        <div class="row gap-3">
                            <div class="col">
                                <button type="button" class="btn btn-primary">Bewerken</button>
                            </div>
                            <div class="col">
                                <button type="button" class="btn btn-danger">Delete</button>
                            </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        Chickenburger
                        <p class="fw-light">Kip, Groenten, Saus</p>
                    </td>
                    <td class="text-center">€4.00</td>
                    <td class="text-center">Op voorraad</td>
                    <td class="text-center">
                        <div class="row gap-3">
                            <div class="col">
                                <button type="button" class="btn btn-primary">Bewerken</button>
                            </div>
                            <div class="col">
                                <button type="button" class="btn btn-danger">Delete</button>
                            </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </main>

    <footer class="mt-auto text-center pt-3">
        <hr>
        <p>Frituur t'Half Kieke - Copyright &copy; 2022</p>
    </footer>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
