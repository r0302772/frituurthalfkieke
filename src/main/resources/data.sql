/*INSERT INTO STUDENT(voornaam, familienaam, klas)
VALUES ('Jan','Verbeek','1NB');
INSERT INTO STUDENT(voornaam, familienaam, klas)
VALUES ('Koen','Verdonk','2NB');
INSERT INTO STUDENT(voornaam, familienaam, klas)
VALUES ('Jorn','de Houwer','3NB');
INSERT INTO STUDENT(voornaam, familienaam, klas)
VALUES ('Anna','Verlinden','1PR');
INSERT INTO STUDENT(voornaam, familienaam, klas)
VALUES ('Kim','Mangelschots','1PR');
INSERT INTO STUDENT(voornaam, familienaam, klas)
VALUES ('Dylan','van Herk','2PR');
INSERT INTO STUDENT(voornaam, familienaam, klas)
VALUES ('Els','Wouters','3PR');*/

insert into Categorie(naam)
Values ('Sauzen');
insert into Categorie(naam)
Values ('Burgers');
insert into Categorie(naam)
Values ('Koude schotels');
insert into Categorie(naam)
Values ('Frieten');
insert into Categorie(naam)
Values('Dranken');

INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking,categorie_id)
VALUES ('Ketchup', 2.50, 1, '',5);
INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking,categorie_id)
VALUES ('Mayo', 2.50, 1, '',5);

INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking,categorie_id)
VALUES ('Kleine friet', 2.50, 1, '',4);
INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking,categorie_id)
VALUES ('Medium friet', 3.00, 1, '',4);
INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking,categorie_id)
VALUES ('Grote friet', 3.50, 0, '',4);
INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking,categorie_id)
VALUES ('Bicky Burger', 3.00, 1, 'Runds, Bicky Uitjes, Bicky Saus',2);
INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking,categorie_id)
VALUES ('Bicky Cheese', 3.50, 0, 'Runds, Bicky Uitjes, Bicky Saus, Kaas',2);
INSERT INTO ARTIKEL(naam, prijs, beschikbaar, opmerking,categorie_id)
VALUES ('Bicky Chicken', 4.00, 1, 'Kip, Bicky Uitjes, Bicky Saus',2);



/*INSERT INTO BESTELLING(voornaamKlant, familienaamKlant, emailKlant, telefoonKlant)
VALUES ('Erik','Vanlooy','ErikVanlooy@gmail.com','0470928299');*/