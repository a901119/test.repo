package hwang.kyuchul.ums.dao;

import hwang.kyuchul.ums.config.Configuration;
import hwang.kyuchul.ums.dao.mapper.UserMapper;
import hwang.kyuchul.ums.domain.User;

import java.util.List;

public class UserDaoImpl implements UserDao {
	private UserMapper userMapper;
	
	public UserDaoImpl(){
		userMapper = Configuration.getMapper(UserMapper.class);
	}

	@Override
	public List<User> getUsers() {
		return userMapper.getUsers();
	}

	@Override
	public User getUser(int userNo) {
		return userMapper.getUser(userNo);
	}

	@Override
	public int addUser(String userName) {
		return userMapper.addUser(userName);
	}

	@Override
	public int updateUser(User user) {
		return userMapper.updateUser(user);
	}

	@Override
	public int delUser(int userNo) {
		return userMapper.delUsers(userNo);
	}
}
