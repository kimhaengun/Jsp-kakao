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
	private int imagetitle;
	private String productname;
	private int price;
	private String productcontent;
	private int imagecontent;
	
}
