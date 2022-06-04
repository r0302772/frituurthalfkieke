package be.thomasmore.graduaten.frituurthalfkieke.entities;

import java.util.ArrayList;
import java.util.List;

public class ItemWinkelwagen {
    private Artikel artikel;
    private Integer aantal;
    private List<Artikel> sauzen = new ArrayList<>();
    private String kruiden;
    private String opmerking;

    //<editor-fold desc="Constructors">
    public ItemWinkelwagen() {
    }

    public ItemWinkelwagen(Artikel artikel, Integer aantal, List<Artikel> sauzen, String kruiden, String opmerking) {
        this.artikel = artikel;
        this.aantal = aantal;
        this.sauzen = sauzen;
        this.kruiden = kruiden;
        this.opmerking = opmerking;
    }

    public ItemWinkelwagen(Artikel artikel, Integer aantal) {
        this.artikel = artikel;
        this.aantal = aantal;
    }

    public ItemWinkelwagen(Artikel artikel, Integer aantal, String kruiden, String opmerking) {
        this.artikel = artikel;
        this.aantal = aantal;
        this.kruiden = kruiden;
        this.opmerking = opmerking;
    }

    //</editor-fold>

    //<editor-fold desc="Getters en Setters">
    public String getOpmerking() {
        return opmerking;
    }

    public void setOpmerking(String opmerking) {
        this.opmerking = opmerking;
    }

    public List<Artikel> Getsauzen() {
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

    public int getAantal() {
        return aantal;
    }

    public void setAantal(Integer aantal) {
        this.aantal = aantal;
    }

    //</editor-fold>
}
