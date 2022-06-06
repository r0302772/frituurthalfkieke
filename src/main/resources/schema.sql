DROP TABLE IF EXISTS Bestelling;

CREATE TABLE Bestelling
(
    id         INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    voornaam   VARCHAR(50) NOT NULL,
    achternaam VARCHAR(50) NOT NULL,
    email      VARCHAR(50) NOT NULL,
    gsm        VARCHAR(50) NOT NULL,

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

DROP TABLE IF EXISTS Artikel_Bestelling;

CREATE TABLE Artikel_Bestelling
(
    id                         INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    aantal                     INT,
    kruiden                    VARCHAR(50),
    opmerking                  VARCHAR(100),

    artikel_id                 INT,
    bestelling_id              INT,
    parentartikelbestelling_id INT,
    PRIMARY KEY (id),
    CONSTRAINT FK_ParentArtikelBestelling FOREIGN KEY (parentartikelbestelling_id) REFERENCES Artikel_Bestelling (id),
    CONSTRAINT FK_Artikel_Bestelling FOREIGN KEY (artikel_id) REFERENCES ARTIKEL (id),
    CONSTRAINT FK_Bestelling_Artikel FOREIGN KEY (bestelling_id) REFERENCES Bestelling (id)
);

DROP TABLE IF EXISTS TIJDSLOT;

CREATE TABLE TIJDSLOT
(
    id         INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    startuur   TIME,
    einduur    TIME,
    datum      DATE,
    aantal     INT,
    geblokeerd BIT,
    PRIMARY KEY (id)
);