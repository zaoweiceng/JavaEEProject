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
import java.util.Date;
import java.util.List;

/**
 * Servlet implementation class DeleteUser
 */
@WebServlet({ "/changeAccountName"})
public class changeAccount_user extends HttpServlet {
    private static final long serialVersionUID =1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public changeAccount_user(){
        super();
        // TODO Auto-generated constructor stub
    }
    /**
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取参数,获取新的储存名称
        int id = Integer.parseInt(request.getParameter("id").trim());
        //修改的名称
        String webname = request.getParameter("name");
        String pass = request.getParameter("pass");
        Date idDate;
        idDate = new Date(request.getParameter("idDate"));
        String idUser = request.getParameter("idUser");
        //2.函数，修改函数/修改账户内的名称
        account ac = new account();
        password pa = new password();
        JDBCUtil jd = new JDBCUtil();
        ac.setId(id);
        ac.setIdWeb(webname);
        pa.setIdPwd(id);
        pa.setPassword(pass);
        jd.updatePassword(pa);
        ac.setIdDate(idDate);
        ac.setIdUser(idUser);
        jd.updateAccount(ac);

        //3.跳转
        request.setAttribute("account_id", pa);
        //request.getRequestDispatcher("/showUser3").forward(request, response);
        request.getRequestDispatcher("/findAllUserSaw").forward(request, response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}

