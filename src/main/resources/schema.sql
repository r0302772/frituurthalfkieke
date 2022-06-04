/*DROP TABLE IF EXISTS BESTELLING

CREATE TABLE BESTELLING(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    voornaamKlant VARCHAR(50) NOT NULL,
    familienaamKlant VARCHAR(50) NOT NULL,
    emailKlant VARCHAR(50) NOT NULL,
    telefoonKlant VARCHAR(50) NOT NULL,

    PRIMARY KEY (id) );*/

DROP TABLE IF EXISTS Categorie;

CREATE TABLE Categorie
(
    id          INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    naam        VARCHAR(50) NOT NULL,

    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ARTIKEL;

CREATE TABLE ARTIKEL
(
    id          INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    naam        VARCHAR(50) NOT NULL,
    prijs       DECIMAL     NOT NULL,
    beschikbaar BIT         NOT NULL,
    opmerking   VARCHAR(100),
    categorie_id int ,
    PRIMARY KEY (id),
constraint fkArtikel_Categorie FOREIGN  key(categorie_id)  references Categorie(Id)
);


