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
@WebServlet({ "/addNewAccount"})
public class addNewAccout extends HttpServlet {
    private static final long serialVersionUID =1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public addNewAccout(){
        super();
        // TODO Auto-generated constructor stub
    }
    /**
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取参数
        account ac = new account();
        ac.setId(Integer.parseInt(request.getParameter("id").trim()));
        ac.setIdUser(request.getParameter("idUser"));
        ac.setIdPwd(request.getIntHeader("pass"));
        ac.setIdWeb(request.getParameter("web"));
        ac.setIdDate(new Date(request.getParameter("Date")));
        //2.函数，查找函数
        JDBCUtil jd = new JDBCUtil();
        jd.addAcount(ac);
        List<account> list = jd.findAccountById(ac.getId());
        //3.跳转

        request.setAttribute("findIdUserByName_manage_get", list);
        //request.getRequestDispatcher("/showUser3").forward(request, response);
        request.getRequestDispatcher("/admin.jsp").forward(request, response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
