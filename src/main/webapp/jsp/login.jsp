<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="nl" class="h-100">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Login</title>
    <link rel="icon" type="image/x-icon" href="/images/drumstick-bite-solid.svg">
</head>
<body class="d-flex h-100">
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <jsp:include page="header.jsp" />

    <main class="px-3">
        <h1 class="display-5 fw-bold text-center">Login</h1>
        <div class="row justify-content-center">
            <form:form method="post" action="/login" class="col-lg-4">
                <div class="d-grid gap-3">
                    <div>
                        <label for="username" class="form-label">Gebruikersnaam</label>
                        <input name="username" type="text" class="form-control" id="username" autofocus required>
                    </div>
                    <div>
                        <label for="password" class="form-label">Wachtwoord</label>
                        <input name="password" type="password" class="form-control" id="password" required>
                    </div>
                    <div>
                        <input type="checkbox" name="remember-me" class="form-check-input" id="remember-me">
                        <label for="remember-me" class="form-label">Onthoud mij</label>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary btn-lg">Inloggen</button>
                    </div>
                    <div class="text-center">
                        <button class="btn btn-link">Wachtwoord vergeten?</button>
                    </div>
                </div>
            </form:form>
        </div>
    </main>

    <jsp:include page="footer.jsp" />
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
