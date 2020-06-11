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
@WebServlet({ "/deleteUser_manage"})
public class deleteUser_manage extends HttpServlet {
    private static final long serialVersionUID =1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteUser_manage(){
        super();
        // TODO Auto-generated constructor stub
    }
    /**
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        //1.接受参数
        request.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(request.getParameter("id").trim());
        //2.删除User
        JDBCUtil jd = new JDBCUtil();
        jd.delUser(id);
        //3.跳转
        //request.getRequestDispatcher("/showUser3").forward(request, response);
        request.getRequestDispatcher("/findAll").forward(request, response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
