package com.giniyatov.net.web;


import com.giniyatov.net.dao.impl.UserDaoImpl;
import com.giniyatov.net.dto.UserDto;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserDto userDto = new UserDto();
        userDto.setUsername(username);
        userDto.setPassword(password);

        UserDaoImpl loginDao = new UserDaoImpl();
        try {
            if (loginDao.validate(userDto)){
                response.sendRedirect("loginSuccess.jsp");

            }else {
                response.sendRedirect("login.jsp");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }




    }
}
