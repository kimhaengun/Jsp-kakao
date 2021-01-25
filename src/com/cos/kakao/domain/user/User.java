package com.cos.kakao.domain.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder

public class User {
	private int id;
	private String username;
	private String password;
	private String usernickname;
	private String phone;
	private String address;
}
