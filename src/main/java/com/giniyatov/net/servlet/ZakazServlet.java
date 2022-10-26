package com.giniyatov.net.servlet;

import com.giniyatov.net.dao.impl.BuyTicketDaoImpl;
import com.giniyatov.net.model.BuyTicket;
import com.giniyatov.net.model.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "zakaz", value = "/zakaz", asyncSupported = true)
public class ZakazServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        BuyTicketDaoImpl buyTicketDao = new BuyTicketDaoImpl();
        try {
            List<BuyTicket> list = buyTicketDao.validate();
            req.setAttribute("list",list);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        getServletContext().getRequestDispatcher("/zakaz.jsp").forward(req, resp);
        resp.sendRedirect("zakaz.jsp");
    }
}
