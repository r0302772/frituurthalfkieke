package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel;
import be.thomasmore.graduaten.frituurthalfkieke.entities.Categorie;
import be.thomasmore.graduaten.frituurthalfkieke.entities.ItemWinkelwagen;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.ArtikelRepository;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.CategorieRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "winkelwagen")
public class WinkelwagenController {

    private ArtikelRepository artikelRepository;
    private CategorieRepository categorieRepository;

    @RequestMapping()
    public String navigateToWinkelwagen() {
        return "winkelwagen";
    }

    @RequestMapping("/artikel-toevoegen-aan-winkelwagen/result/{id}")
    public String navigateToArtikelToevoegenAanWinkelwagenResult(@PathVariable("id") String id,Model model, HttpSession session) {
//        Long id = Long.parseLong(request.getParameter("id"));
//        Artikel artikel = artikelRepository.getById(id);

        List<Artikel> artikels = artikelRepository.findAll();
        List<Categorie> categorien = categorieRepository.findAll();

        if (session.getAttribute("winkelwagen") == null) {
            List<ItemWinkelwagen> winkelwagen = new ArrayList<ItemWinkelwagen>();
            winkelwagen.add(new ItemWinkelwagen(artikelRepository.getById(Long.parseLong(id)), 1));
            session.setAttribute("winkelwagen", winkelwagen);
        } else {
            List<ItemWinkelwagen> winkelwagen = (List<ItemWinkelwagen>) session.getAttribute("winkelwagen");
            int index = this.exists(Long.parseLong(id), winkelwagen);
            if (index == -1) {
                winkelwagen.add(new ItemWinkelwagen(artikelRepository.getById(Long.parseLong(id)), 1));
            } else {
                int hoeveelheid = winkelwagen.get(index).getHoeveelheid() + 1;
                winkelwagen.get(index).setHoeveelheid(hoeveelheid);
            }
            session.setAttribute("winkelwagen", winkelwagen);

        }

//model.addAttribute("artikel", artikel);

        model.addAttribute("categorien", categorien);
        model.addAttribute("artikels", artikels);
        return "menu";
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
