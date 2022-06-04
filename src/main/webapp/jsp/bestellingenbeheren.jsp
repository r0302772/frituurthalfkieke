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
    <jsp:include page="header.jsp" />

    <main class="px-3">
        <div class="row p-3 text-center">
            <h2 class="display-5 fw-bold"><i class="fa-solid fa-cash-register"></i> Bestellingen Beheren</h2>
        </div>
        <div class="d-grid gap-2 pb-3 d-md-flex justify-content-md-center">
            <%--<button type="button" class="btn btn-success btn-lg">Online bestellingen toestaan!</button>--%>
            <button type="button" class="btn btn-danger btn-lg" data-bs-toggle="modal"
                    data-bs-target="#extraTijdslot">Extra tijdslot!
            </button>
        </div>

        <%--Extra tijdslot! MODAL--%>
        <div class="modal fade" id="extraTijdslot" tabindex="-1"
             aria-labelledby="extraTijdslotLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">
                            <h5 class="modal-title" id="extraTijdslotLabel">Extra tijdslot</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="row pb-3">
                                <div class="col">
                                    <label for="startTijdslot" class="form-label"><strong>Start</strong></label>
                                    <input type="datetime-local" class="form-control" id="startTijdslot" required>
                                </div>
                                <div class="col">
                                    <label for="stopTijdslot" class="form-label"><strong>Stop</strong></label>
                                    <input type="datetime-local" class="form-control" id="stopTijdslot" required>
                                </div>
                            </div>
                            <div class="row pb-3">
                                <div class="col">
                                    <label for="infoNieuwTijdslot"
                                           class="form-label"><strong>Opmerking</strong></label>
                                    <textarea class="form-control" id="infoNieuwTijdslot" rows="3"
                                              placeholder="Bv. Omwille van een grote bestelling op naam van..."></textarea>
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
                    </form>
                </div>
            </div>
        </div>

        <div class="row p-3">
            <%--Wanneer--%>
            <div class="col-md border-end">
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
            <div class="col-md border-end">
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
            <div class="col-md border-end">
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

    <jsp:include page="footer.jsp" />
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
