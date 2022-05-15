package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class AdminController {

    @GetMapping("login")
    public String navigateToLogin() {
        return "login";
    }

    @GetMapping("bestellingenbeheren")
    public String navigateToBestellingenbeheren() {
        return "bestellingenbeheren";
    }

    @GetMapping("loguit")
    public String navigateToLoguit() {
        return "index";
    }
}
