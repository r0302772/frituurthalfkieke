package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Artikel;
import be.thomasmore.graduaten.frituurthalfkieke.entities.Categorie;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.CategorieRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.List;

@Controller
public class CategorieController {
    private CategorieRepository categorieRepository;

    public CategorieController(CategorieRepository categorieRepository) {
        this.categorieRepository = categorieRepository;
    }
    @RequestMapping("/categorie")
    public String navigateToCategorie(Model model) {
        List<Categorie> categorien = categorieRepository.findAll();
        model.addAttribute("categorien", categorien);
        return "categorie";
    }

    @RequestMapping("/categorie/toevoegen/result")
    public String getToevoegenResult(Model model, HttpServletRequest request) {
        String naam = request.getParameter("naam");


        Categorie categorie = new Categorie(naam);
        categorieRepository.save(categorie);

        List<Categorie> categorien = categorieRepository.findAll();
        model.addAttribute("categorien", categorien);

        return "categorie";
    }

    @RequestMapping("/categorie/delete/result")
    public String getDeleteResult(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Categorie categorie = categorieRepository.getById(id);

        categorieRepository.delete(categorie);

        List<Categorie> categorien = categorieRepository.findAll();
        model.addAttribute("categorien", categorien);
        return "categorie";
    }


    @RequestMapping("/categorie/bewerken/result")
    public String getBewerkenResult(Model model, HttpServletRequest request) {
        Long id = Long.parseLong(request.getParameter("id"));
        Categorie categorie = categorieRepository.getById(id);
      categorie.setNaam(request.getParameter("naam"));


        categorieRepository.save(categorie);

        List<Categorie> categorien = categorieRepository.findAll();
        model.addAttribute("categorien", categorien);

        return "categorie";
    }
}
