<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Locale" %>
<%
    Artikel artikel = (Artikel) request.getAttribute("artikel");
    ArrayList<Artikel> sauzen = (ArrayList<Artikel>) request.getAttribute("sauzen");

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
    <jsp:include page="header.jsp"/>

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
                            <label for="aantal" class="form-label"><strong>Aantal: </strong></label>
                            <div class="col-1">
                                <input class="form-control" id="aantal" type="number" name="aantal" value=1
                                       min=1>
                            </div>
                        </div>

                        <div <%
                            if (artikel.getCategorie().getNaam().equalsIgnoreCase("Sauzen")) {
                                out.print("class='row mb-2' style='display: none;'");
                            }
                        %>>
                            <div class="row mb-2">
                                <label for="saus" class="form-label"><strong>Saus: </strong></label>
                                <fieldset aria-label="Select saus" id="saus">
                                    <% for (Artikel saus : sauzen) {
                                        out.print("<div class='form-check form-check-inline'>" +
                                                "<input name=\"selectedSaus\"  type='checkbox' class='form-check-input'  value=\"" + saus.getId() + "\">" +
                                                "<label class='form-check-label'>" + saus.getNaam() +
                                                "</label> </div>"
                                        );
                                    }%>
                                </fieldset>
                            </div>
                            <div class="mb-2">
                                <label for="kruiden" class="form-label"><strong>Kruiden: </strong></label>
                                <select class="form-select" name="selectedKruiden" aria-label="select kruiden"
                                        id="kruiden">
                                    <option selected value="Geen kruiden">Geen kruiden.</option>
                                    <option value="Zout">Zout</option>
                                    <option value="Sate">Sate</option>
                                    <option value="Zout + Sate">Zout + Sate</option>
                                </select>
                            </div>
                        </div>

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
