<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Tijdslot" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    List<Tijdslot> tijdsloten = (List<Tijdslot>) request.getAttribute("tijdsloten");
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
    <title>Frituur t'Half Kieke | Gegevens & Tijdslot</title>

    <link rel="icon" type="image/x-icon" href="/images/drumstick-bite-solid.svg">

</head>
<body class="d-flex h-100">
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <jsp:include page="header.jsp"/>

    <main>
        <div class="row p-3 text-center">
            <h2 class="display-5 fw-bold"><i class="bi bi-cart-fill"></i> Winkelwagen</h2>
        </div>
        <form method="get" action="${pageContext.request.contextPath}/winkelwagen/bevestiging-bestelling" class="row">
            <div class="col-12 border px-3">
                <div class="row p-3 bg-secondary text-white">
                    <h4>Stap 3/3</h4>
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
                                            <input type="text" class="form-control" name="voornaam"
                                                   id="voornaam" placeholder=""
                                                   value=""
                                                   required>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row pt-3">
                                        <div class="col-auto pe-1">
                                            <label for="achternaam" class="form-label">Achternaam: </label>
                                        </div>
                                        <div class="col">
                                            <input type="text" class="form-control" name="achternaam"
                                                   id="achternaam" placeholder=""
                                                   value=""
                                                   required>
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
                                            <input type="text" class="form-control" name="gsm" id="gsm"
                                                   placeholder="" value=""
                                                   required>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row pt-3">
                                        <div class="col-auto pe-1">
                                            <label for="email" class="form-label">Email: </label>
                                        </div>
                                        <div class="col">
                                            <input type="email" class="form-control" name="email" id="email"
                                                   placeholder=""
                                                   value=""
                                                   required>
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
                                    TIJDSLOT KIEZEN <%=formatedDate%>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <select class="form-select" name="selectedTijdslot" aria-label="select time" required>
                                        <option selected disabled value="">Kies een tijdslot.</option>
                                        <% for (Tijdslot tijdslot : tijdsloten) {
                                            if(tijdslot.getAantal()!=0){
                                            out.print(
                                                    "<option value='" + tijdslot.getId() + "'>" +
                                                            tijdslot.getStartuur() +
                                                            " - " +
                                                            tijdslot.getEinduur() +
                                                            "</option>"
                                            );
                                            }
                                        }
                                        %>
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
                        <button type="submit" class="btn btn-primary btn-lg">BESTELLEN</button>
                        <%--                    <a href="/winkelwagen/bevestiging-bestelling" class="btn btn-primary btn-lg">BESTELLEN</a>--%>
                    </div>
                </div>
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
