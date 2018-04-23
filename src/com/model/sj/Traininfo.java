package com.model.sj;

public class Traininfo {
	private int id;
	private String train_type;
	private String train_mothod;
	private String train_time;
	private String train_week;

	public Traininfo(){}

	public Traininfo(int id, String train_type, String train_mothod,
			String train_time, String train_week) {
		super();
		this.id = id;
		this.train_type = train_type;
		this.train_mothod = train_mothod;
		this.train_time = train_time;
		this.train_week = train_week;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTrain_type() {
		return train_type;
	}

	public void setTrain_type(String train_type) {
		this.train_type = train_type;
	}

	public String getTrain_mothod() {
		return train_mothod;
	}

	public void setTrain_mothod(String train_mothod) {
		this.train_mothod = train_mothod;
	}

	public String getTrain_time() {
		return train_time;
	}

	public void setTrain_time(String train_time) {
		this.train_time = train_time;
	}

	public String getTrain_week() {
		return train_week;
	}

	public void setTrain_week(String train_week) {
		this.train_week = train_week;
	};
	
	
}
