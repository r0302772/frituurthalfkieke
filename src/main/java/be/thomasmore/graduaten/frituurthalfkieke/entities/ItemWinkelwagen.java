package be.thomasmore.graduaten.frituurthalfkieke.entities;

import java.util.List;

public class ItemWinkelwagen {
    private Artikel artikel;
    private int hoeveelheid;

    private Artikel saus;
    private String kruiden;
private String opmerking;

    public String getOpmerking() {
        return opmerking;
    }

    public void setOpmerking(String opmerking) {
        this.opmerking = opmerking;
    }

    public Artikel getSaus() {
        return saus;
    }

    public void setSaus(Artikel saus) {
        this.saus = saus;
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

 /*   public ItemWinkelwagen(Artikel artikel, int hoeveelheid, Artikel saus, String kruiden, String opmerking) {
        this.artikel = artikel;
        this.hoeveelheid = hoeveelheid;
        this.saus = saus;
        this.kruiden=kruiden;
        this.opmerking=opmerking;
    }*/

    public ItemWinkelwagen(Artikel artikel, int hoeveelheid) {
        this.artikel = artikel;
        this.hoeveelheid = hoeveelheid;

    }
}
