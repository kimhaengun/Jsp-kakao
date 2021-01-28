package com.cos.kakao.service;

import com.cos.kakao.domain.order.OrderDao;
import com.cos.kakao.domain.order.dto.OrderRespDto;

public class OrderService {
	private  OrderDao orderDao;
	public OrderService() {
		orderDao = new OrderDao();
	}
	public OrderRespDto 상품주문(int userId,int productId) {
		return orderDao.findById(userId, productId);
	}
}
