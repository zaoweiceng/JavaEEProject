package edu.cuit.lm.entity;

public class password {
     /**
      * @Author zaoweiceng
      * @Description //TODO
      * @Date 19:26 2020/6/2
      * 密码信息实体类
      *
      **/
     private Integer idPwd;
     private String password;
     private Double pwdCheck;
     private String note;
     private Integer safety;

     @Override
     public String toString() {
          return "password{" +
                  "idPwd=" + idPwd +
                  ", password='" + password + '\'' +
                  ", pwdCheck=" + pwdCheck +
                  ", note='" + note + '\'' +
                  ", safety=" + safety +
                  '}';
     }

     public Integer getIdPwd() {
          return idPwd;
     }

     public void setIdPwd(Integer idPwd) {
          this.idPwd = idPwd;
     }

     public String getPassword() {
          return password;
     }

     public void setPassword(String password) {
          this.password = password;
     }

     public Double getPwdCheck() {
          return pwdCheck;
     }

     public void setPwdCheck(Double pwdCheck) {
          this.pwdCheck = pwdCheck;
     }

     public String getNote() {
          return note;
     }

     public void setNote(String note) {
          this.note = note;
     }

     public Integer getSafety() {
          return safety;
     }

     public void setSafety(Integer safety) {
          this.safety = safety;
     }
}
