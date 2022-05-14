package be.thomasmore.graduaten.frituurthalfkieke.repositories;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Categorie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategorieRepository extends JpaRepository<Categorie ,Long> {

}
