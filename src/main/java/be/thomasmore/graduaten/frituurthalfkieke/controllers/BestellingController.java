package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Bestelling;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.BestellingRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class BestellingController {

    private BestellingRepository bestellingRepository;

    public BestellingController(BestellingRepository bestellingRepository) {
        this.bestellingRepository = bestellingRepository;
    }

    @RequestMapping("/bestelling")
    public String navigateToBestelling(Model model) {
        List<Bestelling> bestellingen = bestellingRepository.findAll();
        model.addAttribute("bestellingen", bestellingen);
        return "bestelling";
    }

    @RequestMapping("/bestelling/detail")
    public String navigateToBestellingDetails(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Bestelling bestelling = bestellingRepository.getById(id);
        model.addAttribute("bestelling", bestelling);
        return "bestelling";
    }

    /*@RequestMapping("/bestelling/toevoegen")
    public String navigateToAdStudentForm() {
        return "bevestigingbestelling";
    } */

    //Form in winkelwagen of bevestiging bestelling????

/*    @RequestMapping("/bestelling/toevoegen/result")
    public String getResult(Model model, HttpServletRequest request) {
        String voornaamKlant = request.getParameter("voornaam");
        String familienaamKlant = request.getParameter("familienaam");
        String emailKlant = request.getParameter("email");
        String telefoonKlant = request.getParameter("telefoon");

        Bestelling bestelling = new Bestelling(voornaamKlant, familienaamKlant, emailKlant,telefoonKlant);
        bestellingRepository.save(bestelling);

        List<Bestelling> bestellingen = bestellingRepository.findAll();
        model.addAttribute("bestellingen", bestellingen);
        return "bestelling";
    }*/
}


