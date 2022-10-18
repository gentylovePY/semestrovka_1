package com.giniyatov.net.servlet;

import com.giniyatov.net.dao.impl.UserDaoImpl;
import com.giniyatov.net.model.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("registration.jsp");
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
        response.getWriter().print(result);
    }
}
