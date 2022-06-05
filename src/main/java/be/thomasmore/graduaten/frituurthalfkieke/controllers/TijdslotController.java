//package be.thomasmore.graduaten.frituurthalfkieke.controllers;
//
//import be.thomasmore.graduaten.frituurthalfkieke.entities.Tijdslot;
//import be.thomasmore.graduaten.frituurthalfkieke.repositories.TijdslotRepository;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.ui.Model;
//import javax.servlet.http.HttpServletRequest;
//import java.util.ArrayList;
//import java.util.List;
//
//@Controller
//public class TijdslotController {
//    public TijdslotRepository tijdslotRepository;
//
//    public TijdslotController(TijdslotRepository tijdslotRepository) {
//        this.tijdslotRepository = tijdslotRepository;
//    }
//
//    @RequestMapping("/tijdslotenbeheren")
//    public String navigateToTijdslotenbeheren(Model model, HttpServletRequest request) {
////        List<Tijdslot> tijdslotenMaandag = tijdslotRepository.findTijdslotByDag("Maandag");
////        List<Tijdslot> tijdslotenDinsdag = tijdslotRepository.findTijdslotByDag("Dinsdag");
////        List<Tijdslot> tijdslotenWoensdag = tijdslotRepository.findTijdslotByDag("Woensdag");
////        List<Tijdslot> tijdslotenDonderdag= tijdslotRepository.findTijdslotByDag("Donderdag");
////        List<Tijdslot> tijdslotenVrijdag = tijdslotRepository.findTijdslotByDag("Vrijdag");
////        List<Tijdslot> tijdslotenZaterdag = tijdslotRepository.findTijdslotByDag("Zaterdag");
////        List<Tijdslot> tijdslotenZondag = tijdslotRepository.findTijdslotByDag("Zondag");
//        List<List<Tijdslot>> listTijdsloten = new ArrayList<>();
//        model.addAttribute("Tijdsloten" ,listTijdsloten);
////        ListTijdsloten.add(tijdslotenMaandag);
//        return "tijdslotenbeheren";
//    }
//
//
//}
