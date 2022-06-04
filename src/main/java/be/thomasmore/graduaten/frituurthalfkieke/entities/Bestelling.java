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
    private String familienaamKlant;
    private String emailKlant;
    private String telefoonKlant;
//private Long tijdslotId;

    @ManyToMany(mappedBy = "besteldeArtikels")
    Set<Artikel> bestellingen;

    @ManyToOne()
    @JoinColumn(name = "tijdslot_id", nullable = false)

    private Tijdslot tijdslot;

    public Bestelling() {
    }

    ;

    public Bestelling(Long id, String voornaamKlant, String familienaamKlant, String emailKlant, String telefoonKlant) {
        this.id = id;
        this.voornaamKlant = voornaamKlant;
        this.familienaamKlant = familienaamKlant;
        this.emailKlant = emailKlant;
        this.telefoonKlant = telefoonKlant;

    }

    public Bestelling(String voornaamKlant, String familienaamKlant, String emailKlant, String telefoonKlant) {
        this.voornaamKlant = voornaamKlant;
        this.familienaamKlant = familienaamKlant;
        this.emailKlant = emailKlant;
        this.telefoonKlant = telefoonKlant;
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

    public String getFamilienaamKlant() {
        return familienaamKlant;
    }

    public void setFamilienaamKlant(String familienaamKlant) {
        this.familienaamKlant = familienaamKlant;
    }

    public String getEmailKlant() {
        return emailKlant;
    }

    public void setEmailKlant(String emailKlant) {
        this.emailKlant = emailKlant;
    }

    public String getTelefoonKlant() {
        return telefoonKlant;
    }

    public void setTelefoonKlant(String telefoonKlant) {
        this.telefoonKlant = telefoonKlant;
    }
}
