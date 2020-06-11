package edu.cuit.lm.controler;

import edu.cuit.lm.dao.accountDao;
import edu.cuit.lm.dao.passwordDao;
import edu.cuit.lm.dao.userInfDao;
import edu.cuit.lm.dao.userPriDao;
import edu.cuit.lm.entity.*;
import edu.cuit.lm.util.JDBCUtil;
import edu.cuit.lm.util.packUtil;
import org.apache.ibatis.jdbc.Null;

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
@WebServlet({ "/changeAccountName_user"})
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
        request.setCharacterEncoding("UTF-8");
        int id = (Integer) request.getSession().getAttribute("account_id");

        String web = request.getParameter("idWeb");
        String idUser = request.getParameter("idUser");
        String note = request.getParameter("note");

        //修改的名称
        //2.函数，修改函数/修改账户内的名称
        JDBCUtil jd = new JDBCUtil();
        account ac = jd.findAccountByWebAndId(id, web);
        //System.out.println(ac);

        ac.setIdUser(idUser);
        password pa = jd.findPasswordById(ac.getIdPwd());
        pa.setNote(note);
        jd.updatePassword(pa);
        //跳转
        request.setAttribute("account_id", id);
        //request.getRequestDispatcher("/showUser3").forward(request, response);
        request.getRequestDispatcher("/findAllUserSaw").forward(request, response);



    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}

