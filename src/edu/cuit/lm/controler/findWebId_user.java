package edu.cuit.lm.controler;


import edu.cuit.lm.entity.account;
import edu.cuit.lm.entity.password;
import edu.cuit.lm.entity.userSaw;
import edu.cuit.lm.util.JDBCUtil;
import edu.cuit.lm.util.packUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/*
 * Servlet implementation class DeleteUser
 */
@WebServlet({ "/findWebId_user"})
public class findWebId_user extends HttpServlet {
    private static final long serialVersionUID =1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public findWebId_user(){
        super();
        // TODO Auto-generated constructor stub
    }
    /**
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        //1.接受参数
        request.setCharacterEncoding("UTF-8");
        int id = (Integer) request.getSession().getAttribute("account_id");
        String web = request.getParameter("web");
        //2.查出密码！
        System.out.println("id:" + id);
        System.out.println("web:" + web);
        packUtil pk = new packUtil();
        JDBCUtil jd = new JDBCUtil();
        password pwd = jd.findPasswordById(jd.findAccountByWebAndId(id, web).getIdPwd());
        System.out.println(pwd);
        //删除一条消息；
        //3.跳转
        PrintWriter writer = response.getWriter();
        writer.write("<script>alert('Your password is:"+pwd.getPassword()+"')</script>");
        writer.flush();
        writer.close();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}