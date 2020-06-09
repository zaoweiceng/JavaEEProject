package edu.cuit.lm.util;

import edu.cuit.lm.entity.account;
import edu.cuit.lm.entity.password;
import edu.cuit.lm.entity.userInf;
import edu.cuit.lm.entity.userSaw;

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

    public void zip(password pwd){
        double random = Math.random();
        pwd.setPwdCheck(random);
        String password = pwd.getPassword();
        String p1 = "";
        int n = (int)random;
        char[] chars = password.toCharArray();
        for (char aChar : chars) {
            aChar = (char) ((int)aChar + n);
            p1 += aChar;
        }
    }

    public void unzip(){

    }


}
