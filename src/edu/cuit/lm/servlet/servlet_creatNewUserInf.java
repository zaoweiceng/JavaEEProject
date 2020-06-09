package edu.cuit.lm.servlet;

import edu.cuit.lm.entity.userInf;
import edu.cuit.lm.util.JDBCUtile;

import java.io.IOException;

public class servlet_creatNewUserInf {
    JDBCUtile jdbc = new JDBCUtile();
    public int creatUser(userInf vo) throws IOException {
        boolean result = jdbc.addUser(vo);
        if(result == true){
            return 1;
        }else {
            return  0;
        }
    }
}