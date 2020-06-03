package edu.cuit.lm.entity;

public class userPri {
     /**
      * @Author zaoweiceng
      * @Description //TODO
      * @Date 19:26 2020/6/2
      * 用户权限实体类
      *
      **/
     private Integer id;
     private String priTy;
     private Integer priLv;

    @Override
    public String toString() {
        return "userPri{" +
                "id=" + id +
                ", priTy='" + priTy + '\'' +
                ", priLv=" + priLv +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPriTy() {
        return priTy;
    }

    public void setPriTy(String priTy) {
        this.priTy = priTy;
    }

    public Integer getPriLv() {
        return priLv;
    }

    public void setPriLv(Integer priLv) {
        this.priLv = priLv;
    }
}
