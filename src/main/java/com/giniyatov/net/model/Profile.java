package com.giniyatov.net.model;

public class Profile {
   private String user ;
    private String email ;
    private String phone ;
    private String city ;
    private String fName ;
    private String lName ;
    private Boolean gender ;
    private String birthday ;

    public Profile(String user, String email, String phone, String city, String fName, String lName, Boolean gender, String birthday) {
        this.user = user;
        this.email = email;
        this.phone = phone;
        this.city = city;
        this.fName = fName;
        this.lName = lName;
        this.gender = gender;
        this.birthday = birthday;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }
}
