package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel;
import be.thomasmore.graduaten.frituurthalfkieke.entities.Categorie;
import be.thomasmore.graduaten.frituurthalfkieke.entities.Student;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.ArtikelRepository;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.CategorieRepository;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.StudentRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ArtikelController {
    private ArtikelRepository artikelRepository;
    private CategorieRepository categorieRepository;

    public ArtikelController(ArtikelRepository artikelRepository, CategorieRepository categorieRepository) {
        this.artikelRepository = artikelRepository;
        this.categorieRepository = categorieRepository;
    }

    @RequestMapping("/menu")
    public String navigateToMenu(Model model) {
        List<Artikel> artikels = artikelRepository.findAll();
        List<Categorie> categorien = categorieRepository.findAll();
        model.addAttribute("categorien", categorien);
        model.addAttribute("artikels", artikels);
        return "menu";
    }

    @RequestMapping("/artikel/toevoegen-aan-winkelwagen")
    public String navigateToArtikelToevoegenAanWinkelwagen(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Artikel artikel = artikelRepository.getById(id);

        List<Artikel> sauzen = artikelRepository.findArtikelsByCategorieNaam("Sauzen");

        model.addAttribute("sauzen", sauzen);
        model.addAttribute("artikel", artikel);

        return "artikel-toevoegen-winkelwagen";
    }

    @RequestMapping("/artikel/toevoegen-aan-winkelwagen/result")
    public String navigateToArtikelToevoegenAanWinkelwagenResult(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Artikel artikel = artikelRepository.getById(id);

        List<Artikel> artikels = artikelRepository.findAll();
        List<Categorie> categorien = categorieRepository.findAll();
        List<Artikel> sauzen = new ArrayList<>();

        for (Categorie categorie : categorien) {
            if (categorie.getNaam() == "Sauzen") {
                for (Artikel artikelsaus : artikels) {
                    if (artikel.getCategorie() == categorie) {
                        sauzen.add(artikelsaus);
                    }
                }
            }
        }

        model.addAttribute("artikel", artikel);

        model.addAttribute("categorien", categorien);
        model.addAttribute("artikels", artikels);
        return "menu";
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



