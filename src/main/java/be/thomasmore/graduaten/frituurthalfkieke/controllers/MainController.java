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
