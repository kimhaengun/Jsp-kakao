package com.cos.kakao.domain.order.dto;

import lombok.Data;

@Data
public class OrderRespDto {
	private int productId;
	private int imagetitle;
	private String productname;
	private int price;
	private int userId;
	private String usernickname;
	private String phone;
	private String address;
}
