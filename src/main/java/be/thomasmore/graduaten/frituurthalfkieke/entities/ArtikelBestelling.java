package be.thomasmore.graduaten.frituurthalfkieke.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ArtikelBestelling {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;
    private  Long bestellingId;
    private  Long artikelId;
    private  double aantal;

    public ArtikelBestelling() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getBestellingId() {
        return bestellingId;
    }

    public void setBestellingId(Long bestellingId) {
        this.bestellingId = bestellingId;
    }

    public Long getArtikelId() {
        return artikelId;
    }

    public void setArtikelId(Long artikelId) {
        this.artikelId = artikelId;
    }

    public double getAantal() {
        return aantal;
    }

    public void setAantal(double aantal) {
        this.aantal = aantal;
    }

    public ArtikelBestelling(Long id, Long bestellingId, Long artikelId, double aantal) {
        this.id = id;
        this.bestellingId = bestellingId;
        this.artikelId = artikelId;
        this.aantal = aantal;
    }
}
