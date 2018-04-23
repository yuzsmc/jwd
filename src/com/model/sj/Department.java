package com.model.sj;

import java.util.ArrayList;
import java.util.List;


public class Department {
	private int did;
	private String departmentname;
	private List<Trainingtask> list=new ArrayList<Trainingtask>();
	public Department(){}
	public Department(int did, String departmentname, List<Trainingtask> list) {
		super();
		this.did = did;
		this.departmentname = departmentname;
		this.list = list;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getDepartmentname() {
		return departmentname;
	}
	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
	}
	public List<Trainingtask> getList() {
		return list;
	}
	public void setList(List<Trainingtask> list) {
		this.list = list;
	}
	
	
	
	
	
}
