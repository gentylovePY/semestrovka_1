package com.giniyatov.net.servlet;

import com.giniyatov.net.util.PostgresConnectionUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Objects;

import static com.giniyatov.net.util.PostgresConnectionUtil.*;

@WebServlet(name = "profile", value = "/profile")
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String user = (String) request.getSession(false).getAttribute("username");

        try {
            loadDriver(DRIVER);
            Connection connection = PostgresConnectionUtil.getConnection();
            boolean status = false;
            String sql = "select * from login where username :: varchar='"+user+"'";

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()){
                String name = resultSet.getString(1);
                String password = resultSet.getString(2);
                String email = resultSet.getString(3);
                String phone = resultSet.getString(4);
               // System.out.println(name+ password + email + phone);

                request.setAttribute("name",name);
                request.setAttribute("password",password);
                request.setAttribute("email",email);
                request.setAttribute("phone",phone);


            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        getServletContext().getRequestDispatcher("/profile.jsp").forward(request, response);
        response.sendRedirect("profile.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        loadDriver(DRIVER);

        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        String city = request.getParameter("city");
        String fName = request.getParameter("fName");
        String lName = request.getParameter("lName");
        String gender = request.getParameter("field1");
        String birthday = request.getParameter("birthday");
        System.out.println(city+fName+lName+birthday);
        var genderBool = false;
        if (Objects.equals(gender, "on")){
            genderBool = true;
        }

        String user = (String) request.getSession(false).getAttribute("username");
        String sql = "update login set email ='"+email+"',phone ='"+phone+"' where username :: varchar='"+user+"'";
        String sql2 = "update profile set fname ='"+fName+"',lname ='"+lName+"', birthday = '"+birthday+"', gender = '"+genderBool+"'  where username :: varchar='"+user+"'";



        try {


            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            PreparedStatement preparedStatement2 = connection.prepareStatement(sql2);

            preparedStatement.executeUpdate();
            preparedStatement2.executeUpdate();

        } catch (SQLException e) {

            throw new RuntimeException(e);
        }




        response.setHeader("Refresh", "0");
    }
}
