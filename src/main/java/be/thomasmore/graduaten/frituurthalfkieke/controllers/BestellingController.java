package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel;
import be.thomasmore.graduaten.frituurthalfkieke.entities.ArtikelBestelling;
import be.thomasmore.graduaten.frituurthalfkieke.entities.Bestelling;
import be.thomasmore.graduaten.frituurthalfkieke.entities.Categorie;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.ArtikelBestellingRepository;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.ArtikelRepository;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.BestellingRepository;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.CategorieRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class BestellingController {

    private BestellingRepository bestellingRepository;
    private ArtikelBestellingRepository artikelBestellingRepository;
    private ArtikelRepository artikelRepository;
    private CategorieRepository categorieRepository;

    public BestellingController(BestellingRepository bestellingRepository, ArtikelBestellingRepository artikelBestellingRepository,
                                ArtikelRepository artikelRepository, CategorieRepository categorieRepository) {
        this.bestellingRepository = bestellingRepository;
        this.artikelBestellingRepository = artikelBestellingRepository;
        this.artikelRepository = artikelRepository;
        this.categorieRepository = categorieRepository;
    }

    @RequestMapping("/bestellingenbeheren")
    public String navigateToBestellingenBeheren(Model model, HttpServletRequest request) {
        List<Bestelling> bestellingen = bestellingRepository.findAll();

//        List<Artikel> artikels = artikelRepository.findAll();
//        List<Categorie> categorien = categorieRepository.findAll();

        model.addAttribute("bestellingen", bestellingen);
//        model.addAttribute("artikels", artikels);
//        model.addAttribute("categorien", categorien);
        return "bestellingenbeheren";
    }

    @RequestMapping("/bestelling/detail")
    public String navigateToBestellingDetails(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Bestelling bestelling = bestellingRepository.getById(id);

        List<ArtikelBestelling> artikelBestellingList = artikelBestellingRepository.findArtikelsBestellingByBestellingId(id);
        List<ArtikelBestelling> sauzen = new ArrayList<>();

        for (ArtikelBestelling artikelBestelling : artikelBestellingList){
            if (artikelBestelling.getparentartikelbestelling() == null){
                sauzen = artikelBestellingRepository.findArtikelBestellingByParentArtikelBestellingId(artikelBestelling.getId());
            }
        }

        model.addAttribute("sauzen", sauzen);
        model.addAttribute("bestelling", bestelling);
        model.addAttribute("artikelBestellingList", artikelBestellingList);

        return "details-bestelling";
    }


}


