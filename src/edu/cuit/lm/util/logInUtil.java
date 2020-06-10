package edu.cuit.lm.util;

import edu.cuit.lm.entity.userInf;

public class logInUtil {
    public static int check(int id, String pwd){
        JDBCUtil jd = new JDBCUtil();
        userInf userInfById = jd.findUserInfById(id);
        if (userInfById == null){
            return -1;
        }
        if (userInfById.getpWd().equals(pwd)){
            Integer priLv = daoImp.getUserPri().findUserById(userInfById.getIdUser()).getPriLv();
            return priLv;
        }
        return -1;
    }
}
