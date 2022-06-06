package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel;
import be.thomasmore.graduaten.frituurthalfkieke.entities.Categorie;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.ArtikelRepository;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.CategorieRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.List;

@Controller
public class AdminController {

    private ArtikelRepository artikelRepository;
    private CategorieRepository categorieRepository;

    public AdminController(ArtikelRepository artikelRepository, CategorieRepository categorieRepository) {
        this.artikelRepository = artikelRepository;
        this.categorieRepository = categorieRepository;
    }

    @GetMapping("/login")
    public String navigateToLogin() {

        return "login";
    }

    @RequestMapping("/artikelsbeheren")
    public String navigateToArtikelsbeheren(Model model) {
        List<Artikel> artikels = artikelRepository.findAll();
        List<Categorie> categorien = categorieRepository.findAll();
        model.addAttribute("categorien", categorien);
        model.addAttribute("artikels", artikels);
        return "artikelsbeheren";
    }

    @RequestMapping("/artikel/toevoegen")
    public String navigateToToevoegen(Model model) {
        List<Categorie> categorien = categorieRepository.findAll();
        model.addAttribute("categorien", categorien);
        return "nieuw-artikel";
    }

    @RequestMapping("/artikel/toevoegen/result")
    public String getToevoegenResult(Model model, HttpServletRequest request) {
        String naam = request.getParameter("naam");
        BigDecimal prijs = new BigDecimal(request.getParameter("prijs"));
        Boolean beschikbaar = Boolean.TRUE;
        String beschikbaarheid = request.getParameter("beschikbaar");
        if (beschikbaarheid == null) {
            beschikbaar = false;
        }
        String opmerking = request.getParameter("opmerking");

        Long categorie_id = Long.parseLong(request.getParameter("categorie"));
        Categorie categorie = categorieRepository.getById(categorie_id);

        Artikel artikel = new Artikel(naam, prijs, beschikbaar, opmerking, categorie);

        artikelRepository.save(artikel);

        List<Categorie> categorien = categorieRepository.findAll();
        model.addAttribute("categorien", categorien);
        List<Artikel> artikels = artikelRepository.findAll();
        model.addAttribute("artikels", artikels);

        //nog iets om te voorkomen dat er artikels met dezelfde naam in de db worden gestoken

        return "artikelsbeheren";
    }

    @RequestMapping("/artikel/bewerken")
    public String navigateToBewerken(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Artikel artikel = artikelRepository.getById(id);
        List<Categorie> categorien = categorieRepository.findAll();
        model.addAttribute("categorien", categorien);
        model.addAttribute("artikel", artikel);
        return "bewerk-artikel";
    }

    @RequestMapping("/artikel/bewerken/result")
    public String getBewerkenResult(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Artikel artikel = artikelRepository.getById(id);

        artikel.setId(id);
        artikel.setNaam(request.getParameter("naam"));
        artikel.setPrijs(new BigDecimal(request.getParameter("prijs")));
        String beschikbaarheid = request.getParameter("beschikbaar");
        if (beschikbaarheid != null) {
            artikel.setBeschikbaar(true);
        } else {
            artikel.setBeschikbaar(false);
        }
        artikel.setOpmerking(request.getParameter("opmerking"));

        Long categorie_id = Long.parseLong(request.getParameter("categorie"));
        Categorie categorie = categorieRepository.getById(categorie_id);
        artikel.setCategorie(categorie);

        artikelRepository.save(artikel);

        List<Categorie> categorien = categorieRepository.findAll();
        model.addAttribute("categorien", categorien);
        List<Artikel> artikels = artikelRepository.findAll();
        model.addAttribute("artikels", artikels);

        return "artikelsbeheren";
    }

    @RequestMapping("/artikel/delete")
    public String navigateToDeleteStudent(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Artikel artikel = artikelRepository.getById(id);
        model.addAttribute("artikel", artikel);
        return "delete-artikel";
    }

    @RequestMapping("/artikel/delete/result")
    public String getDeleteResult(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Artikel artikel = artikelRepository.getById(id);

        artikelRepository.delete(artikel);

        List<Categorie> categorien = categorieRepository.findAll();
        model.addAttribute("categorien", categorien);
        List<Artikel> artikels = artikelRepository.findAll();
        model.addAttribute("artikels", artikels);

        return "artikelsbeheren";
    }

}
