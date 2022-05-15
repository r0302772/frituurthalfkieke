package be.thomasmore.graduaten.frituurthalfkieke.entities;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.HashSet;
import java.util.Set;

public class Winkelwagen {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Set<Artikel> artikels = new HashSet<>();
}
