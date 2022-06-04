<header class="mb-auto">
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="/"><i class="fa-solid fa-drumstick-bite"></i> Frituur t'Half Kieke</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

                <form:form method="post" action="/logout" class="navbar-nav navbar-collapse">
                    <li class="nav-item">
                        <a class="btn text-muted" href="/login">Inloggen</a>
                    </li>
                    <li class="nav-item">
                        <input class="btn text-muted" type="submit" value="Uitloggen"/>
                    </li>
                </form:form>

            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/artikelsbeheren"><i class="fa-solid fa-warehouse"></i>
                            Artikels</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/bestellingenbeheren"><i class="fa-solid fa-cash-register"></i>
                            Bestellingen</a>
                    </li>
<%--                    <li class="nav-item">
                        <a class="nav-link" href="/tijdslotenbeheren"><i class="bi bi-lock-fill"></i> Tijdsloten</a>
                    </li>--%>
                </ul>
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