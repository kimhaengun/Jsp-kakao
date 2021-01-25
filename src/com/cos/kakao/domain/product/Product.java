package com.cos.kakao.domain.product;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder

public class Product {
	private int id;
	private String image;
	private String productname;
	private String productcontent;
	private int price;
}
