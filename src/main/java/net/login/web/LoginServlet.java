package net.login.web;

import net.login.bean.LoginBean;
import net.login.database.LoginDao;

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

        LoginBean loginBean = new LoginBean();
        loginBean.setUsername(username);
        loginBean.setPassword(password);

        LoginDao loginDao = new LoginDao();
        try {
            if (loginDao.validate(loginBean)){
                response.sendRedirect("loginSuccess.jsp");

            }else {
                response.sendRedirect("login.jsp");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }




    }
}
