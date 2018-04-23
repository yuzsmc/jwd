package com.model.sj;


public class Users {
private int user_id;
private String username;
private String password;
private String create_time;
private int class_id;
private int group_id;
private String ordername;
public Users(){}

public Users(int userid, String username, String password, String create_time,
		int class_id, int group_id, String ordername) {
	super();
	this.user_id = user_id;
	this.username = username;
	this.password = password;
	this.create_time = create_time;
	this.class_id = class_id;
	this.group_id = group_id;
	this.ordername = ordername;
}

public int getUser_id() {
	return user_id;
}

public void setUser_id(int user_id) {
	this.user_id = user_id;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getCreate_time() {
	return create_time;
}

public void setCreate_time(String create_time) {
	this.create_time = create_time;
}

public int getClass_id() {
	return class_id;
}

public void setClass_id(int class_id) {
	this.class_id = class_id;
}

public int getGroup_id() {
	return group_id;
}

public void setGroup_id(int group_id) {
	this.group_id = group_id;
}

public String getOrdername() {
	return ordername;
}

public void setOrdername(String ordername) {
	this.ordername = ordername;
}

}
