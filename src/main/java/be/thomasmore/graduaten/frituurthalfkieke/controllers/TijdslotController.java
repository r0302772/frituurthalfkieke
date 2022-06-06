package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Tijdslot;
import be.thomasmore.graduaten.frituurthalfkieke.helpers.DateHelper;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.TijdslotRepository;
import org.apache.tomcat.jni.Local;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import javax.servlet.http.HttpServletRequest;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import static be.thomasmore.graduaten.frituurthalfkieke.helpers.DateHelper.findAllDates;
import static be.thomasmore.graduaten.frituurthalfkieke.helpers.DateHelper.getMondayOfCurrentWeek;

@Controller
public class TijdslotController {
    public TijdslotRepository tijdslotRepository;

    public TijdslotController(TijdslotRepository tijdslotRepository) {
        this.tijdslotRepository = tijdslotRepository;
    }

    @RequestMapping("/tijdslot/blokkeren/{id}")
    public String blokeerDag(Model model, HttpServletRequest request, @PathVariable("id") int id){
        String dagnaam="";
        switch (id){
            case 0: dagnaam= "MONDAY"; break;
            case 1: dagnaam= "TUESDAY"; break;
            case 2: dagnaam= "WEDNESDAY"; break;
            case 3: dagnaam= "THURSDAY"; break;
            case 4: dagnaam= "FRIDAY"; break;
            case 5: dagnaam= "SATURDAY"; break;
            case 6: dagnaam= "SUNDAY"; break;
        }
        Tijdslot maxtijdslot = tijdslotRepository.getTop1OrderByDatumDesc();
        LocalDate stop = (maxtijdslot.getDatum()).toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        List<java.util.Date> allDates = findAllDates(dagnaam, stop);
        for (java.util.Date date:allDates
             ) {
                List<Tijdslot> allTimeSlots = tijdslotRepository.findTijdslotsByDatum(date);
            for (Tijdslot timeslot: allTimeSlots
                 ) {
                timeslot.setGeblokeerd(true);
                tijdslotRepository.save(timeslot);
            }

        }
        getTijdslotDate(model,request, tijdslotRepository);
        return "/tijdslotenbeheren";
    }
    @RequestMapping("/tijdslotenbeheren")
    public String navigateToTijdslotenbeheren(Model model, HttpServletRequest request) {



        getTijdslotDate(model,request, tijdslotRepository);
        return "tijdslotenbeheren";
    }

    @RequestMapping("/tijdslot/update/{Id}/{Amount}")
    public String updateTijdsloten(Model model, HttpServletRequest request, @PathVariable("Id") int id, @PathVariable("Amount") int amount){

       return "";
    }

    public void getTijdslotDate(Model model,HttpServletRequest request, TijdslotRepository tijdslotRepository){
        String startDatumString = request.getParameter("startdatum");
        String endDatumString = request.getParameter("einddatum");
        LocalDate startday = getMondayOfCurrentWeek(LocalDate.now());
        Date start = Date.valueOf(startday);
        Date end = Date.valueOf(startday.plusDays(7));
        if(startDatumString != null && endDatumString != null) {
            try {
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/YYYY");
                start = Date.valueOf(getMondayOfCurrentWeek(LocalDate.parse(startDatumString, formatter)));
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
    }


}
