<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="nl" class="h-100">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Datum Kiezen</title>

    <link rel="icon" type="image/x-icon" href="/images/drumstick-bite-solid.svg">

</head>
<body class="d-flex h-100">
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <jsp:include page="header.jsp"/>

    <main>
        <div class="row p-3 text-center">
            <h2 class="display-5 fw-bold"><i class="bi bi-cart-fill"></i> Winkelwagen</h2>
        </div>
            <div class="col-12 border px-3">
                <form method="get" action="${pageContext.request.contextPath}/winkelwagen/datum-kiezen/result"
                      class="row">
                <div class="row p-3 bg-secondary text-white">
                    <h4>Stap 2/3</h4>
                </div>
                <div class="row">
                    <div class="row">
                        <div class="col p-3">
                            <div class="row">
                                <div class="col pb-3">
                                    DATUM KIEZEN
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <input type="date" id="selectedDatum" name="selectedDatum" class="form-control" required>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row d-grid px-3">
                        <button type="submit" class="btn btn-primary btn-lg">NAAR STAP 3/3</button>
                        <%--                    <a href="/winkelwagen/gegevens-en-tijdslot" class="btn btn-primary btn-lg">NAAR STAP 3/3</a>--%>
                    </div>
                </div>        </form>
            </div>


    </main>

    <jsp:include page="footer.jsp"/>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>
