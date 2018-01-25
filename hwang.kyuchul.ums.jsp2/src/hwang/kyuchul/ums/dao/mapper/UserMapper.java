package hwang.kyuchul.ums.dao.mapper;

import hwang.kyuchul.ums.domain.User;

import java.util.List;

public interface UserMapper {
	List<User> getUsers();
	User getUser(int userNo);
	int addUser(String userName);
	int updateUser(User user);
	int delUsers(int userNo);
}
