package com.jiekou.sj;

import java.util.List;

import com.model.sj.Examinationtask;
import com.model.sj.Trainingtask;


public interface ExaminationtaskDao {
	void insertET(Examinationtask examinationtask);
	
	Examinationtask selecteandt();
	
	List<Trainingtask> selecttname(Trainingtask trainingtask);
}
