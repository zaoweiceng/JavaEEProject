package edu.cuit.lm.controler;


import edu.cuit.lm.entity.account;
import edu.cuit.lm.util.JDBCUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
/*
        * Servlet implementation class DeleteUser
 */
@WebServlet({ "/deleteAcount"})
public class deleteAccount extends HttpServlet {
    private static final long serialVersionUID =1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteAccount(){
        super();
        // TODO Auto-generated constructor stub
    }
    /**
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        //1.接受参数
        int id = Integer.parseInt(request.getParameter("id").trim());
        String web = request.getParameter("pwd");
        JDBCUtil jd = new JDBCUtil();
        //删除一条消息；

        //jd.delAccount(id);
        account ac = new account();
        ac.setId(id);
        ac.setIdWeb(web);
        jd.delAccountByIdAndByWeb(ac);
        //3.跳转
        request.setAttribute("account_id", ac);
        //request.getRequestDispatcher("/showUser3").forward(request, response);
        request.getRequestDispatcher("/finAllUserSaw").forward(request, response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}