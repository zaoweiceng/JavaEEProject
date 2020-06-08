package edu.cuit.lm.util;

import edu.cuit.lm.dao.accountDao;
import edu.cuit.lm.entity.account;
import edu.cuit.lm.entity.password;
import edu.cuit.lm.entity.userInf;
import edu.cuit.lm.entity.userPri;

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
    public void delUser(int id){
        daoImp.getAccount().delAccountById(id);
        daoImp.getPassword().delPwdById(id);
    }

    public account updateAccount(account a){
        daoImp.getAccount().updateById(a);
        return a;
    }

    public password updatePassword(password pwd){
        daoImp.getPassword().updateById(pwd);
        return pwd;
    }

    public userInf updateUserInf(userInf User){
        daoImp.getUserInf().updateUser(User);
        return User;
    }

    public userPri updateUserPri(userPri User){
        daoImp.getUserPri().updateUser(User);
        return User;
    }

}
