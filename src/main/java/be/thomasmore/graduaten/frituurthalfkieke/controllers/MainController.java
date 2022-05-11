package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("/")
    public String navigateToIndex() {
        return "index";
    }

   /* @RequestMapping("/menu")
    public String navigateToMenu() {
        return "menu";
    }*/

    @RequestMapping("/contact")
    public String navigateToContact() {
        return "contact";
    }

    @RequestMapping("/winkelwagen")
    public String navigateToWinkelmand() {
        return "winkelwagen";
    }

    @RequestMapping("/bevestigingbestelling")
    public String navigateToBevestigingbestelling() {
        return "bevestigingbestelling";
    }

    @RequestMapping("/login")
    public String navigateToLogin() {
        return "login";
    }

    @RequestMapping("/artikelsbeheren")
    public String navigateToArtikelsbeheren() {
        return "artikelsbeheren";
    }

    @RequestMapping("/tijdslotenbeheren")
    public String navigateToTijdslotenbeheren() {
        return "tijdslotenbeheren";
    }

    @RequestMapping("/bestellingenbeheren")
    public String navigateToBestellingenbeheren() {
        return "bestellingenbeheren";
    }

    @RequestMapping("/scriptlet")
    public String navigateToScriptlet() {
        return "scriptlet";
    }

    @RequestMapping("/expression")
    public String navigateToExpression() {
        return "expression";
    }

    @RequestMapping("/model")
    public String navigateToModel(Model model) {
        model.addAttribute("naamStudent", "Jan Verbeek");
        return "model";
    }
}
