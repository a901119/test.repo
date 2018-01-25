package hwang.kyuchul.ums.service;

import hwang.kyuchul.ums.dao.UserDao;
import hwang.kyuchul.ums.dao.UserDaoImpl;
import hwang.kyuchul.ums.domain.User;

import java.util.List;

public class UserServiceImpl implements UserService {
	private UserDao userDao;
	
	public UserServiceImpl(){
		this.userDao = new UserDaoImpl();
	}

	@Override
	public List<User> userLists() {
		return userDao.getUsers();
	}

	@Override
	public User userFind(int userNo) {
		return userDao.getUser(userNo);
	}

	@Override
	public boolean join(String userName) {
		return userDao.addUser(userName)>0;
	}

	@Override
	public boolean correct(User user) {
		return userDao.updateUser(user)>0;
	}

	@Override
	public boolean secede(int userNo) {
		return userDao.delUser(userNo)>0;
	}
}
