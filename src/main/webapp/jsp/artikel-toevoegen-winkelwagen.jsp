<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Locale" %>
<%
    Artikel artikel = (Artikel) request.getAttribute("artikel");
    List<Artikel> sauzen = (List<Artikel>) request.getAttribute("sauzen");

%>
<html lang="nl" class="h-100">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Menu</title>
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

    <main>
        <div class="row px-3 text-center">
            <h2 class="display-5 fw-bold"><i class="bi bi-plus"></i> Voeg toe </h2>
        </div>
        <div class="row p-3">
            <div class="modal-content">
                <form action="${pageContext.request.contextPath }/winkelwagen/artikel-toevoegen-aan-winkelwagen/result"
                      method="get">
                    <input name="selectedArtikel" type="hidden" value="<%=artikel.getId()%>"/>
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"><%=artikel.getNaam()%>
                        </h5>
                    </div>
                    <div class="modal-body">
                        <div class="row mb-2">

                            <label for="hoeveelheid" class="form-label"><strong>Hoeveelheid: </strong></label>


                            <div class="col-1">
                                <input class="form-control" id="hoeveelheid" type="number" name="hoeveelheid" value=1
                                       min=1>
                            </div>
                        </div>

                        <div <%if(artikel.getCategorie().getNaam().equalsIgnoreCase("Sauzen")){
                                    out.print("style='display: none;'");
                        }%>>
                        <label for="saus" class="form-label"><strong>Saus: </strong></label>
                        <fieldset aria-label="Select saus" id="saus" required>


                            <% for (Artikel saus : sauzen) {
                                out.print(
                                        "<input name=\"selectedSaus\"  type='checkbox' class='form-check-input'  value=\"" + saus.getId() + "\">" + saus.getNaam() + "</input>"
                                );
                            }%>

                        </fieldset>



                        <label for="kruiden" class="form-label"><strong>Kruiden: </strong></label>
                        <select class="form-select" name="selectedKruiden" aria-label="select kruiden" id="kruiden"
                                required>
                            <option selected disabled value="">Kies kruiden.</option>
                            <option value="Geen kruiden">Geen kruiden</option>
                            <option value="Zout">Zout</option>
                            <option value="Sate">Sate</option>
                            <option value="Zout + Sate">Zout + Sate</option>
                        </select>
                        </div>

                        <%--Opmerking--%>
                        <label for="opmerking"
                               class="form-label"><strong>Opmerking: </strong></label>
                        <textarea name='opmerking' class="form-control" id="opmerking" rows="3"
                                  placeholder="Bv. Bij een grote bestelling, de naam van de persoon, zo bewaard u zelf ook het overzicht van uw winkelwagen."></textarea>
                    </div>
                    <div class="modal-footer">
                        <a type="button" class="btn btn-secondary" href="/menu">Annuleer</a>
                        <%--                        <input type="submit" class="btn btn-primary" value="Bevestig"/>--%>
                        <input type="submit" class="btn btn-primary" value="Bevestig"/>
                    </div>
                </form>
            </div>
        </div>
    </main>

    <jsp:include page="footer.jsp"/>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
