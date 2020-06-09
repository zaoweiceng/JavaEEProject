package edu.cuit.lm.controler;

import edu.cuit.lm.util.logInUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class Login extends HttpServlet {
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        // 1 接收请求，并获取请求参数
//        int id = Integer.parseInt(request.getParameter("UserName").trim());
        int id = 0;
        System.out.println("输出的id");
        System.out.println(request.getParameter("name"));
        String pass = request.getParameter("pass");
        System.out.println(pass);
        // 2 调用业务，并获取业务数据
        boolean x = logInUtil.check(id, pass);
        // 3 数据传递，并页面导航
        if(x == true){
            //数据传递，/管理员页面
            response.sendRedirect("/index.jsp");
           // HttpSession session = request.getSession();
            //session.setAttribute("username", username);
            //response.sendRedirect(request.getContextPath()+"/ok.jsp");
        }else if(x == false){
            request.setAttribute("error", "登录失败！");
            response.sendRedirect("/zhuce.jsp");
            //用户页面；
        }
        else{
            //登录失败！
            request.setAttribute("error", "登录失败！");
            request.getRequestDispatcher("/zhuce.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");// 设置请求的中文编码
        this.doGet(request, response);
    }

}
