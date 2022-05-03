package be.thomasmore.graduaten.frituurthalfkieke.repositories;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Bestelling;
import be.thomasmore.graduaten.frituurthalfkieke.entities.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BestellingRepository extends JpaRepository<Bestelling,Long> {
}