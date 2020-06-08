package edu.cuit.lm.util;

import edu.cuit.lm.dao.accountDao;
import edu.cuit.lm.entity.account;
import edu.cuit.lm.entity.userInf;

import java.io.IOException;

public class JDBCUtile {
    public boolean addAcount(account a) throws IOException {
        if (a != null){
            daoImp.getAccount().insertInto(a);
            return true;
        }
        return false;
    }

    public boolean addUser(userInf user){
        if (user != null){
            daoImp.getUserInf().insertInto(user);
            return true;
        }
        return false;
    }



}
