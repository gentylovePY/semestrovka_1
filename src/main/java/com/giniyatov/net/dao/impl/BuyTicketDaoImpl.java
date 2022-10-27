package com.giniyatov.net.dao.impl;

import com.giniyatov.net.dto.UserDto;
import com.giniyatov.net.model.BuyTicket;
import com.giniyatov.net.model.Member;
import com.giniyatov.net.util.PostgresConnectionUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static com.giniyatov.net.util.PostgresConnectionUtil.*;

public class BuyTicketDaoImpl {

    public String insert(BuyTicket buyTicket) {
        loadDriver(DRIVER);
        String result = "successfully";
        String sql = "insert into buytic values(?,?,?,?)";



        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,buyTicket.getUsername());
            preparedStatement.setString(2,buyTicket.getStartCity());
            preparedStatement.setString(3,buyTicket.getEndCity());
            preparedStatement.setString(4,buyTicket.getBus());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return result;

    }

    public List<BuyTicket> validate(String user) throws SQLException {
        List<BuyTicket> list = new ArrayList<>();
        loadDriver(DRIVER);
        Connection connection = PostgresConnectionUtil.getConnection();
        String sql = "select * from buytic where username ::  varchar='"+user+"'";

        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);


        while (resultSet.next()) {

            String name = resultSet.getString(1);
            System.out.println("name = "+ name);
            String start = resultSet.getString(2);
            System.out.println("start = "+ start);
            String end = resultSet.getString(3);
            System.out.println("end = "+ end);
            String bus = resultSet.getString(4);
            System.out.println("bus = "+ bus);

            BuyTicket buyTicket = new BuyTicket(name,bus,start,end);
            list.add(buyTicket);

        }
        return list;

    }
}
