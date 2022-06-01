package be.thomasmore.graduaten.frituurthalfkieke.entities;

import java.util.List;

public class ItemWinkelwagen {
    private Artikel artikel;
    private int hoeveelheid;

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

    public ItemWinkelwagen(Artikel artikel, int hoeveelheid) {
        this.artikel = artikel;
        this.hoeveelheid = hoeveelheid;
    }
}
