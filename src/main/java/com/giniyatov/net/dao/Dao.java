package com.giniyatov.net.dao;

import com.giniyatov.net.dto.UserDto;
import com.giniyatov.net.model.Member;

import java.sql.SQLException;

public interface Dao {
    public String insert(Member member);

    public boolean validate(UserDto userDto) throws SQLException;
}
