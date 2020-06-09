package edu.cuit.lm.util;

import edu.cuit.lm.entity.account;
import edu.cuit.lm.entity.password;
import edu.cuit.lm.entity.userInf;
import edu.cuit.lm.entity.userPri;
import org.junit.Test;

import java.io.IOException;
import java.util.List;

public class JDBCUtile {
    public void close() throws IOException {
        DBUtile.commit();
        DBUtile.close();
    }

    public boolean addAcount(account a) throws IOException {
        if (a != null){
            daoImp.getAccount().insertInto(a);
            close();
            return true;
        }
        return false;
    }

    public boolean addUser(userInf user) throws IOException {
        if (user != null){
            daoImp.getUserInf().insertInto(user);
            close();
            return true;
        }
        return false;
    }
    public void delUser(int id) throws IOException {
        List<account> accountById = daoImp.getAccount().findAccountById(id);
        for (account a : accountById) {
            daoImp.getPassword().delPwdById(a.getIdPwd());
            daoImp.getAccount().delAccountById(a.getId());
        }
        close();
    }
    public void delAccount(int id) throws IOException {
        List<account> accountById = daoImp.getAccount().findAccountById(id);
        for (account a : accountById) {
            daoImp.getPassword().delPwdById(a.getIdPwd());
            daoImp.getAccount().delAccountById(a.getId());
        }
        daoImp.getUserPri().delUserById(id);
        daoImp.getUserInf().delUserById(id);
        close();
    }

    public account updateAccount(account a) throws IOException {
        daoImp.getAccount().updateById(a);
        close();
        return a;
    }

    public password updatePassword(password pwd) throws IOException {
        daoImp.getPassword().updateById(pwd);
        close();
        return pwd;
    }

    public userInf updateUserInf(userInf User) throws IOException {
        daoImp.getUserInf().updateUser(User);
        close();
        return User;
    }

    public userPri updateUserPri(userPri User) throws IOException {
        daoImp.getUserPri().updateUser(User);
        close();
        return User;
    }

}
