package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Tijdslot;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.TijdslotRepository;
import org.apache.tomcat.jni.Local;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import javax.servlet.http.HttpServletRequest;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Controller
public class TijdslotController {
    public TijdslotRepository tijdslotRepository;

    public TijdslotController(TijdslotRepository tijdslotRepository) {
        this.tijdslotRepository = tijdslotRepository;
    }

    @RequestMapping("/tijdslotenbeheren")
    public String navigateToTijdslotenbeheren(Model model, HttpServletRequest request) {

        String startDatumString = request.getParameter("startdatum");
        String endDatumString = request.getParameter("einddatum");
        LocalDate monday = LocalDate.now();
        while (monday.getDayOfWeek() != DayOfWeek.MONDAY) {
            monday = monday.minusDays(1);
        }
        Date start = Date.valueOf(monday);
        Date end = Date.valueOf(LocalDate.now().plusDays(7));
        if(startDatumString != null && endDatumString != null) {
            try {
                start = (Date) new SimpleDateFormat(" dd/MM/YYYY").parse(startDatumString);
                end = (Date) new SimpleDateFormat(" dd/MM/YYYY").parse(endDatumString);
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }

        List<Tijdslot> tijdslotenMaandag = tijdslotRepository.findTijdslotsByDatum((start));
        List<Tijdslot> tijdslotenDinsdag = tijdslotRepository.findTijdslotsByDatum((Date.valueOf(start.toLocalDate().plusDays(1))));
        List<Tijdslot> tijdslotenWoensdag = tijdslotRepository.findTijdslotsByDatum(Date.valueOf(start.toLocalDate().plusDays(2)));
        List<Tijdslot> tijdslotenDonderdag= tijdslotRepository.findTijdslotsByDatum(Date.valueOf(start.toLocalDate().plusDays(3)));
        List<Tijdslot> tijdslotenVrijdag = tijdslotRepository.findTijdslotsByDatum((Date.valueOf(start.toLocalDate().plusDays(4))));
        List<Tijdslot> tijdslotenZaterdag = tijdslotRepository.findTijdslotsByDatum(Date.valueOf(start.toLocalDate().plusDays(5)));
        List<Tijdslot> tijdslotenZondag = tijdslotRepository.findTijdslotsByDatum(Date.valueOf(start.toLocalDate().plusDays(6)));
        List<Tijdslot> tijdsloten = tijdslotRepository.findTijdslotsByDatumBetweenOrderByDatumAsc(start, end);
        model.addAttribute("Tijdsloten" ,tijdsloten);
        List<List<Tijdslot>> listTijdsloten = new ArrayList<>();
        listTijdsloten.add(tijdslotenMaandag);
        listTijdsloten.add(tijdslotenDinsdag);
        listTijdsloten.add(tijdslotenWoensdag);
        listTijdsloten.add(tijdslotenDonderdag);
        listTijdsloten.add(tijdslotenVrijdag);
        listTijdsloten.add(tijdslotenZaterdag);
        listTijdsloten.add(tijdslotenZondag);
        model.addAttribute("listtijdsloten", listTijdsloten);
        return "tijdslotenbeheren";
    }


}
