package com.giniyatov.net.dao.impl;

import com.giniyatov.net.dto.UserDto;
import com.giniyatov.net.util.PostgresConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class AjaxImpl  {

    public boolean checkUsername(String username) throws SQLException {
        PostgresConnectionUtil.loadDriver(PostgresConnectionUtil.DRIVER);
        Connection connection = PostgresConnectionUtil.getConnection();
        boolean res = false;
        String sql = "select * from login where username =?";

        PreparedStatement preparedStatement;
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, username);
        ResultSet resultSet = preparedStatement.executeQuery();

        if (resultSet.next()){
            res = true;
        }else {
            res = false;
        }

        return res;
    }
}
