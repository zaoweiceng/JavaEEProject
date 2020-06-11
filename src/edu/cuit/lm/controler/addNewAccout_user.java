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
        userSaw usersaw = new userSaw();
        password pa = new password();
        usersaw.setId((Integer) request.getSession().getAttribute("account_id"));
        usersaw.setIdWeb(request.getParameter("web"));
        usersaw.setIdUser(request.getParameter("idUser"));
        usersaw.setPassword(request.getParameter("pass"));
        usersaw.setNote(request.getParameter("note"));

        //2.函数，查找函数
        ac.setId(usersaw.getId());
        ac.setIdWeb(usersaw.getIdWeb());
        ac.setIdUser(usersaw.getIdUser());
        pa.setPassword(usersaw.getPassword());
        pa.setNote(usersaw.getNote());
        packUtil pk = new packUtil();
        pk.zip(pa);

        JDBCUtil jd = new JDBCUtil();
        jd.addPassword(pa);
        ac.setIdPwd(pa.getIdPwd());
        jd.addAcount(ac);
        //3.跳转

        request.setAttribute("account_id", ac.getId());
        //request.getRequestDispatcher("/showUser3").forward(request, response);
        request.getRequestDispatcher("/findAllUserSaw").forward(request, response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
