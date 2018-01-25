package hwang.kyuchul.ums.service;

import hwang.kyuchul.ums.domain.User;

import java.util.List;

public interface UserService {
	List<User> userLists();
	User userFind(int userNo);
	boolean join(String userName);
	boolean correct(User user);
	boolean secede(int userNo);
}
