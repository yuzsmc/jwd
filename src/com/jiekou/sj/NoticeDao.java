package com.jiekou.sj;

import java.util.List;

import com.model.sj.Notice;

public interface NoticeDao {
	List<Notice> select(Notice notice);
	void insert(Notice not);
	List<Notice> selectall();
	void delete(int notice_id);
	List<Notice> selectone(Integer notice_id);
	
}
