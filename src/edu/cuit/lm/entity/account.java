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
     private String username;
     private String account;
     private Integer accountLen;
     private Date date;
     private String web;

     @Override
     public String toString() {
          return "account{" +
                  "username='" + username + '\'' +
                  ", account='" + account + '\'' +
                  ", accountLen=" + accountLen +
                  ", date=" + date +
                  ", web='" + web + '\'' +
                  '}';
     }

     public String getUsername() {
          return username;
     }

     public void setUsername(String username) {
          this.username = username;
     }

     public String getAccount() {
          return account;
     }

     public void setAccount(String account) {
          this.account = account;
     }

     public Integer getAccountLen() {
          return accountLen;
     }

     public void setAccountLen(Integer accountLen) {
          this.accountLen = accountLen;
     }

     public Date getDate() {
          return date;
     }

     public void setDate(Date date) {
          this.date = date;
     }

     public String getWeb() {
          return web;
     }

     public void setWeb(String web) {
          this.web = web;
     }
}
