package com.spring.service;

import java.util.List;

import com.spring.vo.BbsVO;
import com.spring.vo.UserVO;

public interface UserService {

	public int insertUser(UserVO param);
	public UserVO loginUser(UserVO param);
	public List<BbsVO> selectAllBbs(int pNum);
	public List<BbsVO> selectBbs(int bNum);
	public int insertBbs(BbsVO param);
	public int updateBbs(BbsVO param);
	public int rowCount();
	
}