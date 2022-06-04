<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="nl" class="h-100">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Contact</title>
    <link rel="icon" type="image/x-icon" href="/images/drumstick-bite-solid.svg">
</head>
<body class="d-flex h-100">
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <jsp:include page="header.jsp" />

    <main>
        <div class="row px-1">
            <div class="col-lg p-3">
                <h2 class="display-5 fw-bold"><i class="fa-solid fa-address-book"></i> Contact</h2>
                <strong>Frituur t'Half Kieke</strong> <br>
                Kerkstraat 2 <br>
                2500 Lier <br>
                04....
            </div>
            <div class="col-lg p-3">
                <h2 class="display-5 fw-bold"><i class="bi bi-calendar-week-fill"></i> Openingsuren</h2>
                <strong>Maandag: </strong> Gesloten<br>
                <strong>Dinsdag: </strong> 12:00 - 21:00<br>
                <strong>Woensdag: </strong> 12:00 - 21:00<br>
                <strong>Donderdag: </strong> 12:00 - 21:00<br>
                <strong>Vrijdag: </strong> 12:00 - 21:00<br>
                <strong>Zaterdag: </strong> 12:00 - 21:00<br>
                <strong>Zondag: </strong> 12:00 - 21:00
            </div>
        </div>
        <hr>
        <div class="row p-3">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2503.783688866503!2d4.5710405156209255!3d51.13089787957503!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3fc89f308b9c3%3A0xc701aa29d9924fec!2sKerkstraat%202%2C%202500%20Lier!5e0!3m2!1snl!2sbe!4v1650875841633!5m2!1snl!2sbe"
                    style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </main>

    <jsp:include page="footer.jsp" />
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
