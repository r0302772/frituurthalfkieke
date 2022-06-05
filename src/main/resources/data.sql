
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


/*INSERT INTO BESTELLING(voornaamKlant, familienaamKlant, emailKlant, telefoonKlant)
VALUES ('Erik','Vanlooy','ErikVanlooy@gmail.com','0470928299');*/
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('07:00','08:00', '2022-05-30',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('08:00','09:00', '2022-05-30',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('09:00','10:00', '2022-05-30',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('10:00','11:00', '2022-05-30',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('11:00','12:00', '2022-05-30',0,3);

INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('07:00','08:00', '2022-05-31',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('08:00','09:00', '2022-05-31',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('09:00','10:00', '2022-05-31',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('10:00','11:00', '2022-05-31',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('11:00','12:00', '2022-05-31' ,0,3);


INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('07:00','08:00', '2022-06-01',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('08:00','09:00', '2022-06-01',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('09:00','10:00', '2022-06-01',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('10:00','11:00', '2022-06-01',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('11:00','12:00', '2022-06-01',0,3);

INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('07:00','08:00', '2022-06-02',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('08:00','09:00', '2022-06-02',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('09:00','10:00', '2022-06-03',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('10:00','11:00', '2022-06-04',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('11:00','12:00', '2022-06-05',0,3);


INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('07:00','08:00', '2022-06-06',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('08:00','09:00', '2022-06-06',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('09:00','10:00', '2022-06-06',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('10:00','11:00', '2022-06-06',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('11:00','12:00', '2022-06-06',0,3);

INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('07:00','08:00', '2022-06-07',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('08:00','09:00', '2022-06-07',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('09:00','10:00', '2022-06-07',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('10:00','11:00', '2022-06-07',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('11:00','12:00', '2022-06-07',0,3);


INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('07:00','08:00', '2022-06-08',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('08:00','09:00', '2022-06-08',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('09:00','10:00', '2022-06-08',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('10:00','11:00', '2022-06-08',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('11:00','12:00', '2022-06-08',0,3);

INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('07:00','08:00', '2022-06-10',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('08:00','09:00', '2022-06-10',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('09:00','10:00', '2022-06-10',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('10:00','11:00', '2022-06-10',0,3);
INSERT INTO TIJDSLOT(startuur, einduur,datum, geblokeerd, aantal)
VALUES('11:00','12:00', '2022-06-10',0,3);



