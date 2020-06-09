package edu.cuit.lm.util;

import edu.cuit.lm.dao.accountDao;
import edu.cuit.lm.dao.passwordDao;
import edu.cuit.lm.dao.userInfDao;
import edu.cuit.lm.dao.userPriDao;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

public class daoImp {
    private static SqlSession sqlSession;
    static {
        sqlSession = DBUtile.getSqlSession();
    }
    public static accountDao getAccount(){
        return sqlSession.getMapper(accountDao.class);
    }
    public static passwordDao getPassword(){
        return sqlSession.getMapper(passwordDao.class);
    }
    public static userInfDao getUserInf(){
        return  sqlSession.getMapper(userInfDao.class);
    }
    public static userPriDao getUserPri(){
        return sqlSession.getMapper(userPriDao.class);
    }

    @Test
    public void test(){
        getAccount();
    }

}
