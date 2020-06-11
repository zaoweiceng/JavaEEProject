package edu.cuit.lm.controler;


import edu.cuit.lm.entity.account;
import edu.cuit.lm.entity.password;
import edu.cuit.lm.entity.userInf;
import edu.cuit.lm.entity.userSaw;
import edu.cuit.lm.util.JDBCUtil;
import edu.cuit.lm.util.packUtil;

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
@WebServlet({ "/findAllUserSaw"})
public class ListUserSaw extends HttpServlet {
    private static final long serialVersionUID =1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListUserSaw(){
        super();
        // TODO Auto-generated constructor stub
    }
    /**
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取参数
        request.setCharacterEncoding("UTF-8");
        //2.函数，查找函数
        int id = (Integer) request.getSession().getAttribute("account_id");
        packUtil pa  = new packUtil();
        List<userSaw> List_UserSaw = pa.finUserSawAllById(id);
        JDBCUtil jd = new JDBCUtil();
        userInf userinf_name = jd.findUserInfById(id);

        //3.跳转
        request.setAttribute("userinf_name", userinf_name);
        request.setAttribute("userSawList", List_UserSaw);
        //request.getRequestDispatcher("/showUser3").forward(request, response);
        request.getRequestDispatcher("/user.jsp").forward(request, response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}