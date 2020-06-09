package edu.cuit.lm.util;

import edu.cuit.lm.entity.userInf;

public class logInUtil {
    public static boolean check(int id, String pwd){
        JDBCUtil jd = new JDBCUtil();
        userInf userInfById = jd.findUserInfById(id);
        if (userInfById.getpWd().equals(pwd)){
            return true;
        }
        return false;
    }
}
