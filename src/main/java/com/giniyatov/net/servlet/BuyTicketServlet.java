package com.giniyatov.net.servlet;

import com.giniyatov.net.dao.impl.BuyTicketDaoImpl;
import com.giniyatov.net.model.BuyTicket;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/BuyTicketServlet", name = "BuyTicketServlet" )
public class BuyTicketServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        String user = (String) request.getSession(false).getAttribute("username");
        String bus = request.getParameter("bus");
        String startCity = request.getParameter("startCity");
        String endCity = request.getParameter("endCity");

        BuyTicket buyTicket = new BuyTicket(user,bus,startCity,endCity);
        BuyTicketDaoImpl buyTicketDao = new BuyTicketDaoImpl();
        buyTicketDao.insert(buyTicket);
    }
}
