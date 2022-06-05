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
    private String voornaam;
    private String achternaam;
    private String email;
    private String gsm;
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

    public Bestelling(String voornaam, String achternaam, String email, String gsm) {
        this.voornaam = voornaam;
        this.achternaam = achternaam;
        this.email = email;
        this.gsm = gsm;
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

    public String getVoornaam() {
        return voornaam;
    }

    public void setVoornaam(String voornaam) {
        this.voornaam = voornaam;
    }

    public String getAchternaam() {
        return achternaam;
    }

    public void setAchternaam(String achternaam) {
        this.achternaam = achternaam;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGsm() {
        return gsm;
    }

    public void setGsm(String gsm) {
        this.gsm = gsm;
    }
    //</editor-fold>
}
