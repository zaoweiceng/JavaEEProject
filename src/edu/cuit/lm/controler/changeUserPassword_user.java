package edu.cuit.lm.controler;

import edu.cuit.lm.dao.accountDao;
import edu.cuit.lm.dao.passwordDao;
import edu.cuit.lm.dao.userInfDao;
import edu.cuit.lm.dao.userPriDao;
import edu.cuit.lm.entity.*;
import edu.cuit.lm.util.JDBCUtil;
import edu.cuit.lm.util.packUtil;

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
@WebServlet({ "/changeUserPassword"})
public class changeUserPassword_user extends HttpServlet {
    private static final long serialVersionUID =1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public changeUserPassword_user(){
        super();
        // TODO Auto-generated constructor stub
    }
    /**
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取参数
        int id = Integer.parseInt(request.getParameter("id").trim());
        //获取新密码
        String pass = request.getParameter("pass");
        //2.函数，修改函数/修改idUser
        JDBCUtil jd = new JDBCUtil();
        userInf user = new userInf();
        user.setIdUser(id);
        user.setpWd(pass);
        jd.updateUserInf(user);
        password pa = new password();


        //3.跳转
        request.setAttribute("account_id", id);
        //request.getRequestDispatcher("/showUser3").forward(request, response);
        request.getRequestDispatcher("/findAllUserSaw").forward(request, response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}

