<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel" %>
<%
    Artikel artikel = (Artikel) request.getAttribute("artikel");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Artikel Verwijderen</title>
    <link rel="icon" type="image/x-icon" href="/images/drumstick-bite-solid.svg">
</head>
<body class="d-flex h-100">
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <jsp:include page="header.jsp" />

    <main>
        <div class="row p-3 text-center">
            <h2 class="display-5 fw-bold"><i class="bi bi-trash-fill"></i> Artikel Verwijderen</h2>
        </div>
        <div class="modal-content">
            <form action="/artikel/delete/result" method="get">
                <input type="hidden" id="id" name="id" value="<%=artikel.getId()%>">
                <div class="modal-header">
                    <h5 class="modal-title text-danger" id="deleteArtikelLabel"><i
                            class="bi bi-exclamation-triangle-fill"></i> Waarschuwing</h5>
<%--                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>--%>
                </div>
                <div class="modal-body">
                    <p><strong>U staat op het punt om "<%=artikel.getNaam()%>" te verwijderen! <br>
                        Bent u zeker?</strong></p>
                </div>
                <div class="modal-footer">
                    <a class="btn btn-secondary" href="/artikelsbeheren">
                        Annuleer
                    </a>
                    <input type="submit" value="Bevestig" class="btn btn-primary">
                </div>
            </form>
        </div>
    </main>

    <jsp:include page="footer.jsp" />
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
