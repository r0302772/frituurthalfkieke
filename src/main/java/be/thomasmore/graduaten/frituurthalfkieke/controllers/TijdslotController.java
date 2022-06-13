package be.thomasmore.graduaten.frituurthalfkieke.controllers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Tijdslot;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.TijdslotRepository;
import org.apache.tomcat.jni.Local;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import javax.servlet.http.HttpServletRequest;
import java.sql.Date;

import java.sql.Time;
import java.text.SimpleDateFormat;
import java.time.*;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
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

    @RequestMapping("/tijdslotenbeheren/settijd")
    public String setTijd(Model model, HttpServletRequest request){
        //error in translating i guess
        String strInterval = request.getParameter("interval");
        String strStartuur = request.getParameter("startuur");
        String strEinduur = request.getParameter("einduur");
        LocalTime interval = LocalTime.parse(strInterval);
        LocalTime startuur = LocalTime.parse(strStartuur);
        LocalTime einduur = LocalTime.parse(strEinduur);
        updateTijdsloten(model,request,startuur, einduur,interval);
        getTijdslotDate(model,request, tijdslotRepository);
        return "tijdslotenbeheren";
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
        return "tijdslotenbeheren";
    }
    public void updateTijdsloten(Model model, HttpServletRequest request,LocalTime startuur, LocalTime einduur, LocalTime interval){
//        tijdslotRepository.deleteAllByBestellingenIsNull();
//        tijdslotRepository.flush();
//        tijdslotRepository.deleteTijdslotsByBestellingenIsNull();
        while (startuur.compareTo(einduur) < 0){
            //creeer nieuw tijdslot voor alle dagen van deze week
            LocalDate currentDay = getMondayOfCurrentWeek(LocalDate.now());
            LocalDate endofweek = currentDay.plusDays(7);
            long hours = interval.getHour();
            LocalTime intervalEinduur = startuur.plusHours(hours);
            long minutes = interval.getMinute();
            intervalEinduur = intervalEinduur.plusMinutes(minutes);

            while(currentDay.isBefore(endofweek)){
                Tijdslot tijdslot = new Tijdslot();
                tijdslot.setDatum(convertToDateViaSqlDate(currentDay));
                tijdslot.setStartuur(convertToTimeViaSqlTime(startuur));
                tijdslot.setEinduur(convertToTimeViaSqlTime(intervalEinduur));
                tijdslot.setGeblokeerd(false);
                tijdslotRepository.save(tijdslot);
                currentDay = currentDay.plusDays(1);
            }
            startuur = startuur.plusHours(interval.getHour());
            startuur = startuur.plusMinutes(interval.getMinute());
        }
        return;
    }

    public Date convertToDateViaSqlDate(LocalDate dateToConvert) {
        return java.sql.Date.valueOf(dateToConvert);
    }

    public Time convertToTimeViaSqlTime(LocalTime timetoconvert) {
        return java.sql.Time.valueOf(timetoconvert);
    }

    @RequestMapping("/tijdslot/deblokkeren/{id}")
    public String deblokeerDag(Model model, HttpServletRequest request, @PathVariable("id") int id){
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
                timeslot.setGeblokeerd(false);
                tijdslotRepository.save(timeslot);
            }

        }
        getTijdslotDate(model,request, tijdslotRepository);
        return "/tijdslotenbeheren";
    }
    @RequestMapping("/tijdslotenbeheren")
    public String navigateToTijdslotenbeheren(Model model, HttpServletRequest request) {

        if(request.getParameter("previous") == "true"){

        }

        getTijdslotDate(model,request, tijdslotRepository);
        return "tijdslotenbeheren";
    }

    @RequestMapping("/tijdslot/update")
    public String updateTijdsloten(Model model, HttpServletRequest request){
        int amount = Integer.parseInt(request.getParameter("amount"));
        long id = Long.parseLong(request.getParameter("tijdslotid"));

        Tijdslot tijdslot = tijdslotRepository.getById(id);
        tijdslot.setAantal(amount);
        tijdslotRepository.save(tijdslot);
        getTijdslotDate(model,request, tijdslotRepository);
       return "tijdslotenbeheren";
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
        List<Tijdslot> tijdslotenMaandag = tijdslotRepository.findTijdslotsByDatumOrderByStartuurAsc((start));
        List<Tijdslot> tijdslotenDinsdag = tijdslotRepository.findTijdslotsByDatumOrderByStartuurAsc((Date.valueOf(start.toLocalDate().plusDays(1))));
        List<Tijdslot> tijdslotenWoensdag = tijdslotRepository.findTijdslotsByDatumOrderByStartuurAsc(Date.valueOf(start.toLocalDate().plusDays(2)));
        List<Tijdslot> tijdslotenDonderdag= tijdslotRepository.findTijdslotsByDatumOrderByStartuurAsc(Date.valueOf(start.toLocalDate().plusDays(3)));
        List<Tijdslot> tijdslotenVrijdag = tijdslotRepository.findTijdslotsByDatumOrderByStartuurAsc((Date.valueOf(start.toLocalDate().plusDays(4))));
        List<Tijdslot> tijdslotenZaterdag = tijdslotRepository.findTijdslotsByDatumOrderByStartuurAsc(Date.valueOf(start.toLocalDate().plusDays(5)));
        List<Tijdslot> tijdslotenZondag = tijdslotRepository.findTijdslotsByDatumOrderByStartuurAsc(Date.valueOf(start.toLocalDate().plusDays(6)));
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
