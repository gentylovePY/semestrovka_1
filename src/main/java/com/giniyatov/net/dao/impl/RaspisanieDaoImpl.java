package com.giniyatov.net.dao.impl;

import com.giniyatov.net.model.RaspisanieModel;
import com.giniyatov.net.util.PostgresConnectionUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import static com.giniyatov.net.util.PostgresConnectionUtil.DRIVER;
import static com.giniyatov.net.util.PostgresConnectionUtil.loadDriver;

public class RaspisanieDaoImpl {

    public List<RaspisanieModel> checkRaspisaniedoGet() throws SQLException {
        List<RaspisanieModel> listRaspdoGet = new ArrayList<>();
        loadDriver(DRIVER);
        Connection connection = PostgresConnectionUtil.getConnection();
        String sql = "select * from rasp ";

        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);


        while (resultSet.next()) {

            String bus1 = resultSet.getString(1);
            String start = resultSet.getString(2);
            String end = resultSet.getString(3);
            String data = resultSet.getString(4);

            RaspisanieModel buyTicket = new RaspisanieModel(bus1,start,end,data);
            listRaspdoGet.add(buyTicket);

        }
        return listRaspdoGet;

    }

    public List<RaspisanieModel> checkRaspisaniedoPost(String bus) throws SQLException {
        List<RaspisanieModel> listRaspdoPost = new ArrayList<>();
        loadDriver(DRIVER);
        Connection connection = PostgresConnectionUtil.getConnection();
        String sql = "select * from rasp  where bus :: varchar='"+bus+"'";

        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);


        while (resultSet.next()) {

            String bus1 = resultSet.getString(1);
            String start = resultSet.getString(2);
            String end = resultSet.getString(3);
            String data = resultSet.getString(4);

            RaspisanieModel buyTicket = new RaspisanieModel(bus1,start,end,data);
            listRaspdoPost.add(buyTicket);

        }
        return listRaspdoPost;

    }
}
