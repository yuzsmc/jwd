package com.jiekou.sj;

import java.util.List;

import com.model.sj.Group;
import com.model.sj.Notice;
import com.model.sj.Users;

public interface UserDao {
	List<Users> select(Users users);
	List<Users> selectperson(Integer id);
	List<Users> selectteach(Integer id);
}
