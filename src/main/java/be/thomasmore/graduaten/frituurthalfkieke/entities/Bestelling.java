package be.thomasmore.graduaten.frituurthalfkieke.entities;

import be.thomasmore.graduaten.frituurthalfkieke.controllers.BestellingController;

import javax.persistence.*;
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
    Set<ArtikelBestelling> artikelBestellingen;

    @ManyToOne()
    @JoinColumn(name = "tijdslot_id", nullable = false)

    private Tijdslot tijdslot;

    //</editor-fold>

    //<editor-fold desc="Constructors">
    public Bestelling() {
    }

    ;

    public Bestelling(Long id, String voornaamKlant, String achternaamKlant, String emailKlant, String gsmKlant) {
        this.id = id;
        this.voornaamKlant = voornaamKlant;
        this.achternaamKlant = achternaamKlant;
        this.emailKlant = emailKlant;
        this.gsmKlant = gsmKlant;
    }

    public Bestelling(String voornaamKlant, String achternaamKlant, String emailKlant, String gsmKlant) {
        this.voornaamKlant = voornaamKlant;
        this.achternaamKlant = achternaamKlant;
        this.emailKlant = emailKlant;
        this.gsmKlant = gsmKlant;
    }

    //</editor-fold>

    //<editor-fold desc="Getters en Setters">
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

    public String getFamilienaamKlant() {
        return achternaamKlant;
    }

    public void setFamilienaamKlant(String familienaamKlant) {
        this.achternaamKlant = familienaamKlant;
    }

    public String getEmailKlant() {
        return emailKlant;
    }

    public void setEmailKlant(String emailKlant) {
        this.emailKlant = emailKlant;
    }

    public String getTelefoonKlant() {
        return gsmKlant;
    }

    public void setTelefoonKlant(String telefoonKlant) {
        this.gsmKlant = telefoonKlant;
    }

    //</editor-fold>
}
