<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="nl" class="h-100">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Tijdsloten Beheren</title>
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
        <div class="row py-3 text-center">
            <h2 class="display-5 fw-bold"><i class="bi bi-lock-fill"></i> Tijdsloten Beheren</h2>
        </div>
        <%--Tijdsloten berhenen mogelijkheid 1 met block comment--%>
        <%--        <div class="row">
                            &lt;%&ndash;Dagen&ndash;%&gt;
                            <div class="col border-end">
                                <h4>Dagen</h4>
                                <nav>
                                    <div class="nav flex-column nav-pills" id="nav-tabdagen" role="tablist">
                                        <button class="nav-link active" id="nav-maandag-tab" data-bs-toggle="tab"
                                                data-bs-target="#nav-maandag" type="button" role="tab" aria-controls="nav-maandag"
                                                aria-selected="true">
                                            Maandag
                                        </button>
                                        <button class="nav-link" id="nav-dinsdag-tab" data-bs-toggle="tab" data-bs-target="#nav-dinsdag"
                                                type="button" role="tab" aria-controls="nav-dinsdag" aria-selected="false">
                                            Dinsdag
                                        </button>
                                        <button class="nav-link" id="nav-woensdag-tab" data-bs-toggle="tab"
                                                data-bs-target="#nav-woensdag"
                                                type="button" role="tab" aria-controls="nav-woensdag" aria-selected="false">
                                            Woensdag
                                        </button>
                                        <button class="nav-link" id="nav-donderdag-tab" data-bs-toggle="tab"
                                                data-bs-target="#nav-donderdag"
                                                type="button" role="tab" aria-controls="nav-donderdag" aria-selected="false">
                                            Donderdag
                                        </button>
                                        <button class="nav-link" id="nav-vrijdag-tab" data-bs-toggle="tab" data-bs-target="#nav-vrijdag"
                                                type="button" role="tab" aria-controls="nav-vrijdag" aria-selected="false">
                                            Vrijdag
                                        </button>
                                        <button class="nav-link" id="nav-zaterdag-tab" data-bs-toggle="tab"
                                                data-bs-target="#nav-zaterdag"
                                                type="button" role="tab" aria-controls="nav-zaterdag" aria-selected="false">
                                            Zaterdag
                                        </button>
                                        <button class="nav-link" id="nav-zondag-tab" data-bs-toggle="tab" data-bs-target="#nav-zondag"
                                                type="button" role="tab" aria-controls="nav-zondag" aria-selected="false">
                                            Zondag
                                        </button>
                                    </div>
                                </nav>
                            </div>
                            &lt;%&ndash;Uren&ndash;%&gt;
                            <div class="col border-end">
                                <h4>Uren</h4>
                                <div class="tab-content" id="nav-tabdagenContent">
                                    <div class="tab-pane fade show active" id="nav-maandag" role="tabpanel"
                                         aria-labelledby="nav-maandag-tab">
                                        <nav>
                                            <div class="nav flex-column nav-pills" id="nav-taburenma" role="tablist">
                                                <button class="nav-link active" id="nav-ma1112-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-ma1112" type="button" role="tab"
                                                        aria-controls="nav-ma1112"
                                                        aria-selected="true">
                                                    11u
                                                </button>
                                                <button class="nav-link" id="nav-ma1213-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-ma1213"
                                                        type="button" role="tab" aria-controls="nav-ma1213" aria-selected="false">
                                                    12u
                                                </button>
                                                <button class="nav-link" id="nav-ma1314-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-ma1314"
                                                        type="button" role="tab" aria-controls="nav-ma1314" aria-selected="false">
                                                    13u
                                                </button>
                                                <button class="nav-link" id="nav-ma1415-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-ma1415"
                                                        type="button" role="tab" aria-controls="nav-ma1415" aria-selected="false">
                                                    14u
                                                </button>
                                                <button class="nav-link" id="nav-ma1516-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-ma1516"
                                                        type="button" role="tab" aria-controls="nav-ma1516" aria-selected="false">
                                                    15u
                                                </button>
                                                <button class="nav-link" id="nav-ma1617-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-ma1617"
                                                        type="button" role="tab" aria-controls="nav-ma1617" aria-selected="false">
                                                    16u
                                                </button>
                                                <button class="nav-link" id="nav-ma1718-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-ma1718"
                                                        type="button" role="tab" aria-controls="nav-ma1718" aria-selected="false">
                                                    17u
                                                </button>
                                                <button class="nav-link" id="nav-ma1819-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-ma1819"
                                                        type="button" role="tab" aria-controls="nav-ma1819" aria-selected="false">
                                                    18u
                                                </button>
                                                <button class="nav-link" id="nav-ma1920-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-ma1920"
                                                        type="button" role="tab" aria-controls="nav-ma1920" aria-selected="false">
                                                    19u
                                                </button>
                                                <button class="nav-link" id="nav-ma2021-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-ma2021"
                                                        type="button" role="tab" aria-controls="nav-ma2021" aria-selected="false">
                                                    20u
                                                </button>
                                                <button class="nav-link" id="nav-ma2122-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-ma2122"
                                                        type="button" role="tab" aria-controls="nav-ma2122" aria-selected="false">
                                                    21u
                                                </button>
                                            </div>
                                        </nav>
                                    </div>
                                    <div class="tab-pane fade" id="nav-dinsdag" role="tabpanel" aria-labelledby="nav-dinsdag-tab">
                                        <nav>
                                            <div class="nav flex-column nav-pills" id="nav-taburendi" role="tablist">
                                                <button class="nav-link active" id="nav-di1112-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-di1112" type="button" role="tab"
                                                        aria-controls="nav-di1112"
                                                        aria-selected="true">
                                                    11u
                                                </button>
                                                <button class="nav-link" id="nav-di1213-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-ma1213"
                                                        type="button" role="tab" aria-controls="nav-ma1213" aria-selected="false">
                                                    12u
                                                </button>
                                                <button class="nav-link" id="nav-di1314-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-di1314"
                                                        type="button" role="tab" aria-controls="nav-di1314" aria-selected="false">
                                                    13u
                                                </button>
                                                <button class="nav-link" id="nav-di1415-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-di1415"
                                                        type="button" role="tab" aria-controls="nav-di1415" aria-selected="false">
                                                    14u
                                                </button>
                                                <button class="nav-link" id="nav-di1516-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-di1516"
                                                        type="button" role="tab" aria-controls="nav-di1516" aria-selected="false">
                                                    15u
                                                </button>
                                                <button class="nav-link" id="nav-di1617-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-di1617"
                                                        type="button" role="tab" aria-controls="nav-di1617" aria-selected="false">
                                                    16u
                                                </button>
                                                <button class="nav-link" id="nav-di1718-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-ma1718"
                                                        type="button" role="tab" aria-controls="nav-di1718" aria-selected="false">
                                                    17u
                                                </button>
                                                <button class="nav-link" id="nav-di1819-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-di1819"
                                                        type="button" role="tab" aria-controls="nav-di1819" aria-selected="false">
                                                    18u
                                                </button>
                                                <button class="nav-link" id="nav-di1920-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-di1920"
                                                        type="button" role="tab" aria-controls="nav-di1920" aria-selected="false">
                                                    19u
                                                </button>
                                                <button class="nav-link" id="nav-di2021-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-di2021"
                                                        type="button" role="tab" aria-controls="nav-di2021" aria-selected="false">
                                                    20u
                                                </button>
                                                <button class="nav-link" id="nav-di2122-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-di2122"
                                                        type="button" role="tab" aria-controls="nav-di2122" aria-selected="false">
                                                    21u
                                                </button>
                                            </div>
                                        </nav>
                                    </div>
                                    <div class="tab-pane fade" id="nav-woensdag" role="tabpanel" aria-labelledby="nav-woensdag-tab">
                                        ...
                                    </div>
                                    <div class="tab-pane fade" id="nav-donderdag" role="tabpanel" aria-labelledby="nav-donderdag-tab">
                                        ...
                                    </div>
                                    <div class="tab-pane fade" id="nav-vrijdag" role="tabpanel" aria-labelledby="nav-vrijdag-tab">
                                        ...
                                    </div>
                                    <div class="tab-pane fade" id="nav-zaterdag" role="tabpanel" aria-labelledby="nav-zaterdag-tab">
                                        ...
                                    </div>
                                    <div class="tab-pane fade" id="nav-zondag" role="tabpanel" aria-labelledby="nav-zondag-tab">
                                        ...
                                    </div>
                                </div>
                            </div>
                            &lt;%&ndash;Tijdsloten&ndash;%&gt;
                            <div class="col">
                                <h4>Tijdsloten</h4>
                                <div class="tab-content" id="nav-taburenContent">
                                    <div class="tab-pane fade show active" id="nav-ma1112" role="tabpanel"
                                         aria-labelledby="nav-ma1112-tab">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheck11-1">
                                            <label class="form-check-label" for="flexCheck11-1">
                                                11u
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheck11-2">
                                            <label class="form-check-label" for="flexCheck11-2">
                                                11u10
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheck11-3">
                                            <label class="form-check-label" for="flexCheck11-3">
                                                11u20
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheck11-4">
                                            <label class="form-check-label" for="flexCheck11-4">
                                                11u30
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheck11-5">
                                            <label class="form-check-label" for="flexCheck11-5">
                                                11u40
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheck11-6">
                                            <label class="form-check-label" for="flexCheck11-6">
                                                11u50
                                            </label>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade show" id="nav-ma1213" role="tabpanel"
                                         aria-labelledby="nav-ma1213-tab">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheck12-1">
                                            <label class="form-check-label" for="flexCheck12-1">
                                                12u
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheck12-2">
                                            <label class="form-check-label" for="flexCheck12-2">
                                                12u10
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheck12-3">
                                            <label class="form-check-label" for="flexCheck12-3">
                                                12u20
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheck12-4">
                                            <label class="form-check-label" for="flexCheck12-4">
                                                12u30
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheck12-5">
                                            <label class="form-check-label" for="flexCheck12-5">
                                                12u40
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheck12-6">
                                            <label class="form-check-label" for="flexCheck12-6">
                                                12u50
                                            </label>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade show " id="nav-ma1314" role="tabpanel"
                                         aria-labelledby="nav-ma1314-tab">
                                        ...
                                    </div>
                                    <div class="tab-pane fade show" id="nav-ma1415" role="tabpanel"
                                         aria-labelledby="nav-ma1415-tab">
                                        ...
                                    </div>
                                    <div class="tab-pane fade show" id="nav-ma1516" role="tabpanel"
                                         aria-labelledby="nav-ma1516-tab">
                                        ...
                                    </div>
                                    <div class="tab-pane fade show" id="nav-ma1617" role="tabpanel"
                                         aria-labelledby="nav-ma1617-tab">
                                        ...
                                    </div>
                                    <div class="tab-pane fade show" id="nav-ma1718" role="tabpanel"
                                         aria-labelledby="nav-ma1718-tab">
                                        ...
                                    </div>
                                    <div class="tab-pane fade show" id="nav-ma1819" role="tabpanel"
                                         aria-labelledby="nav-ma1819-tab">
                                        ...
                                    </div>
                                    <div class="tab-pane fade show" id="nav-ma1920" role="tabpanel"
                                         aria-labelledby="nav-ma1920-tab">
                                        ...
                                    </div>
                                    <div class="tab-pane fade show" id="nav-ma2021" role="tabpanel"
                                         aria-labelledby="nav-ma2021-tab">
                                        ...
                                    </div>
                                    <div class="tab-pane fade show" id="nav-ma2122" role="tabpanel"
                                         aria-labelledby="nav-ma2122-tab">
                                        ...
                                    </div>
                                </div>
                            </div>
                        </div>--%>

        <%--Tijdsloten beheren mogelijkheid 2--%>

        <%--Nieuw tijdslot instellen--%>
        <div>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                    data-bs-target="#nieuwTijdslotInstellen"><i class="bi bi-plus"></i> Nieuw tijdslot
            </button>
        </div>
        <%--Nieuw tijdslot MODAL--%>
        <div class="modal fade" id="nieuwTijdslotInstellen" tabindex="-1"
             aria-labelledby="nieuwTijdslotInstellenLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="nieuwTijdslotInstellenLabel">Nieuw tijdslot</h5>
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
                </div>
            </div>
        </div>
        <div class="row p-3">
            <table class="table">
                <h3 class="p-1">Geplande tijdsloten</h3>
                <thead>
                <tr>
                    <th scope="col">Start - Stop</th>
                    <th scope="col">Opmerking</th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody class="align-middle">
                <tr>
                    <td>
                        05/05/2022 - 14u <br>
                        05/05/2022 - 15u
                    </td>
                    <td>20 medium frieten + snacks - Van Rooijen</td>
                    <td class="text-center">
                        <div class="row gap-3">
                            <div class="col">
                                <%--Bewerk artikel--%>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#bewerkTijdslot">Bewerken
                                </button>
                            </div>
                            <div class="col">
                                <%--Delete artikel--%>
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                        data-bs-target="#deleteTijdslot">Delete
                                </button>
                            </div>
                        </div>
                    </td>
                </tr>
                <%--Bewerk artikel MODAL--%>
                <div class="modal fade" id="bewerkTijdslot" tabindex="-1" aria-labelledby="bewerkTijdslotLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="bewerkTijdslotLabel">Bewerk tijdslot</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="row pb-3">
                                    <div class="col">
                                        <label for="bewerkStartTijdslot"
                                               class="form-label"><strong>Start</strong></label>
                                        <input type="datetime-local" class="form-control" id="bewerkStartTijdslot"
                                               value="2022-05-05T14:00" required>
                                    </div>
                                    <div class="col">
                                        <label for="bewerkStopTijdslot" class="form-label"><strong>Stop</strong></label>
                                        <input type="datetime-local" class="form-control" id="bewerkStopTijdslot"
                                               value="2022-05-05T15:00" required>
                                    </div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col">
                                        <label for="bewerkTijdslotInfo"
                                               class="form-label"><strong>Opmerking</strong></label>
                                        <textarea class="form-control" id="bewerkTijdslotInfo" rows="3">20 medium frieten + snacks - Van Rooijen</textarea>
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
                <%--Delete tijdslot MODAL--%>
                <div class="modal fade" id="deleteTijdslot" tabindex="-1" aria-labelledby="deleteTijdslotLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title text-danger" id="deleteTijdslotLabel"><i
                                        class="bi bi-exclamation-triangle-fill"></i> Waarschuwing</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p>U staat op het punt om het tijdslot van <br>
                                    <strong>05/05/22 - 14u tot 05/05/22 - 15u <br>
                                        (20 medium frieten + snacks - Van Rooijen)</strong> <br> te verwijderen! <br>
                                    Bent u zeker?</p>
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
