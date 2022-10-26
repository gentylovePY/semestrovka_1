package com.giniyatov.net.model;

public class BuyTicket {

    private String username,bus, startCity, endCity;

    public BuyTicket(String username, String bus, String startCity, String endCity) {
        this.username = username;
        this.bus = bus;
        this.startCity = startCity;
        this.endCity = endCity;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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
    public String getBus() {
        return bus;
    }

    public void setBus(String bus) {
        this.bus = bus;
    }
}
