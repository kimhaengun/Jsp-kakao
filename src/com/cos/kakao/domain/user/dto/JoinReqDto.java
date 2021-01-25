package com.cos.kakao.domain.user.dto;

import lombok.Data;

@Data

public class JoinReqDto {
	private String username;
	private String password;
	private String usernickname;
	private String phone;
	private String address;
}
