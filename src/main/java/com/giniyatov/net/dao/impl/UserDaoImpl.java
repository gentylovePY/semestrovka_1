package com.giniyatov.net.dao.impl;

import com.giniyatov.net.dao.Dao;
import com.giniyatov.net.dto.UserDto;
import com.giniyatov.net.model.Member;
import com.giniyatov.net.util.PostgresConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static com.giniyatov.net.util.PostgresConnectionUtil.*;

public class UserDaoImpl implements Dao {


    @Override
    public String insert(Member member) {
        loadDriver(DRIVER);
        String result = "successfully";
        String sql = "insert into login values(?,?,?,?)";
        String sql2 = "insert into profile values(?,?,?,?,?,?)";


        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            PreparedStatement preparedStatement2 = connection.prepareStatement(sql2);
            preparedStatement.setString(1,member.getUsername());
            preparedStatement2.setString(2,"");
            preparedStatement2.setString(3,"");
            preparedStatement2.setBoolean(4,false);
            preparedStatement2.setString(5,"");
            preparedStatement2.setString(6,"");
            preparedStatement2.setString(1,member.getUsername());
            preparedStatement.setString(2,member.getPassword());
            preparedStatement.setString(3,member.getEmail());
            preparedStatement.setString(4,member.getPhone());
            preparedStatement.executeUpdate();
            preparedStatement2.executeUpdate();
        } catch (SQLException e) {
            result = "data failed";
            throw new RuntimeException(e);
        }
        return result;

    }



    @Override
    public boolean validate(UserDto userDto) throws SQLException {
        loadDriver(DRIVER);
        Connection connection = PostgresConnectionUtil.getConnection();
        boolean status = false;
        String sql = "select * from login where username =? and password =?";

        PreparedStatement preparedStatement;
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, userDto.getUsername());
        preparedStatement.setString(2, userDto.getPassword());
        ResultSet resultSet = preparedStatement.executeQuery();
        status = resultSet.next();



        return status;
    }


}
