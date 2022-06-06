<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Bestelling" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.ArtikelBestelling" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%
    Bestelling bestelling = (Bestelling) request.getAttribute("bestelling");
//    Map<ArtikelBestelling, List<ArtikelBestelling>> bestellingmap = (Map<ArtikelBestelling, List<ArtikelBestelling>>) request.getAttribute("bestellingmap");
    List<ArtikelBestelling> artikellijst = (List<ArtikelBestelling>) request.getAttribute("artikellijst");
    List<ArtikelBestelling> sauzenlijst = (List<ArtikelBestelling>) request.getAttribute("sauzenlijst");
%>
<html lang="nl" class="h-100">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Details Bestelling</title>
    <link rel="icon" type="image/x-icon" href="/images/drumstick-bite-solid.svg">
</head>
<body class="d-flex h-100">
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <jsp:include page="header.jsp"/>

    <main>
        <div class="row p-3 text-center">
            <h1 class="display-5 fw-bold"><i class="bi bi-journal-text"></i> Details Bestelling</h1>
            <h1 class="display-6"><%= bestelling.getAchternaam() + " " + bestelling.getVoornaam()%>
                <h1 class="display-6"><%=bestelling.getGsm()%>
                </h1>
                <h1 class="display-6"><%=bestelling.getEmail()%>
                </h1>
        </div>
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th scope="col">Artikel</th>
                <th scope="col">Saus</th>
                <th scope="col">Kruiden</th>
                <th scope="col">Opmerking</th>
                <th scope="col">Subtotaal</th>
            </tr>
            </thead>

            <tbody>
            <c:set var="total" value="0"></c:set>
            <c:forEach var="artikel" items="${artikellijst}">
                <c:set var="totaal"
                       value="${totaal + artikel.artikel.prijs * artikel.aantal}"></c:set>
                <tr>
                    <td>${artikel.aantal } ${artikel.artikel.naam}</td>
                    <td>
                        <c:forEach var="saus" items="${sauzenlijst}">
                            <c:if test="${saus.getparentartikelbestelling().id == artikel.id}">
                                <p>${saus.artikel.naam}</p>
                            </c:if>
                        </c:forEach>
                    </td>
                    <td>${artikel.kruiden}</td>
                    <td>${artikel.opmerking}</td>
                    <td>${artikel.aantal} * ${artikel.artikel.prijs}
                        = ${artikel.artikel.prijs * artikel.aantal}</td>
                </tr>
            </c:forEach>
            </tbody>

            <tfoot class="bg-secondary text-white">
            <td colspan="7">
                TOTAAL: €${totaal}
            </td>
            </tfoot>
        </table>


        <%--        <div class="tab-content" id="nav-tabDetailsContent">
                    <div class="tab-pane fade show" id="nav-order1" role="tabpanel"
                         aria-labelledby="nav-order1-tab">
                        <div class="row">
                            <div class="col">
                                <p><strong>Naam: </strong><%=bestelling.getAchternaam() + " " + bestelling.getVoornaam()%>
                                </p>
                                <p><strong>GSM: </strong><%=bestelling.getGsm()%>
                                </p>
                                <p><strong>Email: </strong><%=bestelling.getEmail()%>
                                </p>
                                <hr>
                                <div class="row"><% for (ArtikelBestelling artikelBestelling : artikelBestellingList) {
                                    out.print("<div class='row'>" +
                                            "<div class='col'>" +
                                            "<p>" + artikelBestelling.getAantal() + " " + artikelBestelling.getArtikel().getNaam() +
                                            "</p>" +
                                            "<p>" + artikelBestelling.getKruiden() + "</p>" +
                                            "<p>Zonder kruiden</p>" +
                                            "</div>" +
                                            "<div class='col'>" +
                                            "€3.00" +
                                            "</div>" +
                                            "</div>"
                                    );
                                }%>
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
                </div>--%>
    </main>

    <jsp:include page="footer.jsp"/>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>
