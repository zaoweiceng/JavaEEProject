package edu.cuit.lm.util;

import edu.cuit.lm.entity.account;
import edu.cuit.lm.entity.password;
import edu.cuit.lm.entity.userInf;
import edu.cuit.lm.entity.userSaw;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

public class packUtil {
    private userSaw us;
    public userSaw findUser(int id, String web){
        JDBCUtil jd = new JDBCUtil();
        us = new userSaw();
        account ac = jd.findAccountByWebAndId(id, web);
        password passwordById = jd.findPasswordById(ac.getIdPwd());
        us.setIdDate(ac.getIdDate());
        us.setIdUser(ac.getIdUser());
        us.setIdWeb(ac.getIdWeb());
        us.setNote(passwordById.getPassword());
        us.setPassword(passwordById.getPassword());
        return us;
    }

    public List<userSaw> finUserSawAllById(int id){
        JDBCUtil jd = new JDBCUtil();
        List<userSaw> list = new ArrayList<>();
        List<account> accountById = jd.findAccountById(id);
        for (account a : accountById) {
            userSaw us = new userSaw();
            password passwordById = jd.findPasswordById(a.getIdPwd());
            unzip(passwordById);
            us.setPassword(passwordById.getPassword());
            us.setNote(passwordById.getNote());
            us.setIdWeb(a.getIdWeb());
            us.setIdUser(a.getIdUser());
            us.setIdDate(a.getIdDate());
            list.add(us);
        }
        return list;
    }

    @Test
    public void zp(){
        List<password> all = daoImp.getPassword().findAll();
        for (password p : all) {
            zip(p);
            daoImp.getPassword().updateById(p);
        }
        DBUtil.commit();
    }

    @Test
    public void up(){
        List<password> all = daoImp.getPassword().findAll();
        for (password p : all) {
            unzip(p);
            System.out.println(p);
        }
    }

    public void zip(password pwd){
        double random = Math.random();
        random *= 10;
        int n = (int)random;
        pwd.setPwdCheck((double)n);
        String password = pwd.getPassword();
        String p1 = "";
        char[] chars = password.toCharArray();
        int flag = 0;
        for (char aChar : chars) {
            if (flag == 0){
                aChar = (char) ((int)aChar - n);
                flag = 1;
            }else {
                aChar = (char) ((int)aChar + n);
                flag = 0;
            }

            p1 += aChar;
        }
        pwd.setPassword(p1);
    }

    @Test
    public void test(){
        List<password> all = daoImp.getPassword().findAll();
        for (password p : all) {
            System.out.println(p);
            zip(p);
            System.out.println(p);
            unzip(p);
            System.out.println(p);
        }

    }
    public void unzip(password pwd){
        String password = pwd.getPassword();
        String p1 = "";
        double pwdCheck = pwd.getPwdCheck();
        int n = (int)pwdCheck;
        char[] chars = password.toCharArray();
        int flag = 0;
        for (char aChar : chars) {
            if (flag == 0){
                aChar = (char) ((int)aChar + n);
                flag = 1;
            }else {
                aChar = (char) ((int)aChar - n);
                flag = 0;
            }

            p1 += aChar;
        }
        pwd.setPassword(p1);
    }


}
