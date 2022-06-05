/*
package be.thomasmore.graduaten.frituurthalfkieke.entities;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Tijdslot {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private LocalDateTime tijdslot;

    private Boolean slot;

//    @OneToMany(mappedBy = "tijdslot")
//    private Set<Bestelling> bestellingen = new HashSet<>();

    public Tijdslot() {

    }

    public Tijdslot(Long id, LocalDateTime tijdslot, Boolean slot) {
        this.id = id;
        this.tijdslot = tijdslot;
        this.slot = slot;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDateTime getTijdslot() {
        return tijdslot;
    }

    public void setTijdslot(LocalDateTime tijdslot) {
        this.tijdslot = tijdslot;
    }

    public Boolean getSlot() {
        return slot;
    }

    public void setSlot(Boolean slot) {
        this.slot = slot;
    }

//    public Set<Bestelling> getBestellingen() {
//        return bestellingen;
//    }
//
//    public void setBestellingen(Set<Bestelling> bestellingen) {
//        this.bestellingen = bestellingen;
//    }
}
*/
