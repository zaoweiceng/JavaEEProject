package edu.cuit.lm.controler;


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
//@WebServlet({ "/DeleteUser", "/delete.do" })
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
        int id = Integer.parseInt(request.getParameter("id"));
        JDBCUtil jd = new JDBCUtil();
        jd.delAccount(id);
        //3.跳转
        //request.getRequestDispatcher("/showUser3").forward(request, response);
        response.sendRedirect("showUser");

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}