package com.giniyatov.net.servlet;

import com.giniyatov.net.dao.impl.AjaxImpl;
import com.giniyatov.net.dao.impl.UserDaoImpl;
import com.giniyatov.net.model.Member;
import com.giniyatov.net.util.PostgresConnectionUtil;
import org.checkerframework.checker.units.qual.A;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "register", value = "/register", asyncSupported = true)
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       // response.sendRedirect("registration.ftl");
        String username = request.getParameter("username");
        System.out.println(username);
        PrintWriter out = response.getWriter();
        AjaxImpl ajax = new AjaxImpl();
        try {
            out.println(ajax.checkUsername(username));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");


        Member member = new Member(username,password,email,phone);
        UserDaoImpl registerDao = new UserDaoImpl();
        String result = registerDao.insert(member);



        if (result.equals("successfully")){
            response.sendRedirect("/login");
        }


    }
}
