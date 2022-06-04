<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Categorie" %>
<%@ page import="java.util.List" %>
<%
    Artikel artikel = (Artikel) request.getAttribute("artikel");
    List<Categorie> categorien = (List<Categorie>) request.getAttribute("categorien");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Artikel Bewerken</title>
    <link rel="icon" type="image/x-icon" href="/images/drumstick-bite-solid.svg">
</head>
<body class="d-flex h-100">
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <jsp:include page="header.jsp" />

    <main>
        <div class="row p-3 text-center">
            <h2 class="display-5 fw-bold"><i class="bi bi-pencil-square"></i> Artikel Bewerken</h2>
        </div>
        <div class="modal-content">
            <form action="/artikel/bewerken/result" method="get">
                <input type="hidden" id="id" name="id" value="<%=artikel.getId()%>">
                <div class="modal-header">
                    <h5 class="modal-title" id="bewerkArtikelLabel"><%=artikel.getNaam()%></h5>
                </div>
                <div class="modal-body">
                    <div class="row pb-3">
                        <div class="col">
                            <%--Naam--%>
                            <label for="naam" class="form-label"><strong>Artikel</strong></label>
                            <input type="text" name="naam" value="<%=artikel.getNaam()%>"
                                   class="form-control" id="naam" required>
                        </div>
                        <div class="col">
                            <%--Prijs--%>
                            <label for="prijs" class="form-label"><strong>Prijs</strong></label>
                            <input type="number" name="prijs" value="<%=artikel.getPrijs()%>" min=0 step="0.01"
                                   class="form-control"
                                   id="prijs" required>
                        </div>
                    </div>
                    <div class="row pb-3">
                        <div class="col">
                            <%--Selectbox categorien--%>
                            <label for="categorie"
                                   class="form-label"><strong>Categorie</strong></label>
                            <select name="categorie" class="form-select" aria-label="Select categorie"
                                    id="categorie" required>
                                <option disabled>Selecteer categorie.</option>
                                <%
                                    for (Categorie categorie : categorien) {
                                        if (artikel.getCategorie() == categorie){
                                            out.print(
                                                    "<option selected value=\"" + categorie.getId() + "\">" + categorie.getNaam() + "</option>"
                                            );
                                        }
                                        else {
                                        out.print(
                                                "<option value=\"" + categorie.getId() + "\">" + categorie.getNaam() + "</option>"
                                        );
                                        }
                                    }
                                %>
                            </select>
                        </div>
                    </div>
                    <div class="row pb-3">
                        <div class="col">
                            <%--Opmerking--%>
                            <label for="opmerking"
                                   class="form-label"><strong>Opmerking</strong></label>
                            <textarea class="form-control" id="opmerking" rows="3"
                                      name="opmerking"><%=artikel.getOpmerking()%></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <%--Op voorraad--%>
                            <div class="form-check">
                                <% if (artikel.getBeschikbaar()) {%>
                                <input class="form-check-input" type="checkbox" name="beschikbaar" value=""
                                       id="beschikbaar" checked> <%} else {%>
                                <input class="form-check-input" type="checkbox" name="beschikbaar" value=""
                                       id="beschikbaar"> <% }%>
                                <label class="form-check-label" for="beschikbaar">
                                    Op voorraad
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <%--Bevestigen of annuleren--%>
                    <a class="btn btn-secondary" href="/artikelsbeheren">Annuleer</a>
                    <input type="submit" value="Bevestig" class="btn btn-primary">
                </div>
            </form>
            <%
                String s[] = request.getParameterValues("beschikbaar");
                if (s != null && s.length != 0) {
                    artikel.setBeschikbaar(true);
                } else {
                    artikel.setBeschikbaar(false);
                }
            %>
        </div>
    </main>

    <jsp:include page="footer.jsp" />
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
