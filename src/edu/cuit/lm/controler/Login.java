package edu.cuit.lm.controler;

import edu.cuit.lm.entity.account;
import edu.cuit.lm.entity.userInf;
import edu.cuit.lm.util.JDBCUtil;
import edu.cuit.lm.util.logInUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/login")
public class Login extends HttpServlet {
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        // 1 接收请求，并获取请求参数
        int id = Integer.parseInt(request.getParameter("name").trim());
        String pass = request.getParameter("pass");
        // 2 调用业务，并获取业务数据
        int x = logInUtil.check(id, pass);
        JDBCUtil jd = new JDBCUtil();
        // 3 数据传递，并页面导航
        System.out.println(x);
        if(x == 1){
            //数据传递，/管理员页面
            userInf userInfById = jd.findUserInfById(id);
            request.setAttribute("username", userInfById.getRealname());
            request.getRequestDispatcher("findAll").forward(request, response);
           // HttpSession session = request.getSession();
            //session.setAttribute("username", username);
            //response.sendRedirect(request.getContextPath()+"/ok.jsp");
        }else if(x == 2){
            //普通用户
            account ac = new account();
            ac.setId(id);
            request.setAttribute("account_id", ac);
            request.getRequestDispatcher("/findAllUserSaw").forward(request, response);
            //用户页面；
        }
        else{
            //登录失败！
            request.setAttribute("error", "登录失败！");
            request.getRequestDispatcher("/field.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");// 设置请求的中文编码
        this.doGet(request, response);
    }

}
