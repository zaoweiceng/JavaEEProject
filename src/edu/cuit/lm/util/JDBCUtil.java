package edu.cuit.lm.util;

import edu.cuit.lm.entity.account;
import edu.cuit.lm.entity.password;
import edu.cuit.lm.entity.userInf;
import edu.cuit.lm.entity.userPri;
import org.junit.Test;

import java.io.IOException;
import java.util.List;

public class JDBCUtil {
    public void close() throws IOException {
        DBUtil.commit();
    }

    public boolean addAcount(account a) throws IOException {
        if (a != null){
            daoImp.getAccount().insertInto(a);
            close();
            return true;
        }
        return false;
    }

    public void addPassword(password pwd){
        daoImp.getPassword().insertInto(pwd);
        DBUtil.commit();
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
        daoImp.getUserPri().delUserById(id);
        daoImp.getUserInf().delUserById(id);
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

    public List<userInf> findUserByName(String name){
        String n = "%" + name + "%";
        List<userInf> userByName = daoImp.getUserInf().findUserByName(n);
        return userByName;
    }

    public List<account> findAccountByName(String name){
        String n = "%" + name + "%";
        List<account> accountByWeb = daoImp.getAccount().findAccountByWeb(n);
        return accountByWeb;
    }

    public List<account> findAccountById(int id){
        return  daoImp.getAccount().findAccountById(id);
    }

    public password findPasswordById(int id){
        return daoImp.getPassword().findPwdById(id);
    }

    public userPri findUserPriById(int id){
        return daoImp.getUserPri().findUserById(id);
    }

    public userInf findUserInfById(int id){
        return daoImp.getUserInf().findUserById(id);
    }

    public account findAccountByWebAndId(int id, String web){
        account a = new account();
        a.setId(id);
        a.setIdWeb(web);
        return daoImp.getAccount().findAccountByWebAndId(a);
    }

    public List<userInf> findUserAll(){
        List<userInf> all = daoImp.getUserInf().findAll();
        for (userInf user : all) {
            user.setpWd(null);
        }
        return all;
    }
}
