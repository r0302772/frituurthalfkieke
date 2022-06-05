package be.thomasmore.graduaten.frituurthalfkieke.helpers;

import be.thomasmore.graduaten.frituurthalfkieke.entities.Tijdslot;
import be.thomasmore.graduaten.frituurthalfkieke.repositories.TijdslotRepository;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.sql.Date;
import java.time.LocalDate;

@Component
public class schedulejob {
    private TijdslotRepository tijdslotRepository;

    public schedulejob(TijdslotRepository tijdslotRepository) {
        this.tijdslotRepository = tijdslotRepository;
    }

    @Scheduled(cron = "59 23 * * 0")
    public void scheduledCreation(){

        for(int i=0; i<7; i++){
            Tijdslot tijdslot = new Tijdslot();
            tijdslot.setDatum(Date.valueOf(LocalDate.now().plusDays(i)));
//            tijdslot.setStartuur();

            tijdslotRepository.save(tijdslot);

        }
    }

}
