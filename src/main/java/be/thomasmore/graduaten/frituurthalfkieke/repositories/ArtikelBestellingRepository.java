package be.thomasmore.graduaten.frituurthalfkieke.repositories;

import be.thomasmore.graduaten.frituurthalfkieke.entities.ArtikelBestelling;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ArtikelBestellingRepository extends JpaRepository<ArtikelBestelling, Long> {
    List<ArtikelBestelling> findArtikelsBestellingByBestellingId(Long bestellingId);
}
