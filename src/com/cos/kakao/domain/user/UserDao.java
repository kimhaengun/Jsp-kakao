package com.cos.kakao.domain.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cos.kakao.config.DB;
import com.cos.kakao.domain.user.dto.JoinReqDto;
import com.cos.kakao.domain.user.dto.LoginReqDto;

public class UserDao {
	public int save(JoinReqDto dto) { //회원가입
		String sql = "INSERT INTO user(username, password, usernickname, phone, address) VALUES(?, ?, ?, ?, ?)";
		Connection conn = DB.getInstance();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUsername());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getUsernickname());
			pstmt.setString(4, dto.getPhone());
			pstmt.setString(5, dto.getAddress());
			int result = pstmt.executeUpdate();
			return result;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DB.close(conn, pstmt);
		}
		return -1;
	}
	public User findByUsernameAndPassword(LoginReqDto dto) {
		// TODO Auto-generated method stub
		String sql ="SELECT id, username, usernickname, phone, address FROM user WHERE username = ? AND password = ?";
		Connection conn = DB.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUsername());
			pstmt.setString(2, dto.getPassword());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				User user = User.builder()
						.id(rs.getInt("id"))
						.username(rs.getString("username"))
						.usernickname(rs.getString("usernickname"))
						.phone(rs.getString("phone"))
						.address(rs.getString("address"))
						.build();
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB.close(conn, pstmt, rs);
		}
		return null;
	}
}
