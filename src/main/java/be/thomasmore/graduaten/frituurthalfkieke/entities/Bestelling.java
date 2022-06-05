package be.thomasmore.graduaten.frituurthalfkieke.entities;

import be.thomasmore.graduaten.frituurthalfkieke.controllers.BestellingController;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Bestelling {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String voornaamKlant;
    private String achternaamKlant;
    private String emailKlant;
    private String gsmKlant;
//private Long tijdslotId;

    //<editor-fold desc="Relaties">

    //Relatie ArtikelBestelling
    @OneToMany(mappedBy = "bestelling")
    private Set<ArtikelBestelling> artikelBestellingen = new HashSet<>();

/*    @ManyToOne()
    @JoinColumn(name = "tijdslot_id", nullable = false)

    private Tijdslot tijdslot;*/

    //</editor-fold>

    //<editor-fold desc="Constructors">

    public Bestelling(String voornaamKlant, String achternaamKlant, String emailKlant, String gsmKlant) {
        this.voornaamKlant = voornaamKlant;
        this.achternaamKlant = achternaamKlant;
        this.emailKlant = emailKlant;
        this.gsmKlant = gsmKlant;
    }

    //</editor-fold>

    //<editor-fold desc="Getters en Setters">

    public Set<ArtikelBestelling> getArtikelBestellingen() {
        return artikelBestellingen;
    }

    public void setArtikelBestellingen(Set<ArtikelBestelling> artikelBestellingen) {
        this.artikelBestellingen = artikelBestellingen;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getVoornaamKlant() {
        return voornaamKlant;
    }

    public void setVoornaamKlant(String voornaamKlant) {
        this.voornaamKlant = voornaamKlant;
    }

    public String getAchternaamKlant() {
        return achternaamKlant;
    }

    public void setAchternaamKlant(String achternaamKlant) {
        this.achternaamKlant = achternaamKlant;
    }

    public String getEmailKlant() {
        return emailKlant;
    }

    public void setEmailKlant(String emailKlant) {
        this.emailKlant = emailKlant;
    }

    public String getGsmKlant() {
        return gsmKlant;
    }

    public void setGsmKlant(String gsmKlant) {
        this.gsmKlant = gsmKlant;
    }

    //</editor-fold>
}
