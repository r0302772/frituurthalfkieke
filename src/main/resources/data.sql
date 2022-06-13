insert into Categorie(naam)
Values ('Sauzen');
insert into Categorie(naam)
Values ('Burgers');
insert into Categorie(naam)
Values ('Koude schotels');
insert into Categorie(naam)
Values ('Frieten');
insert into Categorie(naam)
Values ('Dranken');


INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking, categorie_id)
VALUES ('Ketchup', 2.50, 1, '', 1);
INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking, categorie_id)
VALUES ('Mayo', 2.50, 1, '', 1);

INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking, categorie_id)
VALUES ('Kleine friet', 2.50, 1, '', 4);
INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking, categorie_id)
VALUES ('Medium friet', 3.00, 1, '', 4);
INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking, categorie_id)
VALUES ('Grote friet', 3.50, 0, '', 4);
INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking, categorie_id)
VALUES ('Bicky Burger', 3.00, 1, 'Runds, Bicky Uitjes, Bicky Saus', 2);
INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking, categorie_id)
VALUES ('Bicky Cheese', 3.50, 0, 'Runds, Bicky Uitjes, Bicky Saus, Kaas', 2);
INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking, categorie_id)
VALUES ('Bicky Chicken', 4.00, 1, 'Kip, Bicky Uitjes, Bicky Saus', 2);

--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-05-30', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-05-30', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-05-30', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-05-30', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-05-30', 0, 3);
--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-05-31', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-05-31', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-05-31', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-05-31', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-05-31', 0, 3);
--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-06-01', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-06-01', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-06-01', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-06-01', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-06-01', 0, 3);
--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-06-02', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-06-02', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-06-03', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-06-04', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-06-05', 0, 3);
--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-06-06', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-06-06', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-06-06', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-06-06', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-06-06', 0, 3);
--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-06-07', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-06-07', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-06-07', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-06-07', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-06-07', 0, 3);
--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-06-08', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-06-08', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-06-08', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-06-08', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-06-08', 0, 3);
--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-06-10', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-06-10', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-06-10', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-06-10', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-06-10', 0, 3);
--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-06-13', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-06-13', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-06-13', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-06-13', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-06-14', 0, 3);
--
--
--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-06-14', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-06-14', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-06-14', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-06-14', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-06-14', 0, 3);
--
--
--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-06-15', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-06-15', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-06-15', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-06-15', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-06-15', 0, 3);
--
--
--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-06-16', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-06-16', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-06-16', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-06-16', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-06-16', 0, 3);
--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-06-17', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-06-17', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-06-17', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-06-17', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-06-17', 0, 3);
--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-06-18', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-06-18', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-06-18', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-06-18', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-06-18', 0, 3);
--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-06-19', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-06-19', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-06-19', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-06-19', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-06-19', 0, 3);
--
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-06-20', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-06-20', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-06-20', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-06-20', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-06-20', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('07:00', '08:00', '2022-06-20', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('08:00', '09:00', '2022-06-20', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('09:00', '10:00', '2022-06-20', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('10:00', '11:00', '2022-06-20', 0, 3);
-- INSERT INTO TIJDSLOT(startuur, einduur, datum, geblokeerd, aantal)
-- VALUES ('11:00', '12:00', '2022-06-20', 0, 3);
--


--
-- INSERT INTO BESTELLING(voornaam, achternaam, email, gsm, afgehaald, tijdslot_id)
-- VALUES ('Thomas', 'Vanlooy', 'ThomasVanlooy@gmail.com', '0470928299', 0, 1);
-- INSERT INTO BESTELLING(voornaam, achternaam, email, gsm, afgehaald, tijdslot_id)
-- VALUES ('Luc', 'Bravo', 'LucBravo@gmail.com', '0470928295', 1, 2);
-- INSERT INTO BESTELLING(voornaam, achternaam, email, gsm, afgehaald, tijdslot_id)
-- VALUES ('Bart', 'Theunis', 'BartTheunis@gmail.com', '0470955699', 0, 2);
-- INSERT INTO BESTELLING(voornaam, achternaam, email, gsm, afgehaald, tijdslot_id)
-- VALUES ('Louis', 'Vanlooy', 'LouisVanlooy@gmail.com', '0470933399', 0, 3);
-- INSERT INTO BESTELLING(voornaam, achternaam, email, gsm, afgehaald, tijdslot_id)
-- VALUES ('Thomas', 'Verdonck', 'LouisVanlooy@gmail.com', '0470933399', 0, 21);
--
--
-- INSERT INTO Artikel_Bestelling(aantal, kruiden, opmerking, artikel_id, bestelling_id, parentartikelbestelling_id)
-- VALUES (1, 'Geen kruiden', '', 6, 1, null);
-- INSERT INTO Artikel_Bestelling(aantal, kruiden, opmerking, artikel_id, bestelling_id, parentartikelbestelling_id)
-- VALUES (1, null, '', 1, 1, 1);
-- INSERT INTO Artikel_Bestelling(aantal, kruiden, opmerking, artikel_id, bestelling_id, parentartikelbestelling_id)
-- VALUES (1, null, '', 2, 1, 1);
-- INSERT INTO Artikel_Bestelling(aantal, kruiden, opmerking, artikel_id, bestelling_id, parentartikelbestelling_id)
-- VALUES (3, 'Geen kruiden', '', 3, 2, null);
-- INSERT INTO Artikel_Bestelling(aantal, kruiden, opmerking, artikel_id, bestelling_id, parentartikelbestelling_id)
-- VALUES (1, null, '', 1, 2, 4);
-- INSERT INTO Artikel_Bestelling(aantal, kruiden, opmerking, artikel_id, bestelling_id, parentartikelbestelling_id)
-- VALUES (1, 'Zout', '', 4, 2, null);