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
@WebServlet({ "/changeUserPassword_manage"})
public class changeUserPassword_manage extends HttpServlet {
    private static final long serialVersionUID =1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public changeUserPassword_manage(){
        super();
        // TODO Auto-generated constructor stub
    }
    /**
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取参数
        int id = Integer.parseInt(request.getParameter("id"));
        //获取新密码
        String pass = request.getParameter("pass");
        //2.函数，修改函数/修改idUser
        JDBCUtil jd = new JDBCUtil();
        userInf user = new userInf();
        user.setIdUser(id);
        user.setpWd(pass);
        jd.updateUserInf(user);
        List<userInf> list_changeUserPassword_manage = jd.findUserAll();


        //3.跳转
        request.setAttribute("list_changeUserPassword_manage", list_changeUserPassword_manage);
        //request.getRequestDispatcher("/showUser3").forward(request, response);
        response.sendRedirect("/admin.jsp");

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}

