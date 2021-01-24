package com.cos.kakao.service;

import com.cos.kakao.domain.user.User;
import com.cos.kakao.domain.user.dto.JoinReqDto;
import com.cos.kakao.domain.user.dto.LoginReqDto;

public class UserService {
	//회원가입, 로그인, 로그아웃, 아이디중복,
	public int 회원가입(JoinReqDto dto) {
		return -1;
	}
	public User 로그인(LoginReqDto dto) {
		return null;
	}
	public int 아이디중복체크(String username) {
		return -1;
	}
}
