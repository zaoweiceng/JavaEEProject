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
import java.util.Date;
import java.util.List;

/**
 * Servlet implementation class DeleteUser
 */
@WebServlet({ "/changeAccountName"})
public class changeAccount extends HttpServlet {
    private static final long serialVersionUID =1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public changeAccount(){
        super();
        // TODO Auto-generated constructor stub
    }
    /**
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取参数,获取新的储存名称
        int id = Integer.parseInt(request.getParameter("id"));
        //修改的名称
        String webname = request.getParameter("name");
        int pwd = Integer.parseInt(request.getParameter("pass"));
        Date idDate;
        idDate = new Date(request.getParameter("idDate"));
        String idUser = request.getParameter("idUser");
        //2.函数，修改函数/修改账户内的名称
        account ac = new account();
        JDBCUtil jd = new JDBCUtil();
        ac.setId(id);
        ac.setIdWeb(webname);
        ac.setIdPwd(pwd);
        ac.setIdDate(idDate);
        ac.setIdUser(idUser);
        jd.updateAccount(ac);
        //3.跳转
        //request.getRequestDispatcher("/showUser3").forward(request, response);
        response.sendRedirect("showUser");

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}

