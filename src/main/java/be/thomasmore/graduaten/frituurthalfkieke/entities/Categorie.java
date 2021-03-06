package be.thomasmore.graduaten.frituurthalfkieke.entities;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Categorie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String naam;

    //<editor-fold desc="Relaties">
    @OneToMany(mappedBy = "categorie")
    private Set<Artikel> artikels = new HashSet<>();

    //</editor-fold>

    //<editor-fold desc="Constructors">

    public Categorie(Long id, String naam) {
        this.id = id;
        this.naam = naam;
    }

    public Categorie(Long id) {
        this.id = id;
    }

    public Categorie(String naam) {
        this.naam = naam;
    }

    public Categorie() {

    }

    //</editor-fold>

    //<editor-fold desc="Getters en Setters">
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNaam() {
        return naam;
    }

    public void setNaam(String naam) {
        this.naam = naam;
    }

    public Set<Artikel> getArtikels() {
        return artikels;
    }

    public void setArtikels(Set<Artikel> artikels) {
        this.artikels = artikels;
    }

    //</editor-fold>
}
