package com.spring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.UserMapper;
import com.spring.vo.BbsVO;
import com.spring.vo.UserVO;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int insertUser(UserVO param) {
		return userMapper.insertUser(param);
	}

	@Override
	public UserVO loginUser(UserVO param) {
		return userMapper.loginUser(param);
	}

	@Override
	public List<BbsVO> selectAllBbs(int pNum) {
		return userMapper.selectAllBbs(pNum);
	}
	
	@Override
	public int rowCount() {
		return userMapper.rowCount();
	}
	
	@Override
	public List<BbsVO> selectBbs(int bNum) {
		return userMapper.selectBbs(bNum);
	}

	@Override
	public int insertBbs(BbsVO param) {
		return userMapper.insertBbs(param);
	}

	@Override
	public int updateBbs(BbsVO param) {
		return userMapper.updateBbs(param);
	}

}//