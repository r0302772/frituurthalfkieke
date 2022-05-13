package be.thomasmore.graduaten.frituurthalfkieke.entities;

import javax.persistence.*;
import java.math.BigDecimal;


@Entity
public class Artikel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String naam;
    private BigDecimal prijs;
    private Boolean beschikbaar;
/*    private String opmerking;*/
//relatie
/*    @ManyToOne
    @JoinColumn(name = "artikelbestelling_id")
    private  ArtikelBestelling artikelbestelling ;*/


    public Artikel() {
    }

    public Artikel(Long id, String naam, BigDecimal prijs, Boolean beschikbaar/*, String opmerking*/) {
        this.id = id;
        this.naam = naam;
        this.prijs = prijs;
        this.beschikbaar = beschikbaar;
/*        this.opmerking = opmerking;*/
    }

    public Artikel(String naam, BigDecimal prijs, Boolean beschikbaar/*, String opmerking*/) {
        this.naam = naam;
        this.prijs = prijs;
        this.beschikbaar = beschikbaar;
/*        this.opmerking = opmerking;*/
    }

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

    public BigDecimal getPrijs() {
        return prijs;
    }

    public void setPrijs(BigDecimal prijs) {
        this.prijs = prijs;
    }

    public Boolean getBeschikbaar() {
        return beschikbaar;
    }

    public void setBeschikbaar(Boolean beschikbaar) {
        this.beschikbaar = beschikbaar;
    }

/*    public String getOpmerking() {
        return opmerking;
    }

    public void setOpmerking(String opmerking) {
        this.opmerking = opmerking;
    }*/
}
