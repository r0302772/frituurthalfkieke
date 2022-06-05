<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Bestelling" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.ArtikelBestelling" %>
<%@ page import="java.util.List" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Categorie" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel" %>
<%
    Bestelling bestelling = (Bestelling) request.getAttribute("bestelling");
    List<ArtikelBestelling> artikelBestellingList = (List<ArtikelBestelling>) request.getAttribute("artikelBestellingList");
    List<Categorie> categorien = (List<Categorie>) request.getAttribute("categorien");
    List<Artikel> artikels = (List<Artikel>) request.getAttribute("artikels");
%>

<div class="tab-content" id="nav-tabDetailsContent">
    <div class="tab-pane fade show" id="nav-order1" role="tabpanel"
         aria-labelledby="nav-order1-tab">
        <div class="row">
            <div class="col">
<% for (ArtikelBestelling artikelBestelling : artikelBestellingList) {
    out.print("<p><strong>Naam: </strong>" + bestelling.getAchternaam() + " " + bestelling.getVoornaam() + "</p>");}%>
                <p><strong>GSM: </strong> 04.......</p>
                <hr>
                <div class="row">
                    <div class="row">
                        <div class="col">
                            <p>1 Kleine Friet<br>
                                Joppiesaus<br>
                                Zonder kruiden
                            </p>
                        </div>
                        <div class="col">
                            €3.00
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p>1 Curryworst speciaal<br>
                                Tomantenketchup<br>
                                Zonder kruiden
                            </p>
                        </div>
                        <div class="col">
                            €2.00
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p><strong>Totaal</strong></p>
                        </div>
                        <div class="col">
                            €5.00
                        </div>
                    </div>
                </div>
                <hr>
                <div class="d-grid gap-2 col-6 mx-auto">
                    <button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                            data-bs-target="#bestellingAfgehaald">Bestelling afgehaald
                    </button>
                    <div class="modal fade" id="bestellingAfgehaald" tabindex="-1"
                         aria-labelledby="bestellingAfgehaaldLabel"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form>
                                    <div class="modal-header">
                                        <h5 class="modal-title text-danger"
                                            id="bestellingAfgehaaldLabel"><i
                                                class="bi bi-exclamation-triangle-fill"></i>
                                            Waarschuwing
                                        </h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <p><strong>Is deze bestelling afgehaald?</strong></p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">
                                            Annuleer
                                        </button>
                                        <button type="button" class="btn btn-primary">
                                            Bevestig
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

