package com.giniyatov.net.servlet;

import com.giniyatov.net.dao.impl.RaspisanieDaoImpl;
import com.giniyatov.net.model.RaspisanieModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Objects;

@WebServlet(name = "rasp", value = "/rasp")
public class RaspisanieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String buss = request.getParameter("bus");
        System.out.println("bus = "+ buss);
        RaspisanieDaoImpl raspisanieDao = new RaspisanieDaoImpl();


            try {
                List<RaspisanieModel> rasplist = raspisanieDao.checkRaspisaniedoGet();
                request.setAttribute("rasplist", rasplist);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

            getServletContext().getRequestDispatcher("/rasp.jsp").forward(request, response);
            response.sendRedirect("rasp.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String buss = request.getParameter("bus");
        RaspisanieDaoImpl raspisanieDao = new RaspisanieDaoImpl();
        if (Objects.equals(buss, "")){
            try {
                List<RaspisanieModel> rasplist = raspisanieDao.checkRaspisaniedoGet();
                request.setAttribute("rasplist", rasplist);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }else {

            try {
                List<RaspisanieModel> rasplist = raspisanieDao.checkRaspisaniedoPost(buss);
                request.setAttribute("rasplist", rasplist);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        getServletContext().getRequestDispatcher("/rasp.jsp").forward(request, response);
        response.sendRedirect("rasp.jsp");
    }



}
