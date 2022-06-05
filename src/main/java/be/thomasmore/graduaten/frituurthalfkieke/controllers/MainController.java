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

    @RequestMapping("/contact")
    public String navigateToContact() {
        return "contact";
    }



}
