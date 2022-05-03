DROP TABLE IF EXISTS STUDENT;

CREATE TABLE STUDENT(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    voornaam VARCHAR (50) NOT NULL,
    familienaam VARCHAR (50) NOT NULL,
    klas VARCHAR (10) NOT NULL, PRIMARY KEY (id)
)

/*DROP TABLE IF EXISTS BESTELLING

CREATE TABLE BESTELLING(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    voornaamKlant VARCHAR(50) NOT NULL,
    familienaamKlant VARCHAR(50) NOT NULL,
    emailKlant VARCHAR(50) NOT NULL,
    telefoonKlant VARCHAR(50) NOT NULL,

    PRIMARY KEY (id) );


DROP TABLE IF EXISTS ARTIKEL

CREATE TABLE ARTIKEL(
                           id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                           naam VARCHAR(50) NOT NULL,
                           prijs FLOAT NOT NULL,
                           beschikbaar BIT NOT NULL,
                           PRIMARY KEY (id);)*/