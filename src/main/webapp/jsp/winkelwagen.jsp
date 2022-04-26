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
        <div class="row p-3 text-center">
            <h2 class="display-5 fw-bold"><i class="bi bi-cart-fill"></i> Winkelwagen</h2>
        </div>
        <div class="row">
            <div class="col-12 border">
                <div class="row p-3 bg-secondary text-white">
                    <h4>Winkelwagen (Stap 1/3)</h4>
                </div>
                <div class="row pt-3">
                    <h5 class="text-danger"><i class="bi bi-info-circle-fill"></i> Enkel afhalen. Betalen bij
                        afhaling.
                    </h5>
                </div>
                <hr>
                <a href="/menu" class="btn btn-primary">TERUG NAAR MENU</a>
                <div class="row p-1">
                    <table class="table table-borderless">
                        <thead>
                        <tr>
                            <th scope="col">Aantal</th>
                            <th scope="col">Item</th>
                            <th scope="col">Saus</th>
                            <th scope="col">Kruiden</th>
                            <th scope="col">Opmerking</th>
                            <th scope="col"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                1
                                <%--                                <select class="form-select" aria-label="Default select example">
                                                                    <option value="0">0</option>
                                                                    <option selected value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="3">4</option>
                                                                    <option value="3">5</option>
                                                                    <option value="3">6</option>
                                                                    <option value="3">7</option>
                                                                    <option value="3">8</option>
                                                                    <option value="3">9</option>
                                                                    <option value="3">10</option>
                                                                </select>--%>
                            </td>
                            <td>Grote Friet</td>
                            <td>
                                Joppiesaus
                                <%--                                <select class="form-select" aria-label="Default select example">
                                                                    <option value="0">Zonder</option>
                                                                    <option value="Andalouse">Andalouse</option>
                                                                    <option value="Gewone Mayo">Gewone Mayo</option>
                                                                    <option value="Zure Mayo">Zure Mayo</option>
                                                                    <option value="Hollandse Mayo">Hollandse Mayo</option>
                                                                    <option value="Tomatenketchup">Tomatenketchup</option>
                                                                    <option value="Curryketchup">Curryketchup</option>
                                                                    <option selected value="Joppiesaus">Joppiesaus</option>
                                                                    <option value="Tartaar">Tartaar</option>
                                                                </select>--%>
                            </td>
                            <td>
                                Zonder
                                <%--                                <select class="form-select" aria-label="Default select example">
                                                                    <option selected value="Zonder">Zonder</option>
                                                                    <option value="Zout">Zout</option>
                                                                    <option value="Sate-kruiden">Saté-kruiden</option>
                                                                    <option value="Zout + Sate-kruiden">Zout + Saté-kruiden</option>
                                                                </select>--%>
                            </td>
                            <td>
                                Snelle Eddy
                            </td>
                            <td>
                                <button class="btn"><i class="bi bi-x-circle-fill"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                €3.00
                                <hr>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <select class="form-select" aria-label="Default select example">
                                    <option value="0">0</option>
                                    <option selected value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="3">4</option>
                                    <option value="3">5</option>
                                    <option value="3">6</option>
                                    <option value="3">7</option>
                                    <option value="3">8</option>
                                    <option value="3">9</option>
                                    <option value="3">10</option>
                                </select>
                            </td>
                            <td>Curryworst Speciaal</td>
                            <td>
                                <select class="form-select" aria-label="Default select example">
                                    <option value="0">Zonder</option>
                                    <option value="Andalouse">Andalouse</option>
                                    <option value="Gewone Mayo">Gewone Mayo</option>
                                    <option value="Zure Mayo">Zure Mayo</option>
                                    <option value="Hollandse Mayo">Hollandse Mayo</option>
                                    <option selected value="Tomatenketchup">Tomatenketchup</option>
                                    <option value="Curryketchup">Curryketchup</option>
                                    <option value="Joppiesaus">Joppiesaus</option>
                                    <option value="Tartaar">Tartaar</option>
                                </select>
                            </td>
                            <td>
                                <select class="form-select" aria-label="Default select example">
                                    <option selected value="Zonder">Zonder</option>
                                    <option value="Zout">Zout</option>
                                    <option value="Sate-kruiden">Saté-kruiden</option>
                                    <option value="Zout + Sate-kruiden">Zout + Saté-kruiden</option>
                                </select>
                            </td>
                            <td>
                                Kelly
                            </td>
                            <td>
                                <button class="btn"><i class="bi bi-x-circle-fill"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                €2.00
                                <hr>
                            </td>
                        </tr>
                        </tbody>
                        <tfoot class="bg-secondary bg-opacity-10">
                        <td colspan="6">
                            TOTAAL: €5.OO
                        </td>
                        </tfoot>
                    </table>
                </div>
            </div>
            <div class="col-12 border">
                <div class="row p-3 bg-secondary text-white">
                    <h4>Uw gegevens (Stap 2/3)</h4>
                </div>
                <div class="row">

                </div>
            </div>
            <div class="col-12 border">
                <div class="row p-3 bg-secondary text-white">
                    <h4>Stap 3/3</h4>
                </div>
                <div class="row">

                </div>
            </div>
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
