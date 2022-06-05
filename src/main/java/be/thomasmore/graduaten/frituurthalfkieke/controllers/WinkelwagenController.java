package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.*;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.ArtikelBestellingRepository;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.ArtikelRepository;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.CategorieRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "winkelwagen")
public class WinkelwagenController {

    private ArtikelRepository artikelRepository;
    private CategorieRepository categorieRepository;
    private ArtikelBestellingRepository artikelBestellingRepository;

    public WinkelwagenController(ArtikelRepository artikelRepository, CategorieRepository categorieRepository, ArtikelBestellingRepository artikelBestellingRepository) {
        this.artikelRepository = artikelRepository;
        this.categorieRepository = categorieRepository;
        this.artikelBestellingRepository = artikelBestellingRepository;
    }

    @RequestMapping()
    public String navigateToWinkelwagen() {
        return "winkelwagen";
    }

    @RequestMapping("/artikel-toevoegen-aan-winkelwagen/result")
    public String navigateToArtikelToevoegenAanWinkelwagenResult(Model model, HttpSession session, HttpServletRequest request) {
        Long artikelId = Long.parseLong(request.getParameter("selectedArtikel"));
        Artikel artikel = artikelRepository.getById(artikelId);

        String[] sausIdStrings = request.getParameterValues("selectedSaus");
        List<Artikel> sauzen = new ArrayList<Artikel>();
        if (sausIdStrings != null) {
            for (String sausid : sausIdStrings) {
                Artikel saus = artikelRepository.getById(Long.parseLong(sausid));
                sauzen.add(saus);
            }
        } else {
            sauzen.add(new Artikel("Geen saus", new BigDecimal(0), true, ""));
        }
        String kruiden = request.getParameter("selectedKruiden");
        String opmerking = request.getParameter("opmerking");
        Integer aantal = Integer.parseInt(request.getParameter("aantal"));

        List<Artikel> artikels = artikelRepository.findAll();
        List<Categorie> categorien = categorieRepository.findAll();
        if (session.getAttribute("winkelwagen") == null) {
            List<ItemWinkelwagen> winkelwagen = new ArrayList<ItemWinkelwagen>();

            winkelwagen.add(new ItemWinkelwagen(artikel, aantal, sauzen, kruiden, opmerking));
            session.setAttribute("winkelwagen", winkelwagen);
        } else {
            List<ItemWinkelwagen> winkelwagen = (List<ItemWinkelwagen>) session.getAttribute("winkelwagen");
            // winkelwagen.add(new ItemWinkelwagen(artikelRepository.getById(Long.parseLong(id)), 1));

            winkelwagen.add(new ItemWinkelwagen(artikel, aantal, sauzen, kruiden, opmerking));
            session.setAttribute("winkelwagen", winkelwagen);
        }

        model.addAttribute("artikel", artikel);
        model.addAttribute("categorien", categorien);
        model.addAttribute("artikels", artikels);

        return "menu";
    }

    @RequestMapping(value = "/verwijderen/{id}")
    public String remove(@PathVariable("id") String id, HttpSession session) {
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

    @RequestMapping("/gegevens-en-tijdslot")
    public String navigateToGegevensEnTijdslot() {

        return "gegevens-en-tijdslot";
    }

    @RequestMapping("/bevestiging-bestelling")
    public String navigateToBevestigingbestelling(Model model, HttpSession session, HttpServletRequest request) {
        //winkelwagen uit de session halen?
        List<ItemWinkelwagen> winkelwagen = (List<ItemWinkelwagen>) session.getAttribute("winkelwagen");
        //als de winkelwagen niet null (leeg) is
        if (winkelwagen != null) {
            Bestelling bestelling = new Bestelling();
            //for each item in de sessionwinkelwagen
            for (ItemWinkelwagen item : winkelwagen) {
                ArtikelBestelling artikelBestelling = new ArtikelBestelling(
                        item.getAantal(),
                        item.getKruiden(),
                        item.getArtikel(),
                        bestelling
                );

                artikelBestellingRepository.save(artikelBestelling);
            }
        } else {
            //foutmelding omdat de winkelwagen leeg is
            model.addAttribute("error", "Er zit niets in uw winkelwagen!");
            return "gegevens-en-tijdslot";
        }
//model.addAttribute("tijdslot", tijdslot)

        return "bevestigingbestelling";
    }
}
