package service;

import domain.user.User;
import domain.user.dao.UserDao;
import domain.user.dto.EditReqDto;
import domain.user.dto.JoinReqDto;
import domain.user.dto.LoginReqDto;

public class UserService {
	//회원가입, 로그인, 로그아웃, 아이디중복체크, 회원정보수정
	private UserDao userDao;
	
	//매번 UserService인스턴스가 생성될때 UserDao 인스턴스를 필드로 할당한다.
	public UserService() {
		this.userDao = new UserDao();
	}

	public int join(JoinReqDto dto) { 
		return userDao.save(dto);	 
	}
	
	public User login(LoginReqDto dto) {
		return userDao.findByusernameAndPassword(dto);
	}
	public int idCheck(String userId) {
		return userDao.findById(userId);
	}
	//회원정보확인
	public User checkProfile(int num) {
		return userDao.findByNum(num);
	}
	//회원정보수정
	public int edit(EditReqDto dto) {
		return userDao.update(dto);
	}
}


