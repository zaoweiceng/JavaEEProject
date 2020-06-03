package edu.cuit.lm.entity;

import java.util.Date;

public class account {
     /**
      * @Author zaoweiceng
      * @Description //TODO
      * @Date 19:25 2020/6/2
      * 账户信息实体类
      *
      **/
     private Integer id;
     private String idUser;
     private Integer idPwd;
     private String idWeb;
     private Date idDate;

     @Override
     public String toString() {
          return "account{" +
                  "id=" + id +
                  ", idUser='" + idUser + '\'' +
                  ", idPwd=" + idPwd +
                  ", idWeb='" + idWeb + '\'' +
                  ", idDate=" + idDate +
                  '}';
     }

     public Integer getId() {
          return id;
     }

     public void setId(Integer id) {
          this.id = id;
     }

     public String getIdUser() {
          return idUser;
     }

     public void setIdUser(String idUser) {
          this.idUser = idUser;
     }

     public Integer getIdPwd() {
          return idPwd;
     }

     public void setIdPwd(Integer idPwd) {
          this.idPwd = idPwd;
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
}
