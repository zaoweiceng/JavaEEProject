package edu.cuit.lm.entity;

public class userPri {
     /**
      * @Author zaoweiceng
      * @Description //TODO
      * @Date 19:26 2020/6/2
      * 用户权限实体类
      *
      **/
     private String account;
     private String priTy;
     private String priLv;

    @Override
    public String toString() {
        return "userPri{" +
                "account='" + account + '\'' +
                ", priTy='" + priTy + '\'' +
                ", priLv='" + priLv + '\'' +
                '}';
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPriTy() {
        return priTy;
    }

    public void setPriTy(String priTy) {
        this.priTy = priTy;
    }

    public String getPriLv() {
        return priLv;
    }

    public void setPriLv(String priLv) {
        this.priLv = priLv;
    }
}
