package com.giniyatov.net.model;

public class RaspisanieModel {
    private  String bus;
    private String startCity;
    private  String endCity;

    private String date;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public RaspisanieModel(String bus, String startCity, String endCity, String date) {
        this.bus = bus;
        this.startCity = startCity;
        this.endCity = endCity;
        this.date = date;
    }

    public String getBus() {
        return bus;
    }

    public void setBus(String bus) {
        this.bus = bus;
    }

    public String getStartCity() {
        return startCity;
    }

    public void setStartCity(String startCity) {
        this.startCity = startCity;
    }

    public String getEndCity() {
        return endCity;
    }

    public void setEndCity(String endCity) {
        this.endCity = endCity;
    }
}
