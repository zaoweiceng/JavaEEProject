package test;


import edu.cuit.lm.dao.accountDao;
import edu.cuit.lm.dao.passwordDao;
import edu.cuit.lm.dao.userInfDao;
import edu.cuit.lm.dao.userPriDao;
import edu.cuit.lm.entity.account;
import edu.cuit.lm.entity.password;
import edu.cuit.lm.entity.userInf;
import edu.cuit.lm.entity.userPri;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

public class daoTest {
    private static InputStream in;
    private static SqlSessionFactoryBuilder builder;
    private static SqlSessionFactory factory;
    private static SqlSession sqlSession;

    @Before
    public static void init() throws IOException {
        in =  Resources.getResourceAsStream("mybatisConf.xml");
        builder =  new SqlSessionFactoryBuilder();
        factory  = builder.build(in);
        sqlSession = factory.openSession();
    }


    public static void main(String[] args) throws IOException {
        in =  Resources.getResourceAsStream("mybatisConf.xml");
        builder =  new SqlSessionFactoryBuilder();
        factory  = builder.build(in);
        sqlSession = factory.openSession();
        accountDao mapper = sqlSession.getMapper(accountDao.class);
        List<account> all = mapper.findAll();
        for (account account : all) {
            System.out.println(account);
        }
    }

    @Test
    public void test(){
        accountDao mapper = sqlSession.getMapper(accountDao.class);
        List<account> all = mapper.findAll();
        for (account account : all) {
            System.out.println(account);
        }
    }

    @Test
    public void test0(){
        passwordDao mapper = sqlSession.getMapper(passwordDao.class);
        List<password> all = mapper.findAll();
        for (password password : all) {
            System.out.println(password);
        }
    }

    @Test
    public void test1(){
        passwordDao mapper = sqlSession.getMapper(passwordDao.class);
        password pwd = new password();
        pwd.setPwdCheck(1.0);
        pwd.setPassword("asasas");
        pwd.setNote("aaaa");
        pwd.setSafety(1);

        Integer i = 0;
        i = mapper.insertInto(pwd);
        System.out.println(pwd);
        System.out.println(i);
        sqlSession.commit();
    }

    @Test
    public void test2(){
        passwordDao mapper = sqlSession.getMapper(passwordDao.class);
        password p = mapper.findPwdById(46);
        System.out.println(p);
        p.setPassword("changed");
        mapper.updateById(p);
        //mapper.delPasswordById(45);
        sqlSession.commit();
    }

    @Test
    public void test3(){
        accountDao mapper = sqlSession.getMapper(accountDao.class);
        account a = new account();
        a.setId(1001001);
        a.setIdDate(new Date());
        a.setIdPwd(46);
        a.setIdWeb("aaa");
        a.setIdUser("asd");
        mapper.insertInto(a);
        //account accountById = mapper.findAccountById(1001001);
        //System.out.println(accountById);
        sqlSession.commit();
    }

    @Test
    public void test4(){
        accountDao mapper = sqlSession.getMapper(accountDao.class);
        account a = new account();
        a.setId(1001001);
        a.setIdDate(new Date());
        a.setIdPwd(1);
        a.setIdWeb("00101010");
        a.setIdUser("asd");
        mapper.updateById(a);
        sqlSession.commit();

    }

    @Test
    public void test5(){
        userInfDao mapper = sqlSession.getMapper(userInfDao.class);
        userInf userById = mapper.findUserById(123434);
        System.out.println(userById);
    }

    @Test
    public void test6(){
        userInfDao mapper = sqlSession.getMapper(userInfDao.class);
        userInf u = mapper.findUserById(123434);
        u.setIdUser(0);
        u.setRealname("aaaaaaa");
        mapper.insertInto(u);
        System.out.println(u);
        sqlSession.commit();
    }

    @Test
    public void test7(){
        userInfDao mapper = sqlSession.getMapper(userInfDao.class);
        mapper.delUserById(123443);
        sqlSession.commit();
    }

    @Test
    public void test8(){
        userInfDao mapper = sqlSession.getMapper(userInfDao.class);
        userInf u = mapper.findUserById(123434);
        u.setRealname("aaaaa");
        mapper.updateUser(u);
        sqlSession.commit();
    }

    @Test
    public void test9(){
        userPriDao mapper = sqlSession.getMapper(userPriDao.class);
        userPri user = mapper.findUserById(123444);
        user.setPriTy("abc");
//        mapper.insertInto(user);
        user.setId(123444);
        user.setPriLv(200);
        mapper.updateUser(user);
        System.out.println(user);
        sqlSession.commit();
    }

    @Test
    public void test10(){
        userPriDao mapper = sqlSession.getMapper(userPriDao.class);
        mapper.delUserById(123444);
        sqlSession.commit();
    }

    @Test
    public void test11(){
        userPriDao mapper = sqlSession.getMapper(userPriDao.class);
        userPri userById = mapper.findUserById(123434);
        System.out.println(userById);
    }



}
