package com.cos.kakao.service;

import java.util.List;

import com.cos.kakao.domain.product.Product;
import com.cos.kakao.domain.product.ProductDao;

public class ProductService {
	private ProductDao productDao = new ProductDao();
	public List<Product> 상품목록() {
		return  productDao.findAll();
	}
}
