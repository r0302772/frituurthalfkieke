<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <header class="mb-auto">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="/"><i class="fa-solid fa-drumstick-bite"></i> Frituur t'Half Kieke</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="/menu"><i class="fa-solid fa-utensils"></i> Menu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/contact"><i class="fa-solid fa-address-book"></i> Contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/winkelwagen"><i class="bi bi-cart-fill"></i> Winkelwagen</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <hr>
    </header>

    <main>
        <div class="row px-3 text-center">
            <h2 class="display-5 fw-bold"><i class="fa-solid fa-utensils"></i> Menu</h2>
        </div>
        <div class="row p-3">
            <table class="table table-bordered border-dark">
                <h3 class="p-1">Frieten <img src="/images/fries.png" style="width: 25px;"></h3>
                <thead>
                <%--                <tr>
                                    <th scope="col">Grootte</th>
                                    <th scope="col">Prijs</th>
                                    <th scope="col">Bestellen</th>
                                </tr>--%>
                </thead>
                <tbody class="align-middle">
                <tr>
                    <td>Kinder Friet</td>
                    <td class="text-center">€2.00</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-primary">Voeg toe</button>
                    </td>
                </tr>
                <tr>
                    <td>Medium Friet</td>
                    <td class="text-center">€2.50</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-primary">Voeg toe</button>
                    </td>
                </tr>
                <tr>
                    <td>Grote Friet</td>
                    <td class="text-center">€3.00</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-primary">Voeg toe</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        Friet Stoofvlees
                        <p class="text-danger">Nieuw</p>
                    </td>
                    <td class="text-center">€4.00</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-primary">Voeg toe</button>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <hr>
        <div class="row p-3">
            <table class="table table-bordered border-dark">
                <h3 class="p-1">Burgers <i class="fa-solid fa-burger"></i></h3>
                <thead>
                <%--                <tr>
                                    <th scope="col">Grootte</th>
                                    <th scope="col">Prijs</th>
                                    <th scope="col">Bestellen</th>
                                </tr>--%>
                </thead>
                <tbody class="align-middle">
                <tr>
                    <td>
                        Bicky Classic
                        <p class="fw-light">Runds, Bicky Uitjes, Bicky Saus</p>
                    </td>
                    <td class="text-center">€3.00</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-primary">Voeg toe</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        Bicky Cheese
                        <p class="fw-light">Runds, Bicky Uitjes, Bicky Saus, Kaas</p>
                    </td>
                    <td class="text-center">€3.50</td>
                    <td class="text-center">
                        <p class="text-danger">Niet op voorraad...</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        Bicky Chicken
                        <p class="fw-light">Kip, Bicky Uitjes, Bicky Saus</p>
                    </td>
                    <td class="text-center">€3.50</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-primary">Voeg toe</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        Cheeseburger
                        <p class="fw-light">Runds, Groenten, Kaas, Saus</p>
                    </td>
                    <td class="text-center">€4.00</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-primary">Voeg toe</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        Chickenburger
                        <p class="fw-light">Kip, Groenten, Saus</p>
                    </td>
                    <td class="text-center">€4.00</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-primary">Voeg toe</button>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </main>

    <footer class="mt-auto text-center pt-3">
        <hr>
        <p>Frituur t'Half Kieke - Copyright &copy; 2022</p>
    </footer>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>