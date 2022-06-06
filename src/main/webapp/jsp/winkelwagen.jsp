<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String error = (String) request.getAttribute("error");
%>
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
    <jsp:include page="header.jsp"/>

    <main>
        <div class="row p-3 text-center">
            <h2 class="display-5 fw-bold"><i class="bi bi-cart-fill"></i> Winkelwagen</h2>
        </div>
        <form method="get" action="${pageContext.request.contextPath}/winkelwagen/datum-kiezen" class="row">
            <div class="col-12 border px-3">
                <div class="row p-3 bg-secondary text-white">
                    <h4>Stap 1/3</h4>
                </div>
                <div class="row pt-3">
                    <h5 class="text-danger"><i class="bi bi-info-circle-fill"></i> Enkel afhalen. Betalen bij
                        afhaling.
                    </h5>
                </div>
                <hr>
                <a href="/menu" class="btn btn-primary">TERUG NAAR MENU</a>
                <div class="row p-1">
                    <table class="table ">
                        <thead>
                        <tr>
                            <th scope="col"></th>
                            <th scope="col">Artikel</th>
                            <th scope="col">Prijs</th>
                            <th scope="col">Saus</th>
                            <th scope="col">Kruiden</th>
                            <th scope="col">Opmerking</th>
                            <th scope="col">Subtotaal</th>
                        </tr>
                        </thead>

                        <tbody>
                        <c:set var="total" value="0"></c:set>
                        <c:forEach var="ItemWinkelwagen" items="${sessionScope.winkelwagen }">
                            <c:set var="totaal"
                                   value="${totaal + ItemWinkelwagen.artikel.prijs * ItemWinkelwagen.aantal }"></c:set>
                            <tr class="">
                                <td>
                                    <a class="btn"
                                       href="${pageContext.request.contextPath }/winkelwagen/verwijderen/${ItemWinkelwagen.artikel.id }"
                                       onclick="return confirm('Bent u zeker dat u dit artikel wil verwijderen?')">
                                        <i class="bi bi-x-circle-fill"></i>
                                    </a>
                                </td>
                                <td>${ItemWinkelwagen.aantal } ${ItemWinkelwagen.artikel.naam}</td>
                                <td>${ItemWinkelwagen.artikel.prijs }</td>
                                <td>
                                    <c:forEach var="saus" items="${ItemWinkelwagen.Getsauzen()}">
                                        <p>${saus.naam}</p>
                                    </c:forEach>
                                </td>
                                <td>${ItemWinkelwagen.kruiden}</td>
                                <td>${ItemWinkelwagen.opmerking}</td>
                                <td>${ItemWinkelwagen.artikel.prijs * ItemWinkelwagen.aantal }</td>
                            </tr>
                        </c:forEach>
                        </tbody>

                        <tfoot class="bg-secondary text-white">
                        <td colspan="7">
                            TOTAAL: €${totaal}
                        </td>
                        </tfoot>
                    </table>
                </div>
                <div class="row d-grid p-3">
                    <button type="submit" class="btn btn-primary btn-lg">NAAR STAP 2/3</button>
                </div>
                <%
                    if (error != null) {
                        out.print(
                                "<div class='row'><h5 class='text-danger'><i class=\"bi bi-info-circle-fill\"></i> " + error + "</h5></div>"
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
