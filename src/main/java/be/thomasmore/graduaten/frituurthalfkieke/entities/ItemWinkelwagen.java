package be.thomasmore.graduaten.frituurthalfkieke.entities;

import java.util.ArrayList;
import java.util.List;

public class ItemWinkelwagen {
    private Artikel artikel;
    private Integer hoeveelheid;

    private List<Artikel> sauzen = new ArrayList<>();
    private String kruiden;
    private String opmerking;

    public String getOpmerking() {
        return opmerking;
    }

    public void setOpmerking(String opmerking) {
        this.opmerking = opmerking;
    }

    public List<Artikel>  Getsauzen() {
        return sauzen;
    }

    public void setSaus(List<Artikel> sauzen) {
        this.sauzen = sauzen;
    }

    public String getKruiden() {
        return kruiden;
    }

    public void setKruiden(String kruiden) {
        this.kruiden = kruiden;
    }

    public Artikel getArtikel() {
        return artikel;
    }

    public void setArtikel(Artikel artikel) {
        this.artikel = artikel;
    }

    public int getHoeveelheid() {
        return hoeveelheid;
    }

    public void setHoeveelheid(int hoeveelheid) {
        this.hoeveelheid = hoeveelheid;
    }

    public ItemWinkelwagen() {
    }

    public ItemWinkelwagen(Artikel artikel, int hoeveelheid, List<Artikel> sauzen, String kruiden, String opmerking) {
        this.artikel = artikel;
        this.hoeveelheid = hoeveelheid;
        this.sauzen = sauzen;
        this.kruiden=kruiden;
        this.opmerking=opmerking;
    }
 public ItemWinkelwagen(Artikel artikel, int hoeveelheid) {
     this.artikel = artikel;
     this.hoeveelheid = hoeveelheid;

 }

    public ItemWinkelwagen(Artikel artikel, int hoeveelheid, String kruiden, String opmerking) {
        this.artikel = artikel;
        this.hoeveelheid = hoeveelheid;

        this.kruiden=kruiden;
        this.opmerking=opmerking;
    }

}
