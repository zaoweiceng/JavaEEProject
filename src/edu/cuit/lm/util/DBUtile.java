package edu.cuit.lm.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class  DBUtile {
    private static InputStream in;
    private static SqlSessionFactoryBuilder builder;
    private static SqlSessionFactory factory;
    private static SqlSession sqlSession;

    static  {
        try {
            in =  Resources.getResourceAsStream("mybatisConf.xml");
        } catch (IOException e) {
            e.printStackTrace();
        }
        builder =  new SqlSessionFactoryBuilder();
        factory  = builder.build(in);
        sqlSession = factory.openSession();
    }

    public static void commit(){
        sqlSession.commit();
    }

    public static SqlSession getSqlSession(){return sqlSession;}

    public static void close() throws IOException {
        in.close();
        sqlSession.close();
    }
}
