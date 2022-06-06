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
    private Boolean afgehaald;

    //<editor-fold desc="Relaties">

    //Relatie ArtikelBestelling
    @OneToMany(mappedBy = "bestelling")
    private Set<ArtikelBestelling> artikelBestellingen = new HashSet<>();


    @ManyToOne()
    @JoinColumn(name = "tijdslot_Id", nullable = true)
    private Tijdslot tijdslot;

    //</editor-fold>

    //<editor-fold desc="Constructors">

    public Bestelling(String voornaam, String achternaam, String email, String gsm, Boolean afgehaald, Tijdslot tijdslot) {
        this.voornaam = voornaam;
        this.achternaam = achternaam;
        this.email = email;
        this.gsm = gsm;
        this.afgehaald = afgehaald;
        this.tijdslot = tijdslot;
    }

    public Bestelling() {

//    timeslots


    }


    //</editor-fold>

    //<editor-fold desc="Getters en Setters">

    public Set<ArtikelBestelling> getArtikelBestellingen() {
        return artikelBestellingen;
    }

    public void setArtikelBestellingen(Set<ArtikelBestelling> artikelBestellingen) {
        this.artikelBestellingen = artikelBestellingen;
    }

    public Tijdslot getTijdslot() {
        return tijdslot;
    }

    public void setTijdslot(Tijdslot tijdslot) {
        this.tijdslot = tijdslot;
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

    public Boolean getAfgehaald() {
        return afgehaald;
    }

    public void setAfgehaald(Boolean afgehaald) {
        this.afgehaald = afgehaald;
    }
    //</editor-fold>
}
