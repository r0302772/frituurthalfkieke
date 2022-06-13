package be.thomasmore.graduaten.frituurthalfkieke.repositories;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Tijdslot;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

public interface TijdslotRepository  extends JpaRepository<Tijdslot,Long>  {
    List<Tijdslot> findTijdslotsByDatumBetweenOrderByDatumAsc(Date start, Date end);
    List<Tijdslot> findTijdslotsByDatum(Date date);
    List<Tijdslot> findTijdslotsByDatumOrderByStartuurAsc(Date date);
    @Query(nativeQuery = true,value = "Select Top 1 * from TIJDSLOT ORDER BY DATUM DESC")
    Tijdslot getTop1OrderByDatumDesc();
    void deleteTijdslotsByBestellingenIsNull();


}
