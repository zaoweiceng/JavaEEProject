package edu.cuit.lm.entity;

import java.util.Date;

public class userInf {
     /**
      * @Author zaoweiceng
      * @Description //TODO
      * @Date 19:26 2020/6/2
      * 用户信息实体类
      *
      **/
    private Integer idUser;
    private String realname;
    private String sex;
    private Date birthday;
    private String tel;
    private String email;
    private String pWd;
    private String date;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "userInf{" +
                "idUser=" + idUser +
                ", realname='" + realname + '\'' +
                ", sex='" + sex + '\'' +
                ", birthday=" + birthday +
                ", tel='" + tel + '\'' +
                ", email='" + email + '\'' +
                ", pWd='" + pWd + '\'' +
                '}';
    }

    public Integer getIdUser() {
        return idUser;
    }

    public void setIdUser(Integer idUser) {
        this.idUser = idUser;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getpWd() {
        return pWd;
    }

    public void setpWd(String pWd) {
        this.pWd = pWd;
    }
}
