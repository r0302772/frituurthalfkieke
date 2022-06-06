package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.*;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class BestellingController {

    private BestellingRepository bestellingRepository;
    private ArtikelBestellingRepository artikelBestellingRepository;
    private ArtikelRepository artikelRepository;
    private CategorieRepository categorieRepository;
    private TijdslotRepository tijdslotRepository;

    public BestellingController(BestellingRepository bestellingRepository,
                                ArtikelBestellingRepository artikelBestellingRepository,
                                ArtikelRepository artikelRepository,
                                CategorieRepository categorieRepository,
                                TijdslotRepository tijdslotRepository) {
        this.bestellingRepository = bestellingRepository;
        this.artikelBestellingRepository = artikelBestellingRepository;
        this.artikelRepository = artikelRepository;
        this.categorieRepository = categorieRepository;
        this.tijdslotRepository = tijdslotRepository;
    }

    @RequestMapping("/bestellingenbeheren/ga-naar-datum")
    public String navigateToBestellingenBeherenGaNaarDatum(Model model, HttpServletRequest request) {
        String startDatumString = request.getParameter("selectedDatum");
        java.util.Date datum = null;
        try {
            datum = (java.util.Date) new SimpleDateFormat("yyyy-MM-dd").parse(startDatumString);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        List<Tijdslot> tijdsloten = tijdslotRepository.findTijdslotsByDatum(datum);
        List<Bestelling> bestellingen = bestellingRepository.findAll();

        List<Bestelling> bestellingenOpDatum = new ArrayList<>();

        for (Tijdslot tijdslot : tijdsloten) {
            for (Bestelling bestelling : bestellingen)
                if (bestelling.getTijdslot() == tijdslot) {

                    bestellingenOpDatum.add(bestelling);
                }
        }

        model.addAttribute("datum", datum);
        model.addAttribute("bestellingen", bestellingenOpDatum);

        return "bestellingenbeheren";

    }

    @RequestMapping("/bestellingenbeheren")
    public String navigateToBestellingenBeheren(Model model, HttpServletRequest request) {
/*        Date datum = Date.valueOf(LocalDate.now());

        List<Tijdslot> tijdsloten = tijdslotRepository.findTijdslotsByDatum(datum);
        List<Bestelling> bestellingenVanTijdslot = bestellingRepository.findAllByTijdsloten(tijdsloten);

        model.addAttribute("bestellingen",bestellingenVanTijdslot);*/


        Date datum = Date.valueOf(LocalDate.now());
        List<Tijdslot> tijdsloten = tijdslotRepository.findTijdslotsByDatum(datum);
        List<Bestelling> bestellingen = bestellingRepository.findAll();

        List<Bestelling> bestellingenOpDatum = new ArrayList<>();

        for (Tijdslot tijdslot : tijdsloten) {
            for (Bestelling bestelling : bestellingen)
                if (bestelling.getTijdslot() == tijdslot) {

                    bestellingenOpDatum.add(bestelling);
                }
        }

        model.addAttribute("datum", datum);
        model.addAttribute("bestellingen", bestellingenOpDatum);

        return "bestellingenbeheren";
    }

    @RequestMapping("/bestelling/detail")
    public String navigateToBestellingDetails(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Bestelling bestelling = bestellingRepository.getById(id);

        List<ArtikelBestelling> artikelBestellingList = artikelBestellingRepository.findArtikelsBestellingByBestellingId(id);
        //lijst van alle artikelbestellingen met artikels in
        //lijst van alle artikelbestellingen met sauzen die aan artikels hangen in.
        List<ArtikelBestelling> artikellijst = new ArrayList<>();
        List<ArtikelBestelling> sauzenlijst = new ArrayList<>();

        for (ArtikelBestelling artikelBestelling : artikelBestellingList) {
            if (artikelBestelling.getparentartikelbestelling() != null) {
                sauzenlijst.add(artikelBestelling);
            } else {
                artikellijst.add(artikelBestelling);
            }
        }
        model.addAttribute("sauzenlijst", sauzenlijst);
        model.addAttribute("artikellijst", artikellijst);


/*        Map<ArtikelBestelling, List<ArtikelBestelling>> dict = new HashMap<>();
        for (ArtikelBestelling artikelBestelling : artikelBestellingList) {
            if (artikelBestelling.getparentartikelbestelling() != null) {
                List<ArtikelBestelling> sauzenlijst = dict.get(artikelBestelling.getparentartikelbestelling());
                if (sauzenlijst == null) {
                    sauzenlijst = new ArrayList<>();
                }

                sauzenlijst.add(artikelBestelling);
                dict.put(artikelBestelling.getparentartikelbestelling(), sauzenlijst);
            } else {
                dict.put(artikelBestelling, null);
            }
        }
        model.addAttribute("bestellingmap", dict);*/

        model.addAttribute("bestelling", bestelling);

        return "details-bestelling";
    }

    @RequestMapping("/bestelling-afgehaald")
    public String navigateToBestellingAfgehaald(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Bestelling bestelling = bestellingRepository.getById(id);

        List<ArtikelBestelling> artikelBestellingList = artikelBestellingRepository.findArtikelsBestellingByBestellingId(id);
        //lijst van alle artikelbestellingen met artikels in
        //lijst van alle artikelbestellingen met sauzen die aan artikels hangen in.
        List<ArtikelBestelling> artikellijst = new ArrayList<>();
        List<ArtikelBestelling> sauzenlijst = new ArrayList<>();

        for (ArtikelBestelling artikelBestelling : artikelBestellingList) {
            if (artikelBestelling.getparentartikelbestelling() != null) {
                sauzenlijst.add(artikelBestelling);
            } else {
                artikellijst.add(artikelBestelling);
            }
        }

        if (bestelling.getAfgehaald()) {
            bestelling.setAfgehaald(false);
        } else {
            bestelling.setAfgehaald(true);
        }

        bestellingRepository.save(bestelling);

        model.addAttribute("sauzenlijst", sauzenlijst);
        model.addAttribute("artikellijst", artikellijst);
        model.addAttribute("bestelling", bestelling);

        return "details-bestelling";
    }
}


