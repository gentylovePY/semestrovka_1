package com.giniyatov.net.dao.impl;

import com.giniyatov.net.model.Member;
import com.giniyatov.net.model.Profile;
import com.giniyatov.net.util.PostgresConnectionUtil;

import java.sql.*;
import java.util.HashMap;

import static com.giniyatov.net.util.PostgresConnectionUtil.*;

public class ProfileDaoImpl {


    public void updateProfile(Profile profile) throws SQLException {
        loadDriver(DRIVER);
        String sql = "update login set email ='"+profile.getEmail()+"',phone ='"+profile.getPhone()+"' where username :: varchar='"+profile.getUser()+"'";
        String sql2 = "update profile set  city = '"+profile.getCity()+"',fname ='"+profile.getfName()+"',lname ='"+profile.getlName()+"', birthday = '"+profile.getBirthday()+"', gender = '"+profile.getGender()+"'  where username :: varchar='"+profile.getUser()+"'";

        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            PreparedStatement preparedStatement2 = connection.prepareStatement(sql2);

            preparedStatement.executeUpdate();
            preparedStatement2.executeUpdate();

        } catch (SQLException e) {

            throw new RuntimeException(e);
        }
    }

    public HashMap createProfile(String user) throws SQLException {

        HashMap<String, String> artib = new HashMap<>();

            loadDriver(DRIVER);
            Connection connection = PostgresConnectionUtil.getConnection();
            String sql = "select * from login where username :: varchar='"+user+"'";
            String sq2l = "select * from profile where username :: varchar='"+user+"'";

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);


            while (resultSet.next()) {

                String name = resultSet.getString(1);
                artib.put("name",name);
                String password = resultSet.getString(2);
                artib.put("password",password);
                String email = resultSet.getString(3);
                artib.put("email",email);
                String phone = resultSet.getString(4);
                artib.put("phone",phone);


            }
            ResultSet resultSet2 = statement.executeQuery(sq2l);
            while (resultSet2.next()) {
                String fname = resultSet2.getString(2);
                artib.put("fname",fname);
                String lname = resultSet2.getString(3);
                artib.put("lname",lname);
                String gender = resultSet2.getString(4);
                artib.put("gender",gender);
                String btrh = resultSet2.getString(5);
                artib.put("btrh",btrh);
                String city = resultSet2.getString(6);
                artib.put("city",city);

            }

            return artib;

    }
}
