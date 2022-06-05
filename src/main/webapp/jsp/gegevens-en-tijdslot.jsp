<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String error = (String) request.getAttribute("error");
%>
<html lang="nl" class="h-100">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Winkelwagen</title>

    <link rel="icon" type="image/x-icon" href="/images/drumstick-bite-solid.svg">
    <%--    <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap-responsive.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/js/bootstrap.js"></script>--%>


</head>
<body class="d-flex h-100">
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <jsp:include page="header.jsp"/>

    <main>
        <div class="row p-3 text-center">
            <h2 class="display-5 fw-bold"><i class="bi bi-cart-fill"></i> Winkelwagen</h2>
        </div>
        <%--        <form:form method="post" class="row">--%>
        <div class="col-12 border px-3">
            <div class="row p-3 bg-secondary text-white">
                <h4>Stap 2/2</h4>
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
                                        <label for="voornaamKlant" class="form-label">Voornaam: </label>
                                    </div>
                                    <div class="col">
                                        <input type="text" class="form-control" name="voornaamKlant" id="voornaamKlant" placeholder=""
                                               value=""
                                               required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row pt-3">
                                    <div class="col-auto pe-1">
                                        <label for="achternaamKlant" class="form-label">Achternaam: </label>
                                    </div>
                                    <div class="col">
                                        <input type="text" class="form-control" name="achternaamKlant" id="achternaamKlant" placeholder=""
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
                                        <label for="gsmKlant" class="form-label">GSM: </label>
                                    </div>
                                    <div class="col">
                                        <input type="text" class="form-control" name="gsmKlant" id="gsmKlant" placeholder="" value=""
                                               required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row pt-3">
                                    <div class="col-auto pe-1">
                                        <label for="emailKlant" class="form-label">Email: </label>
                                    </div>
                                    <div class="col">
                                        <input type="email" class="form-control" name="emailKlant" id="emailKlant" placeholder=""
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
                <%--                <div class="row">
                                    <div class="col-auto">
                                        <i class="bi bi-calendar-event-fill"></i>
                                    </div>
                                    <div class="col">
                                        <div class="row">
                                            <div class="col pb-3">
                                                AFHALEN
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <input type="date" id="start" name="trip-start" class="form-control">
                                            </div>
                                            <div class="col">
                                                <select class="form-select" aria-label="select time" required="">
                                                    <option selected disabled value="">Kies een uur.</option>
                                                    <option value="1">9u-9u15</option>
                                                    <option value="2">9u15-9u30</option>
                                                    <option value="3">9u30-9u45</option>
                                                    <option value="3">9u45-10u</option>
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
                                </div>--%>
                <div class="row d-grid p-3">
                    <%--<button type="submit" class="btn btn-primary btn-lg">BESTELLEN</button>--%>
                    <a href="/winkelwagen/bevestiging-bestelling" class="btn btn-primary btn-lg">BESTELLEN</a>
                </div>
                <%
                    if (error != null) {
                        out.print(
                                "<div class='row'><h5 class='text-danger'><i class=\"bi bi-info-circle-fill\"></i> " + error + "</h5></div>"
                        );
                    }
                %>
            </div>
        </div>

        <%--        </form:form>--%>
    </main>

    <%-- <div class="container-fluid px-0 px-sm-4 mx-auto mt-4">
        <div class="row justify-content-center mx-0">
            <div class="col-lg-10">
                <div class="card border-0">
                    <form autocomplete="off">
                        <div class="card-header bg-dark">
                            <div class="mx-0 mb-0 row justify-content-sm-center justify-content-start px-1">
                                <input type="text" id="dp1" class="datepicker" placeholder="Pick Date" name="date" readonly><span> <i
                                    class="bi bi-calendar-date-fill"></i></span>
                            </div>
                        </div>
                        <div class="card-body p-3 p-sm-5">
                            <div class="row text-center mx-0">
                                <div class="col-md-2 col-4 my-1 px-2"><a class="btn btn-outline-dark bg-danger text-warning"
                                                                         href="">
                                    <div class="cell py-1">9:00AM</div>
                                </a></div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">9:30AM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">9:45AM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">10:00AM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">10:30AM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">10:45AM</div>
                                </div>
                            </div>
                            <div class="row text-center mx-0">
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">11:00AM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">11:30AM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">11:45AM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">12:00PM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">12:30PM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">12:45PM</div>
                                </div>
                            </div>
                            <div class="row text-center mx-0">
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">1:00PM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">1:30PM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">1:45PM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">2:00PM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">2:30PM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">2:45PM</div>
                                </div>
                            </div>
                            <div class="row text-center mx-0">
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">3:00PM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">3:30PM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">4:15PM</div>
                                </div>
                                <div class="col-md-2 col-4 my-1 px-2">
                                    <div class="cell py-1">5:00PM</div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <br>
    <a href="${pageContext.request.contextPath }/menu">Ga verder met winkelen</a>


    <script>$(document).ready(function () {

        $('.datepicker').datepicker({
            format: 'dd-mm-yyyy',
            autoclose: true,
            startDate: '0d'
        });

        $('.cell').click(function () {
            $('.cell').removeClass('select');
            $(this).addClass('select');
        });

    });</script>
    --%>
    <jsp:include page="footer.jsp"/>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>
