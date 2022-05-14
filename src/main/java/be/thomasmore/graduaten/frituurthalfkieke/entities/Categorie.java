package be.thomasmore.graduaten.frituurthalfkieke.entities;

import net.bytebuddy.dynamic.loading.InjectionClassLoader;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Categorie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private  String naam;


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

    public Categorie(Long id, String naam) {
        this.id = id;
        this.naam = naam;
    }

    public  Categorie(){

    }
    public  Categorie(String naam){
        this.naam = naam;
    }
}
