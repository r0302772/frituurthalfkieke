package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel;
import be.thomasmore.graduaten.frituurthalfkieke.entities.Student;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.ArtikelRepository;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.StudentRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ArtikelController {
 /*   @RequestMapping("/menu")
    public String navigateToMenu(){

        return "menu";
    }*/
    private ArtikelRepository artikelRepository;

    public ArtikelController(ArtikelRepository artikelRepository) {
        this.artikelRepository = artikelRepository;
    }

    @RequestMapping("/menu")
    public String navigateToMenu(Model model) {
        List<Artikel> artikels = artikelRepository.findAll();
       model.addAttribute("artikels", artikels);
        return "menu";
    }
}



