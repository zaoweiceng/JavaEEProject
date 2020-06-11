package edu.cuit.lm.controler;


import edu.cuit.lm.entity.account;
import edu.cuit.lm.entity.password;
import edu.cuit.lm.util.JDBCUtil;
import edu.cuit.lm.util.daoImp;

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
        request.setCharacterEncoding("UTF-8");
        String web = request.getParameter("web");
        int id = (Integer) request.getSession().getAttribute("account_id");
        JDBCUtil jd = new JDBCUtil();
        //删除一条消息；

        //jd.delAccount(id);
        account ac = new account();
        ac.setId(id);
        ac.setIdWeb(web);
        Integer idPwd = jd.findAccountByWebAndId(id, web).getIdPwd();
        password pa = jd.findPasswordById(idPwd);
        daoImp.getPassword().delPwdById(pa.getIdPwd());
        jd.delAccountByIdAndByWeb(ac);
        //3.跳转
        request.setAttribute("account_id", id);
        request.getRequestDispatcher("/findAllUserSaw").forward(request, response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}