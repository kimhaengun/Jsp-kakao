package com.cos.kakao.domain.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cos.kakao.config.DB;

public class ProductDao {
	public Product findById(int id){
		String sql = "SELECT * FROM product WHERE id = ?";
		Connection conn = DB.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Product dto = new Product();
				dto.setId(rs.getInt("id"));
				dto.setImagetitle(rs.getInt("imagetitle"));
				dto.setProductname(rs.getString("productname"));
				dto.setPrice(rs.getInt("price"));
				dto.setProductcontent(rs.getString("productcontent"));
				dto.setImagecontent(rs.getInt("imagecontent"));
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
						.imagetitle(rs.getInt("imagetitle"))
						.productname(rs.getString("productname"))
						.price(rs.getInt("price"))
						.productcontent(rs.getString("productcontent"))
						.imagecontent(rs.getInt("imagecontent"))
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
