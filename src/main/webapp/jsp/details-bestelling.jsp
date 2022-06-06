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

        <form method="get" action="/bestelling-afgehaald">
            <input type="hidden" id="id" name="id" value="<%=bestelling.getId()%>">
            <div class="d-grid gap-2 col-6 mx-auto">
                <h1 class="display-6">Afgehaald?</h1>
                <%
                    if (bestelling.getAfgehaald()) {
                        out.print(
                                "<input name='afgehaald' type='submit' value='JA' class='btn btn-success'>"
                        );
                    } else {
                        out.print(
                                "<input name='afgehaald' type='submit' value='NEE' class='btn btn-danger'>"
                        );
                    }
                %>
            </div>
        </form>
    </main>

    <jsp:include page="footer.jsp"/>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>
