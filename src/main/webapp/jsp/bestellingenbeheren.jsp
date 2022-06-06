<%@ page import="java.util.List" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Bestelling> bestellingen = (List<Bestelling>) request.getAttribute("bestellingen");
    SimpleDateFormat date = new SimpleDateFormat("dd-MM-yyyy");
    Date datum = (Date) request.getAttribute("datum");
    String formatedDate = date.format(datum);
%>
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
    <jsp:include page="header.jsp"/>

    <main class="px-3">
        <div class="row p-3 text-center">
            <h2 class="display-5 fw-bold"><i class="fa-solid fa-cash-register"></i> Bestellingen Beheren</h2>
        </div>
        <form method="get" action="/bestellingenbeheren/ga-naar-datum"
              class="row">
            <div class="row text-center justify-content-center">
                <h4 class="display-6"><%=formatedDate%>
                </h4>
                <div class="col-md-3 d-grid gap-2">
                    <input type="date" id="selectedDatum" name="selectedDatum" class="form-control"
                           required>
                    <button type="submit" class="btn btn-primary btn-lg">GA NAAR DATUM</button>
                </div>
            </div>
        </form>
        <div class="row p-3">
            <div class="col">
                <h4>Bestellingen</h4>
                <hr>
                <div class="tab-content" id="nav-tabWanneerContent">
                    <div class="tab-pane fade show active" id="nav-vandaag" role="tabpanel"
                         aria-labelledby="nav-vandaag-tab">
                        <nav>
                            <div class="nav flex-column nav-pills" id="nav-tabOrdersVolgendeWeek" role="tablist">
                                <table class='table table-borderded'>
                                    <tbody>
                                    <% for (Bestelling bestelling : bestellingen) {
                                        out.print(
                                                "<tr>" +
                                                        "<td>" +
                                                        bestelling.getTijdslot().getStartuur() + " - " +
                                                        bestelling.getTijdslot().getEinduur() +
                                                        "</td>" +
                                                        "<td>" +
                                                        bestelling.getAchternaam() + " " + bestelling.getVoornaam() +
                                                        "</td>" +
                                                        "<td>" +
                                                        "<a href='/bestelling/detail?id=" + bestelling.getId() + "'>Details</a>" +
                                                        "</td>" +
                                                        "<td><p class="
                                        );
                                        if (bestelling.getAfgehaald()) {
                                            out.print(
                                                    "'btn btn-success disabled'>JA</p>"
                                            );
                                        } else {
                                            out.print(
                                                    "'btn btn-danger disabled'>NEE</p>"
                                            );
                                        }
                                        out.print("</td>" +
                                                "</tr>"
                                        );
                                    } %>
                                    </tbody>
                                </table>
                            </div>
                        </nav>
                    </div>
                    <div class="tab-pane fade show" id="nav-morgen" role="tabpanel"
                         aria-labelledby="nav-morgen-tab">
                        ...
                    </div>
                </div>
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
