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
@WebServlet({ "/addNewAccount"})
public class addNewAccout_user extends HttpServlet {
    private static final long serialVersionUID =1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public addNewAccout_user(){
        super();
        // TODO Auto-generated constructor stub
    }
    /**
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取参数
        account ac = new account();
        password pa = new password();
        ac.setId(Integer.parseInt(request.getParameter("id").trim()));
        ac.setIdUser(request.getParameter("idUser"));
        pa.setIdPwd(ac.getId());
        pa.setPassword(request.getParameter("pass"));
        ac.setIdWeb(request.getParameter("web"));
        ac.setIdDate(new Date(request.getParameter("Date")));
        //2.函数，查找函数
        JDBCUtil jd = new JDBCUtil();
        jd.addAcount(ac);
        jd.addPassword(pa);
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
