DROP TABLE IF EXISTS Bestelling;

CREATE TABLE Bestelling
(
    id              INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    voornaamKlant   VARCHAR(50) NOT NULL,
    achternaamKlant VARCHAR(50) NOT NULL,
    emailKlant      VARCHAR(50) NOT NULL,
    gsmKlant        VARCHAR(50) NOT NULL,

    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS Categorie;

CREATE TABLE Categorie
(
    id   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(50) NOT NULL,

    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ARTIKEL;

CREATE TABLE ARTIKEL
(
    id           INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    naam         VARCHAR(50) NOT NULL,
    prijs        DECIMAL     NOT NULL,
    beschikbaar  BIT         NOT NULL,
    opmerking    VARCHAR(100),
    categorie_id INT,
    PRIMARY KEY (id),
    CONSTRAINT FK_Artikel_Categorie FOREIGN KEY (categorie_id) REFERENCES Categorie (id)
);

DROP TABLE IF EXISTS ArtikelBestelling;

CREATE TABLE ArtikelBestelling
(
    id                         INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    aantal                     INT         NOT NULL,
    kruiden                    VARCHAR(50) NOT NULL,
    opmerking                  VARCHAR(100),

    artikel_id                 INT,
    bestelling_id              INT,
    parentArtikelBestelling_id INT,
    PRIMARY KEY (id),
    CONSTRAINT FK_ParentArtikelBestelling FOREIGN KEY (parentArtikelBestelling_id) REFERENCES ArtikelBestelling (id),
    CONSTRAINT FK_Artikel_Bestelling FOREIGN KEY (artikel_id) REFERENCES ARTIKEL (id),
    CONSTRAINT FK_Bestelling_Artikel FOREIGN KEY (bestelling_id) REFERENCES Bestelling (id)
);