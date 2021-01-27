package com.cos.kakao.domain.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cos.kakao.config.DB;

public class ProductDao {
	
	public List<Product> findAll(){
		String sql = "SELECT * FROM product ORDER BY id DESC";
		Connection conn = DB.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Product> products = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) { //행 찾기
				Product product = Product.builder()
						.id(rs.getInt("id"))
						.image(rs.getString("image"))
						.productname(rs.getString("productname"))
						.productcontent(rs.getString("productcontent"))
						.price(rs.getInt("price"))
						.build();
				products.add(product);
			}
			return products;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DB.close(conn, pstmt, rs);
		}
		
		return null;
	}
}
