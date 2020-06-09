package edu.cuit.lm.entity;

import java.util.Date;

public class userSaw {
    private String idUser;
    private String idWeb;
    private Date idDate;
    private String password;
    private String note;

    @Override
    public String toString() {
        return "userSaw{" +
                "idUser='" + idUser + '\'' +
                ", idWeb='" + idWeb + '\'' +
                ", idDate=" + idDate +
                ", password='" + password + '\'' +
                ", note='" + note + '\'' +
                '}';
    }

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }

    public String getIdWeb() {
        return idWeb;
    }

    public void setIdWeb(String idWeb) {
        this.idWeb = idWeb;
    }

    public Date getIdDate() {
        return idDate;
    }

    public void setIdDate(Date idDate) {
        this.idDate = idDate;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
