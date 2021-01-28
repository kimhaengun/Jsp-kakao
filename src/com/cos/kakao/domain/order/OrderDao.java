package com.cos.kakao.domain.order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cos.kakao.config.DB;
import com.cos.kakao.domain.order.dto.OrderRespDto;

public class OrderDao {
	public OrderRespDto findById(int userId, int productId) {
		// TODO Auto-generated method stub
		StringBuffer sb = new StringBuffer();
		sb.append("select p.id, p.imagetitle, p.productname, p.price,u.id, u.usernickname, u.phone, u.address ");
		sb.append("from product p inner join user u ");
		sb.append("where p.id=? and u.id=?");
		String sql = sb.toString();
		Connection conn = DB.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productId);
			pstmt.setInt(2, userId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				OrderRespDto dto = new OrderRespDto();
				dto.setProductId(rs.getInt("p.id"));
				dto.setImagetitle(rs.getInt("p.imagetitle"));
				dto.setProductname(rs.getString("p.productname"));
				dto.setPrice(rs.getInt("p.price"));
				dto.setUserId(rs.getInt("u.id"));
				dto.setUsernickname(rs.getString("u.usernickname"));
				dto.setPhone(rs.getString("u.phone"));
				dto.setAddress(rs.getString("u.address"));
				return dto;
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
