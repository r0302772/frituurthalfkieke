package be.thomasmore.graduaten.frituurthalfkieke.entities;

import javax.persistence.*;
import java.sql.Time;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Tijdslot {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Time startuur;
    private Time einduur;
    private Date datum;

    public int getAantal() {
        return aantal;
    }

    public void setAantal(int aantal) {
        this.aantal = aantal;
    }

    private int aantal;
    private Boolean geblokeerd;


//    @OneToMany(mappedBy = "tijdslot")
//    private Set<Bestelling> bestellingen = new HashSet<>();

    public Tijdslot() {

    }

    public Tijdslot(Time startuur, Time einduur, Date datum, Boolean geblokeerd) {
        this.startuur = startuur;
        this.einduur = einduur;
        this.datum = datum;
        this.geblokeerd = geblokeerd;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Time getStartuur() {
        return startuur;
    }

    public void setStartuur(Time startuur) {
        this.startuur = startuur;
    }

    public Time getEinduur() {
        return einduur;
    }

    public void setEinduur(Time einduur) {
        this.einduur = einduur;
    }

    public Date getDatum() {
        return datum;
    }

    public void setDatum(Date datum) {
        this.datum = datum;
    }

    public Boolean getGeblokeerd() {
        return geblokeerd;
    }

    public void setGeblokeerd(Boolean geblokeerd) {
        this.geblokeerd = geblokeerd;
    }
    //    public Set<Bestelling> getBestellingen() {
//        return bestellingen;
//    }
//
//    public void setBestellingen(Set<Bestelling> bestellingen) {
//        this.bestellingen = bestellingen;
//    }
}
