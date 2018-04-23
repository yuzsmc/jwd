package com.jiekou.sj;

import java.util.List;

import com.model.sj.Trainingtask;

public interface TrainingtaskDao {
	public void insert(Trainingtask trainingtask);
	public List<Trainingtask> selectT();
	public String[] selectadress();
	public List<Trainingtask> selectLike(Trainingtask trainingtask);
}
