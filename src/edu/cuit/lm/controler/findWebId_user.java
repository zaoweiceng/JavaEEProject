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
        int id = Integer.parseInt(request.getParameter("id").trim());
        String web = request.getParameter("web");
        //2.查出密码！
        packUtil pk = new packUtil();
        JDBCUtil jd = new JDBCUtil();
        userSaw user = pk.findUser(id, web);
        password pwd = jd.findPasswordById(jd.findAccountByWebAndId(id, web).getIdPwd());
        String pass;
        pk.unzip(pwd);
        //删除一条消息；
        //jd.delAccount(id);
        //3.跳转
        //request.getRequestDispatcher("/showUser3").forward(request, response);
        PrintWriter writer = response.getWriter();
        writer.write("<script>alert('密码为："+pwd.getPassword()+"')</script>");
        writer.flush();
        writer.close();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}