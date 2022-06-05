package be.thomasmore.graduaten.frituurthalfkieke.repositories;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ArtikelRepository extends JpaRepository<Artikel, Long> {

    List<Artikel> findArtikelsByCategorieNaam(String naam);


    Artikel findArtikelByNaam(String naam);


}
