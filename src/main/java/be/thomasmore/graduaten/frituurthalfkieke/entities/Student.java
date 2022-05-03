package be.thomasmore.graduaten.frituurthalfkieke.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String voornaam;
    private String familienaam;
    private String klas;

    public Student(Long id, String voornaam, String familienaam, String klas) {
        this.id = id;
        this.voornaam = voornaam;
        this.familienaam = familienaam;
        this.klas = klas;
    }

    public Student(String voornaam, String familienaam, String klas) {
        this.voornaam = voornaam;
        this.familienaam = familienaam;
        this.klas = klas;
    }

    public Student() {

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

    public String getFamilienaam() {
        return familienaam;
    }

    public void setFamilienaam(String familienaam) {
        this.familienaam = familienaam;
    }

    public String getKlas() {
        return klas;
    }

    public void setKlas(String klas) {
        this.klas = klas;
    }
}
