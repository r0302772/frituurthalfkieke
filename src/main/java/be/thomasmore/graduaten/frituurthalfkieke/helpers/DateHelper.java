package be.thomasmore.graduaten.frituurthalfkieke.helpers;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.temporal.TemporalAdjusters;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DateHelper {
    public static List<Date> findAllDates(String dayOfTheWeek, LocalDate stop){
        LocalDate start = getMondayOfCurrentWeek(null);
        LocalDate selectedDate =start.with(TemporalAdjusters.nextOrSame(DayOfWeek.valueOf(dayOfTheWeek)));
        List<Date> result =new ArrayList<>();
        while( selectedDate.isBefore( stop ) ) {
            result.add(java.sql.Date.valueOf(selectedDate));
            // Set up the next loop.
            selectedDate = selectedDate.plusWeeks( 1 );
        }


        return result;

    };

    public static LocalDate getMondayOfCurrentWeek(LocalDate start){
        LocalDate monday;
        if(start == null){
            monday = LocalDate.now();
        }
        else{
            monday = start;
        }
        while (monday.getDayOfWeek() != DayOfWeek.MONDAY) {
            monday = monday.minusDays(1);
        }
        return monday;
    }
}
