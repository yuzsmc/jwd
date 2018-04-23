package com.jiekou.sj;

import java.util.List;

import com.model.sj.Group;
import com.model.sj.Traininfo;

public interface GroupDao {
	List<Group> selectone();
	List<Traininfo> selectinfo();
}
