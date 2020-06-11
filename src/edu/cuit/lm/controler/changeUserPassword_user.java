package edu.cuit.lm.controler;

import edu.cuit.lm.dao.accountDao;
import edu.cuit.lm.dao.passwordDao;
import edu.cuit.lm.dao.userInfDao;
import edu.cuit.lm.dao.userPriDao;
import edu.cuit.lm.entity.*;
import edu.cuit.lm.util.JDBCUtil;
import edu.cuit.lm.util.packUtil;

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
@WebServlet({ "/changeUserPassword"})
public class changeUserPassword_user extends HttpServlet {
    private static final long serialVersionUID =1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public changeUserPassword_user(){
        super();
        // TODO Auto-generated constructor stub
    }
    /**
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取参数
        request.setCharacterEncoding("UTF-8");
        int id = (Integer) request.getSession().getAttribute("account_id");
        //获取新密码
        String name = request.getParameter("name");
        String sex = request.getParameter("sex");
        String birthday = request.getParameter("birthday");
        String[] split = birthday.split("-");
        Date date = new Date();
        date.setYear(Integer.parseInt(split[0].trim())-1900);
        date.setMonth(Integer.parseInt(split[1].trim())-1);
        date.setDate(Integer.parseInt(split[2].trim()));
        String tel = request.getParameter("tel");
        String email = request.getParameter("email");
        //2.函数，修改函数/修改idUser
        JDBCUtil jd = new JDBCUtil();
        userInf user = jd.findUserInfById(id);
        user.setRealname(name);
        user.setSex(sex);
        user.setBirthday(date);
        user.setTel(tel);
        user.setEmail(email);
        jd.updateUserInf(user);
        //3.跳转
        request.setAttribute("account_id", id);
        //request.getRequestDispatcher("/showUser3").forward(request, response);
        request.getRequestDispatcher("/findAllUserSaw").forward(request, response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}

