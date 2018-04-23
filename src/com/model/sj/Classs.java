package com.model.sj;

import java.util.ArrayList;
import java.util.List;


public class Classs {
private int classid;
private String classname;
private List<Users> set=new ArrayList<Users>();

public int getClassid() {
	return classid;
}
public void setClassid(int classid) {
	this.classid = classid;
}


public String getClassname() {
	return classname;
}
public void setClassname(String classname) {
	this.classname = classname;
}
public List<Users> getSet() {
	return set;
}
public void setSet(List<Users> set) {
	this.set = set;
}
}
