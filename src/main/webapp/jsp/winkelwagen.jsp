<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="nl" class="h-100">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Winkelwagen</title>
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
            <h2 class="display-5 fw-bold"><i class="bi bi-cart-fill"></i> Winkelwagen</h2>
        </div>
        <form>
            <div class="row">
                <%--Winkelwagen STAP 1--%>
                <div class="col-12 border">
                    <div class="row p-3 bg-secondary text-white">
                        <h4>Winkelwagen (Stap 1/2)</h4>
                    </div>
                    <div class="row pt-3">
                        <h5 class="text-danger"><i class="bi bi-info-circle-fill"></i> Enkel afhalen. Betalen bij
                            afhaling.
                        </h5>
                    </div>
                    <hr>
                    <a href="/menu" class="btn btn-primary">TERUG NAAR MENU</a>
                    <div class="row p-1">
                        <%--Bestelling--%>
                        <table class="table table-borderless">
                            <thead>
                            <tr>
                                <th scope="col"></th>
                                <th scope="col">Item</th>
                                <th scope="col">Saus</th>
                                <th scope="col">Kruiden</th>
                                <th scope="col">Opmerking</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%--Grote friet snelly eddy--%>
                            <tr>
                                <td>
                                    <button class="btn" type="button"><i class="bi bi-x-circle-fill"></i></button>
                                </td>
                                <td>
                                    1 Grote Friet
                                </td>
                                <td>
                                    Joppiesaus
                                </td>
                                <td>
                                    Zonder
                                </td>
                                <td>
                                    Snelle Eddy
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    €3.00
                                    <hr>
                                </td>
                            </tr>
                            <%--Curryworst speciaal Kelly--%>
                            <tr>
                                <td>
                                    <button class="btn" type="button"><i class="bi bi-x-circle-fill"></i></button>
                                </td>
                                <td>
                                    1 Curryworst Speciaal
                                </td>
                                <td>
                                    Tomatenketchup
                                </td>
                                <td>
                                    Zonder
                                </td>
                                <td>
                                    Kelly
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    €2.00
                                    <hr>
                                </td>
                            </tr>
                            </tbody>
                            <%--Totaal--%>
                            <tfoot class="bg-secondary bg-opacity-10">
                            <td colspan="5">
                                TOTAAL: €5.OO
                            </td>
                            </tfoot>
                        </table>
                    </div>
                </div>
                <%--Uw gegevens STAP 2--%>
                <div class="col-12 border">
                    <div class="row p-3 bg-secondary text-white">
                        <h4>Uw gegevens (Stap 2/2)</h4>
                    </div>
                    <div class="row">
                        <div class="row">
                            <div class="col-auto p-3">
                                <i class="bi bi-person-fill"></i>
                            </div>
                            <div class="col">
                                <%--Voornaam en achternaam--%>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="row pt-3">
                                            <div class="col-auto pe-1">
                                                <label for="voornaam" class="form-label">Voornaam: </label>
                                            </div>
                                            <div class="col">
                                                <input type="text" class="form-control" id="voornaam" placeholder=""
                                                       value=""
                                                       required="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="row pt-3">
                                            <div class="col-auto pe-1">
                                                <label for="achternaam" class="form-label">Achternaam: </label>
                                            </div>
                                            <div class="col">
                                                <input type="text" class="form-control" id="achternaam" placeholder=""
                                                       value=""
                                                       required="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--gsm en email--%>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="row pt-3">
                                            <div class="col-auto pe-1">
                                                <label for="gsm" class="form-label">GSM: </label>
                                            </div>
                                            <div class="col">
                                                <input type="text" class="form-control" id="gsm" placeholder="" value=""
                                                       required="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="row pt-3">
                                            <div class="col-auto pe-1">
                                                <label for="email" class="form-label">Email: </label>
                                            </div>
                                            <div class="col">
                                                <input type="email" class="form-control" id="email" placeholder=""
                                                       value=""
                                                       required="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                            </div>
                        </div>
                        <%--Afhalen--%>
                        <div class="row">
                            <div class="col-auto">
                                <i class="bi bi-calendar-event-fill"></i>
                            </div>
                            <div class="col">
                                <div class="row">
                                    <div class="col pb-3">
                                        AFHALEN
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <input type="date" id="start" name="trip-start" class="form-control">
<%--                                        <select class="form-select" aria-label="select date" required="">
                                            <option selected disabled value="">Kies een datum.</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>--%>
                                    </div>
                                    <div class="col">
                                        <select class="form-select" aria-label="select time" required="">
                                            <option selected disabled value="">Kies een uur.</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </div>
                                </div>
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-auto">
                                <i class="bi bi-info-circle-fill text-danger h5"></i>
                            </div>
                            <div class="col">
                                <h5 class="text-danger"> Zijn er geen vrije
                                    tijdstippen meer, gelieve niet te bellen, telefonisch worden er geen bestellingen
                                    meer
                                    opgenomen.
                                </h5>
                            </div>
                        </div>
                        <div class="row d-grid p-3">
                            <%--<button type="submit" class="btn btn-primary btn-lg">BESTELLEN</button>--%>
                            <a href="/bevestigingbestelling" class="btn btn-primary btn-lg">BESTELLEN</a>
                        </div>
                    </div>
                </div>
            </div>
        </form>
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
