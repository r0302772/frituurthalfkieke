package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel;
import be.thomasmore.graduaten.frituurthalfkieke.entities.Student;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.ArtikelRepository;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.StudentRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
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

    @RequestMapping("/artikelsbeheren")
    public String navigateToArtikelsbeheren(Model model) {
        List<Artikel> artikels = artikelRepository.findAll();
        model.addAttribute("artikels", artikels);
        return "artikelsbeheren";
    }

    @RequestMapping("/artikelsbeheren/toevoegen")
    public String navigateToToevoegen() {
        return "nieuw-artikel";
    }

    @RequestMapping("/artikelsbeheren/toevoegen/result")
    public String getToevoegenResult(Model model, HttpServletRequest request) {
        String naam = request.getParameter("naam");
        BigDecimal prijs = new BigDecimal(request.getParameter("prijs"));
        Boolean beschikbaar = Boolean.parseBoolean(request.getParameter("beschikbaar"));
        String opmerking = request.getParameter("opmerking");

        Artikel artikel = new Artikel(naam, prijs, beschikbaar, opmerking);
        artikelRepository.save(artikel);

        List<Artikel> artikels = artikelRepository.findAll();
        model.addAttribute("artikels", artikels);

        return "artikelsbeheren";
    }

    @RequestMapping("/artikelsbeheren/bewerken")
    public String navigateToBewerken(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Artikel artikel = artikelRepository.getById(id);
        model.addAttribute("artikel", artikel);
        return "bewerk-artikel";
    }

    @RequestMapping("/artikelsbeheren/bewerken/result")
    public String getBewerkenResult(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Artikel artikel = artikelRepository.getById(id);

        artikel.setId(id);
        artikel.setNaam(request.getParameter("naam"));
        artikel.setPrijs(new BigDecimal(request.getParameter("prijs")));
        String beschikbaarheid =request.getParameter("beschikbaar");
        if (beschikbaarheid != null){
            artikel.setBeschikbaar(true);
        }
        else {
            artikel.setBeschikbaar(false);
        }
        artikel.setOpmerking(request.getParameter("opmerking"));

        artikelRepository.save(artikel);

        List<Artikel> artikels = artikelRepository.findAll();
        model.addAttribute("artikels", artikels);

        return "artikelsbeheren";
    }

    @RequestMapping("/artikelsbeheren/delete")
    public String navigateToDeleteStudent(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Artikel artikel = artikelRepository.getById(id);
        model.addAttribute("artikel", artikel);
        return "delete-artikel";
    }

    @RequestMapping("/artikelsbeheren/delete/result")
    public String getDeleteResult(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Artikel artikel = artikelRepository.getById(id);

        artikelRepository.delete(artikel);

        List<Artikel> artikels = artikelRepository.findAll();
        model.addAttribute("artikels", artikels);
        return "artikelsbeheren";
    }
}



