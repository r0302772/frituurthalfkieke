package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.*;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "winkelwagen")
public class WinkelwagenController {

    private ArtikelRepository artikelRepository;
    private CategorieRepository categorieRepository;
    private ArtikelBestellingRepository artikelBestellingRepository;
    private TijdslotRepository tijdslotRepository;
    private BestellingRepository bestellingRepository;

    public WinkelwagenController(ArtikelRepository artikelRepository,
                                 CategorieRepository categorieRepository,
                                 ArtikelBestellingRepository artikelBestellingRepository,
                                 BestellingRepository bestellingRepository,
                                 TijdslotRepository tijdslotRepository) {
        this.artikelRepository = artikelRepository;
        this.categorieRepository = categorieRepository;
        this.artikelBestellingRepository = artikelBestellingRepository;
        this.bestellingRepository = bestellingRepository;
        this.tijdslotRepository = tijdslotRepository;
    }

    @RequestMapping()
    public String navigateToWinkelwagen() {
        return "winkelwagen";
    }

    @PostMapping("/artikel-toevoegen-aan-winkelwagen/result")
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

    @PostMapping("/bevestiging-bestelling")
    public String navigateToBevestigingbestelling(Model model, HttpSession session, HttpServletRequest request) {
        //winkelwagen uit de session halen?
        List<ItemWinkelwagen> winkelwagen = (List<ItemWinkelwagen>) session.getAttribute("winkelwagen");
        //als de winkelwagen niet null (leeg) is
        if (winkelwagen.size() == 0) {
            //foutmelding omdat de winkelwagen leeg is
            model.addAttribute("error", "Er zit niets in uw winkelwagen!");

            return "winkelwagen";
        }

        String voornaam = request.getParameter("voornaam");
        String achternaam = request.getParameter("achternaam");
        String email = request.getParameter("email");
        String gsm = request.getParameter("gsm");
        Long tijdslot_id = Long.parseLong(request.getParameter("selectedTijdslot"));
        Tijdslot tijdslot = tijdslotRepository.getById(tijdslot_id);

        Bestelling bestelling = new Bestelling(voornaam, achternaam, email, gsm, false, tijdslot);

        bestellingRepository.save(bestelling);

        tijdslot.setAantal(tijdslot.getAantal() - 1);

        //for each item in de sessionwinkelwagen
        for (ItemWinkelwagen item : winkelwagen) {
            ArtikelBestelling artikelBestelling = new ArtikelBestelling();
            artikelBestelling.setBestelling(bestelling);
            artikelBestelling.setArtikel(item.getArtikel());
            artikelBestelling.setAantal(item.getAantal());
            artikelBestelling.setKruiden(item.getKruiden());
            artikelBestelling.setOpmerking(item.getOpmerking());

            artikelBestellingRepository.save(artikelBestelling);

            if (item.Getsauzen().get(0).getId() != null) {
                for (Artikel saus : item.Getsauzen()) {
                    ArtikelBestelling artikelBestellingSaus = new ArtikelBestelling();
                    artikelBestellingSaus.setBestelling(bestelling);
                    artikelBestellingSaus.setAantal(1);
                    artikelBestellingSaus.setArtikel(saus);
                    artikelBestellingSaus.setOpmerking(saus.getOpmerking());
                    artikelBestellingSaus.setparentartikelbestelling(artikelBestelling);

                    artikelBestellingRepository.save(artikelBestellingSaus);
                }
            }
        }

        //winkelwagen terug leegmaken
        ((List<?>) session.getAttribute("winkelwagen")).clear();

        model.addAttribute("selectedTijdslot", tijdslot);
        model.addAttribute("datum", tijdslot.getDatum());

        return "bevestigingbestelling";
    }

    @PostMapping("/datum-kiezen")
    public String navigateToDatumKiezen(Model model, HttpSession session, HttpServletRequest request) {
        List<ItemWinkelwagen> winkelwagen = (List<ItemWinkelwagen>) session.getAttribute("winkelwagen");
        if (winkelwagen == null) {
            //foutmelding omdat de winkelwagen leeg is
            model.addAttribute("error", "Er zit niets in uw winkelwagen!");

            return "winkelwagen";
        }
        return "datum-kiezen";
    }

    @PostMapping("/datum-kiezen/result")
    public String navigateToDatumKiezenResult(Model model, HttpSession session, HttpServletRequest request) {
        //Van request (string) naar LocalDate
        String startDatumString = request.getParameter("selectedDatum");
        Date datum = null;
        try {
            datum = (Date) new SimpleDateFormat("yyyy-MM-dd").parse(startDatumString);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }

        List<Tijdslot> tijdsloten = tijdslotRepository.findTijdslotsByDatum(datum);

        model.addAttribute("datum", datum);

        if (datum == null) {
            return "datum-kiezen";
        }

        model.addAttribute("tijdsloten", tijdsloten);

        return "gegevens-en-tijdslot";
    }
}
