package com.giniyatov.net.servlet;

import com.giniyatov.net.dao.impl.ProfileDaoImpl;
import com.giniyatov.net.model.Profile;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import java.util.HashMap;
import java.util.Objects;

@WebServlet(name = "profile", value = "/profile")
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String user = (String) request.getSession(false).getAttribute("username");
        ProfileDaoImpl profileDao4 = new ProfileDaoImpl();

        try {
            HashMap artibs = profileDao4.createProfile(user);
            request.setAttribute("name",user);
            request.setAttribute("password",artibs.get("password"));
            request.setAttribute("email",artibs.get("email"));
            request.setAttribute("phone",artibs.get("phone"));

            request.setAttribute("fname",artibs.get("fname"));
            request.setAttribute("lname",artibs.get("lname"));
            request.setAttribute("btrh",artibs.get("btrh"));
            request.setAttribute("city",artibs.get("city"));
            request.setAttribute("gender",artibs.get("gender"));

        }catch (Exception e){

        }
        getServletContext().getRequestDispatcher("/profile.jsp").forward(request, response);
        response.sendRedirect("profile.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String user = (String) request.getSession(false).getAttribute("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        String fName = request.getParameter("fName");
        String lName = request.getParameter("lName");
        String gender = request.getParameter("field1");
        String birthday = request.getParameter("birthday");



        var genderBool = false;
        if (Objects.equals(gender, "on")){
            genderBool = true;
        }

        Profile profile = new Profile(user,email,phone,city,fName,lName,genderBool,birthday);
        ProfileDaoImpl profileDao = new ProfileDaoImpl();
        try {
            profileDao.updateProfile(profile);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        response.setHeader("Refresh", "0");
    }
}
