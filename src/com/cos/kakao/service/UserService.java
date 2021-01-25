package com.cos.kakao.service;

import com.cos.kakao.domain.user.User;
import com.cos.kakao.domain.user.UserDao;
import com.cos.kakao.domain.user.dto.JoinReqDto;
import com.cos.kakao.domain.user.dto.LoginReqDto;

public class UserService {
	private UserDao userDao = new UserDao();
	//회원가입, 로그인, 로그아웃, 아이디중복,
	public UserService() {
		userDao = new UserDao();
	}
	
	public int 회원가입(JoinReqDto dto) {
		int result = userDao.save(dto);
		return result;
	}
	public User 로그인(LoginReqDto dto) {
		return userDao.findByUsernameAndPassword(dto);
	}
	public int 아이디중복체크(String username) {
		return -1;
	}
}
