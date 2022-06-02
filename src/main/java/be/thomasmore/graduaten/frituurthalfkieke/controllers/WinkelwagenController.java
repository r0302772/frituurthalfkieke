package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel;
import be.thomasmore.graduaten.frituurthalfkieke.entities.Categorie;
import be.thomasmore.graduaten.frituurthalfkieke.entities.ItemWinkelwagen;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.ArtikelRepository;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.CategorieRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "winkelwagen")
public class WinkelwagenController {

    private ArtikelRepository artikelRepository;
    private CategorieRepository categorieRepository;

    public  WinkelwagenController(ArtikelRepository artikelRepository, CategorieRepository categorieRepository){
        this.artikelRepository = artikelRepository;
        this.categorieRepository = categorieRepository;
    }

    @RequestMapping()
    public String navigateToWinkelwagen() {
        return "winkelwagen";
    }

    @RequestMapping( "/artikel-toevoegen-aan-winkelwagen/result")
    public String navigateToArtikelToevoegenAanWinkelwagenResult(Model model, HttpSession session,  HttpServletRequest request) {
        Long artikelId = Long.parseLong(request.getParameter("selectedArtikel"));
        Artikel artikel = artikelRepository.getById(artikelId);

        Long sausId = Long.parseLong(request.getParameter("selectedSaus"));
        String kruiden = request.getParameter("selectedKruiden");
        String opmerking = request.getParameter("opmerking");
        Artikel saus = artikelRepository.getById(sausId);
        List<Artikel> artikels = artikelRepository.findAll();
        List<Categorie> categorien = categorieRepository.findAll();
        if (session.getAttribute("winkelwagen") == null) {
            List<ItemWinkelwagen> winkelwagen = new ArrayList<ItemWinkelwagen>();
            //winkelwagen.add(new ItemWinkelwagen(artikelRepository.getById(Long.parseLong(id)), 1));
            winkelwagen.add(new ItemWinkelwagen(artikel,1,saus,kruiden,opmerking));
            session.setAttribute("winkelwagen", winkelwagen);
        } else {
            List<ItemWinkelwagen> winkelwagen = (List<ItemWinkelwagen>) session.getAttribute("winkelwagen");


                // winkelwagen.add(new ItemWinkelwagen(artikelRepository.getById(Long.parseLong(id)), 1));
                winkelwagen.add(new ItemWinkelwagen(artikel,1,saus,kruiden,opmerking));

            session.setAttribute("winkelwagen", winkelwagen);
        }

        model.addAttribute("artikel", artikel);
        model.addAttribute("categorien", categorien);
        model.addAttribute("artikels", artikels);
        return "menu";
    }

    @RequestMapping(value = "/verwijderen/{id}")
    public String remove(@PathVariable("id") String id, HttpSession session){
        Artikel artikel = artikelRepository.getById(Long.parseLong(id));
        List<ItemWinkelwagen> winkelwagen = (List<ItemWinkelwagen>) session.getAttribute("winkelwagen");

        int index = this.exists(Long.parseLong(id), winkelwagen);
           winkelwagen.remove(index);
        session.setAttribute("winkelwagen", winkelwagen);
        return "winkelwagen";
    }

    private int exists(Long id, List<ItemWinkelwagen> cart) {
        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getArtikel().getId().toString().equalsIgnoreCase(id.toString())) {
                return i;
            }
        }
        return -1;
    }
}
