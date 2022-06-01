package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel;
import be.thomasmore.graduaten.frituurthalfkieke.entities.Categorie;
import be.thomasmore.graduaten.frituurthalfkieke.entities.ItemWinkelwagen;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.ArtikelRepository;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.CategorieRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MenuController {
    private ArtikelRepository artikelRepository;
    private CategorieRepository categorieRepository;

    public MenuController(ArtikelRepository artikelRepository, CategorieRepository categorieRepository) {
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

    @RequestMapping("/artikel-toevoegen-aan-winkelwagen")
    public String navigateToArtikelToevoegenAanWinkelwagen(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Artikel artikel = artikelRepository.getById(id);

        List<Artikel> sauzen = artikelRepository.findArtikelsByCategorieNaam("Sauzen");

        model.addAttribute("sauzen", sauzen);
        model.addAttribute("artikel", artikel);

        return "artikel-toevoegen-winkelwagen";
    }

}
