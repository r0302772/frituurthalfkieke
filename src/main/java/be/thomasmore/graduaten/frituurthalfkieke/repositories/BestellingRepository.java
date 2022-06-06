package be.thomasmore.graduaten.frituurthalfkieke.repositories;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Bestelling;
import be.thomasmore.graduaten.frituurthalfkieke.entities.Tijdslot;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BestellingRepository extends JpaRepository<Bestelling,Long> {
    //List<Bestelling> findBestellingByTijdsloten(List<Tijdslot> tijdsloten);
    Bestelling findBestellingByTijdslot(Tijdslot tijdslot);
    List<Bestelling> findAllByTijdslot(Tijdslot tijdslot);
/*    List<Bestelling> findAllByTijdsloten(List<Tijdslot> tijdsloten);*/
}