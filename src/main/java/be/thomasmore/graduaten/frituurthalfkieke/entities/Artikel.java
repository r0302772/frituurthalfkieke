package be.thomasmore.graduaten.frituurthalfkieke.entities;

import javax.persistence.*;


@Entity
public class Artikel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private  String naam;
    private  double prijs;
    private  boolean beschikbaar;
//relatie
    @ManyToOne
    @JoinColumn(name = "artikelbestelling_id")
    private  ArtikelBestelling artikelbestelling ;



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

    public double getPrijs() {
        return prijs;
    }

    public void setPrijs(double prijs) {
        this.prijs = prijs;
    }

    public boolean getBeschikbaar() {
        return beschikbaar;
    }

    public void setBeschikbaar(boolean beschikbaar) {
        this.beschikbaar = beschikbaar;
    }
public  Artikel(){}

    public Artikel(Long id, String naam, double prijs, boolean beschikbaar) {
        this.id = id;
        this.naam = naam;
        this.prijs = prijs;
        this.beschikbaar = beschikbaar;
    }


}
