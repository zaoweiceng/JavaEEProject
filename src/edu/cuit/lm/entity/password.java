package edu.cuit.lm.entity;

public class password {
     /**
      * @Author zaoweiceng
      * @Description //TODO
      * @Date 19:26 2020/6/2
      * 密码信息实体类
      *
      **/
     private String account;
     private String password;
     private Double check;
     private String note;
     private Integer safty;

     @Override
     public String toString() {
          return "password{" +
                  "account='" + account + '\'' +
                  ", password='" + password + '\'' +
                  ", check=" + check +
                  ", note='" + note + '\'' +
                  ", safty=" + safty +
                  '}';
     }

     public String getAccount() {
          return account;
     }

     public void setAccount(String account) {
          this.account = account;
     }

     public String getPassword() {
          return password;
     }

     public void setPassword(String password) {
          this.password = password;
     }

     public Double getCheck() {
          return check;
     }

     public void setCheck(Double check) {
          this.check = check;
     }

     public String getNote() {
          return note;
     }

     public void setNote(String note) {
          this.note = note;
     }

     public Integer getSafty() {
          return safty;
     }

     public void setSafty(Integer safty) {
          this.safty = safty;
     }
}
