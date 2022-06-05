package be.thomasmore.graduaten.frituurthalfkieke.repositories;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Tijdslot;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

public interface TijdslotRepository  extends JpaRepository<Tijdslot,Long>  {
    List<Tijdslot> findTijdslotsByDatumBetweenOrderByDatumAsc(Date start, Date end);
    List<Tijdslot> findTijdslotsByDatum(Date date);
}
