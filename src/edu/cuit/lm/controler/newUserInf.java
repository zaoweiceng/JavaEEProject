package edu.cuit.lm.controler;

import edu.cuit.lm.entity.password;
import edu.cuit.lm.entity.userInf;
import edu.cuit.lm.util.JDBCUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet("/newUserInf")
public class newUserInf extends HttpServlet {
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        // 1 接收请求，并获取请求参数
        userInf user = new userInf();
        user.setRealname(request.getParameter("name"));
        user.setpWd(request.getParameter("pass1"));
        user.setSex(request.getParameter("Sex"));
        user.setTel(request.getParameter("phone"));
        user.setEmail(request.getParameter("email"));
        user.setBirthday(new Date(request.getDateHeader("Birthday")));

        System.out.println(user);
        // 2 调用业务，并获取业务数据
        //调用jdbc
        JDBCUtil  jdbc = new JDBCUtil();
        boolean x = jdbc.addUser(user);

        // 3 数据传递，并页面导航
        if(x == true){
            request.setAttribute("YSE", "创建成功！");
            request.setAttribute("userid",user.getIdUser());
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            //跳转页面；
            //数据传递，/用户页面
            // HttpSession session = request.getSession();
            //session.setAttribute("username", username);
            //response.sendRedirect(request.getContextPath()+"/ok.jsp");
        }
        else{
            //登录失败！
            request.setAttribute("error", "创建失败！");
            request.getRequestDispatcher("/add.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");// 设置请求的中文编码
        this.doGet(request, response);
    }

}
