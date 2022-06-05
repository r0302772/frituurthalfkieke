package be.thomasmore.graduaten.frituurthalfkieke.entities;

import javax.persistence.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
public class ArtikelBestelling {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Integer aantal;
    private String kruiden;
    private String opmerking;

    //<editor-fold desc="Relaties">

    //Relatie Artikel
    @ManyToOne()
    @JoinColumn(name = "artikel_id")
    private Artikel artikel;

    //Relatie Bestelling
    @ManyToOne()
    @JoinColumn(name = "bestelling_id")
    private Bestelling bestelling;

    //Recursieve relatie
    @OneToMany(mappedBy = "parentArtikelBestelling")
    private Set<ArtikelBestelling> artikelBestellingen = new HashSet<>();

    @ManyToOne
    private ArtikelBestelling parentArtikelBestelling;

    //</editor-fold>

    //<editor-fold desc="Constructors">

    public ArtikelBestelling(Integer aantal, String kruiden, String opmerking, Artikel artikel, Bestelling bestelling, ArtikelBestelling parentArtikelBestelling) {
        this.aantal = aantal;
        this.kruiden = kruiden;
        this.opmerking = opmerking;
        this.artikel = artikel;
        this.bestelling = bestelling;
        this.parentArtikelBestelling = parentArtikelBestelling;
    }

    public ArtikelBestelling(Artikel artikel, Bestelling bestelling, Integer aantal, String kruiden, String opmerking) {
        this.artikel = artikel;
        this.bestelling = bestelling;
        this.aantal = aantal;
        this.kruiden = kruiden;
        this.opmerking = opmerking;
    }

    public ArtikelBestelling(Artikel artikel, Bestelling bestelling, ArtikelBestelling parentArtikelBestelling) {
        this.artikel = artikel;
        this.bestelling = bestelling;
        this.parentArtikelBestelling = parentArtikelBestelling;
    }

    public ArtikelBestelling() {

    }


    public ArtikelBestelling(Integer aantal, String kruiden, Artikel artikel, Bestelling bestelling) {
        this.aantal = aantal;
        this.kruiden = kruiden;
        this.artikel = artikel;
        this.bestelling = bestelling;
    }

    //</editor-fold>

    //<editor-fold desc="Getters en Setters">
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getKruiden() {
        return kruiden;
    }

    public void setKruiden(String kruiden) {
        this.kruiden = kruiden;
    }

    public String getOpmerking() {
        return opmerking;
    }

    public void setOpmerking(String opmerking) {
        this.opmerking = opmerking;
    }

    public Artikel getArtikel() {
        return artikel;
    }

    public void setArtikel(Artikel artikel) {
        this.artikel = artikel;
    }

    public Bestelling getBestelling() {
        return bestelling;
    }

    public void setBestelling(Bestelling bestelling) {
        this.bestelling = bestelling;
    }

    public Set<ArtikelBestelling> getArtikelBestellingen() {
        return artikelBestellingen;
    }

    public void setArtikelBestellingen(Set<ArtikelBestelling> artikelBestellingen) {
        this.artikelBestellingen = artikelBestellingen;
    }

    public ArtikelBestelling getparentArtikelBestelling() {
        return parentArtikelBestelling;
    }

    public void setparentArtikelBestelling(ArtikelBestelling artikelBestelling) {
        this.parentArtikelBestelling = artikelBestelling;
    }

    public Integer getAantal() {
        return aantal;
    }

    public void setAantal(Integer aantal) {
        this.aantal = aantal;
    }

    //</editor-fold>
}