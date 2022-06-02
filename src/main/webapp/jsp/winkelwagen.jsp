<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                    <form:form method="post" action="/logout" class="nav-item">
                        <li class="nav-item">
                            <a class="btn" href="/login">Inloggen</a>
                        </li>
                        <li class="nav-item">
                            <input class="btn" type="submit" value="Uitloggen"/>
                        </li>
                    </form:form>
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

<%--    <main>
        <div class="row p-3 text-center">
            <h2 class="display-5 fw-bold"><i class="bi bi-cart-fill"></i> Winkelwagen</h2>
        </div>
        <form>
            <div class="row">
                &lt;%&ndash;Winkelwagen STAP 1&ndash;%&gt;
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
                        &lt;%&ndash;Bestelling&ndash;%&gt;
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
                            &lt;%&ndash;Grote friet snelly eddy&ndash;%&gt;
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
                            &lt;%&ndash;Curryworst speciaal Kelly&ndash;%&gt;
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
                            &lt;%&ndash;Totaal&ndash;%&gt;
                            <tfoot class="bg-secondary bg-opacity-10">
                            <td colspan="5">
                                TOTAAL: €5.OO
                            </td>
                            </tfoot>
                        </table>
                    </div>
                </div>
                &lt;%&ndash;Uw gegevens STAP 2&ndash;%&gt;
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
                                &lt;%&ndash;Voornaam en achternaam&ndash;%&gt;
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
                                &lt;%&ndash;gsm en email&ndash;%&gt;
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
                        &lt;%&ndash;Afhalen&ndash;%&gt;
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
&lt;%&ndash;                                        <select class="form-select" aria-label="select date" required="">
                                            <option selected disabled value="">Kies een datum.</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>&ndash;%&gt;
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
                            &lt;%&ndash;<button type="submit" class="btn btn-primary btn-lg">BESTELLEN</button>&ndash;%&gt;
                            <a href="/bevestigingbestelling" class="btn btn-primary btn-lg">BESTELLEN</a>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </main>--%>

    <h3>Winkelmand</h3>
    <table cellpadding="2" cellspacing="2" border="1">
        <tr>
            <th>Option</th>

            <th>Artikel</th>

            <th>Prijs</th>
            <th>Hoeveelheid</th>
            <th>Sub Totaal</th>
        </tr>
        <c:set var="total" value="0"></c:set>
        <c:forEach var="ItemWinkelwagen" items="${sessionScope.winkelwagen }">
            <c:set var="totaal"
                   value="${totaal + ItemWinkelwagen.artikel.prijs * ItemWinkelwagen.hoeveelheid }"></c:set>
            <tr>
                <td align="center"><a
                        href="${pageContext.request.contextPath }/winkelwagen/verwijderen/${ItemWinkelwagen.artikel.id }"
                        onclick="return confirm('Bent u zeker dat u dit artikel wil verwijderen?')">Verwijderen</a></td>

                <td>${ItemWinkelwagen.artikel.naam}</td>

                <td>${ItemWinkelwagen.artikel.prijs }</td>
                <td>${ItemWinkelwagen.hoeveelheid }</td>
                <td>${ItemWinkelwagen.artikel.prijs * ItemWinkelwagen.hoeveelheid }</td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="6" align="right">Totaal</td>
            <td>${totaal }</td>
        </tr>
    </table>
<br>
    <a href="${pageContext.request.contextPath }/menu">Ga verder met winkelen</a>
    <jsp:include page="footer.jsp" />
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>
