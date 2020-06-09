package edu.cuit.lm.controler;

import edu.cuit.lm.dao.accountDao;
import edu.cuit.lm.dao.passwordDao;
import edu.cuit.lm.dao.userInfDao;
import edu.cuit.lm.dao.userPriDao;
import edu.cuit.lm.entity.account;
import edu.cuit.lm.entity.password;
import edu.cuit.lm.entity.userInf;
import edu.cuit.lm.entity.userPri;
import edu.cuit.lm.util.JDBCUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class DeleteUser
 */
//@WebServlet({ "/DeleteUser", "/delete.do" })
public class deleteUser extends HttpServlet {
    private static final long serialVersionUID =1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteUser(){
        super();
        // TODO Auto-generated constructor stub
    }
    /**
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        //1.接受参数
        int id = Integer.parseInt(request.getParameter("id"));
        JDBCUtil jd = new JDBCUtil();
        jd.delUser(id);
        //2.调用参数
//        accountDao accountdao = new accountDao() {
//            @Override
//            public void insertInto(account a) {
//
//            }
//
////            @Override
////            public account findAccountById(int id) {
////                return null;
////            }
//
//            @Override
//            public List<account> findAll() {
//                return null;
//            }
//
//            @Override
//            public void delAccountById(int id) {
//
//            }
//
//            @Override
//            public void updateById(account a) {
//
//            }
//        };
//        accountdao.delAccountById(id);
//        passwordDao passworddao = new passwordDao() {
//            @Override
//            public Integer insertInto(password pwd) {
//                return null;
//            }
//
//            @Override
//            public List<password> findAll() {
//                return null;
//            }
//
//            @Override
//            public password findPwdById(int id) {
//                return null;
//            }
//
//            @Override
//            public void delPwdById(int id) {
//
//            }
//
//            @Override
//            public void updateById(password pwd) {
//
//            }
//        };
//        passworddao.delPwdById(id);
//        userInfDao userinfdao = new userInfDao() {
//            @Override
//            public userInf findUserById(int id) {
//                return null;
//            }
//
//            @Override
//            public void insertInto(userInf user) {
//
//            }
//
//            @Override
//            public void delUserById(int id) {
//
//            }
//
//            @Override
//            public void updateUser(userInf user) {
//
//            }
//        };
//        userinfdao.delUserById(id);
//        userPriDao userpridao = new userPriDao() {
//            @Override
//            public userPri findUserById(int id) {
//                return null;
//            }
//
//            @Override
//            public void insertInto(userPri user) {
//
//            }
//
//            @Override
//            public void delUserById(int id) {
//
//            }
//
//            @Override
//            public void updateUser(userPri user) {
//
//            }
//        };
//        userpridao.delUserById(id);
        //3.跳转
        //request.getRequestDispatcher("/showUser3").forward(request, response);
        response.sendRedirect("showUser");

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
