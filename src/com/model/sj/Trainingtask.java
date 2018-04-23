package com.model.sj;

import java.util.ArrayList;
import java.util.List;

public class Trainingtask {
	private int id;
	private String trainingnotice;//培训通知֪
	private String trainingname;//培训名称
	private String trainingtype;//培训类型
	private String trainingmode;//培训方式
	private String ttime;//培训时间
	private String traininghours;//培训学时
	private String trainingmaterials;//培训资料
	private String departments;//参培部门
	private String participants;//参培人员
	private String trainer;//培训负责人
	private int trainingimage;//是否留存培训影像资料
	private int examination;//是否发布考试
	private String recordingperiod;//考试图像记录周期
	private String releasedepartment;//发布部门
	private String recipient;//签收人
	private Department department;//部门
	private List<Examinationtask> list=new ArrayList<Examinationtask>();
	
	public Trainingtask(){}
	public Trainingtask(int id, String trainingnotice, String trainingname,
			String trainingtype, String trainingmode, String ttime,
			String traininghours, String trainingmaterials, String departments,
			String participants, String trainer, int trainingimage,
			int examination, String recordingperiod, String releasedepartment,
			String recipient, Department department, List<Examinationtask> list) {
		super();
		this.id = id;
		this.trainingnotice = trainingnotice;
		this.trainingname = trainingname;
		this.trainingtype = trainingtype;
		this.trainingmode = trainingmode;
		this.ttime = ttime;
		this.traininghours = traininghours;
		this.trainingmaterials = trainingmaterials;
		this.departments = departments;
		this.participants = participants;
		this.trainer = trainer;
		this.trainingimage = trainingimage;
		this.examination = examination;
		this.recordingperiod = recordingperiod;
		this.releasedepartment = releasedepartment;
		this.recipient = recipient;
		this.department = department;
		this.list = list;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTrainingnotice() {
		return trainingnotice;
	}
	public void setTrainingnotice(String trainingnotice) {
		this.trainingnotice = trainingnotice;
	}
	public String getTrainingname() {
		return trainingname;
	}
	public void setTrainingname(String trainingname) {
		this.trainingname = trainingname;
	}
	public String getTrainingtype() {
		return trainingtype;
	}
	public void setTrainingtype(String trainingtype) {
		this.trainingtype = trainingtype;
	}
	public String getTrainingmode() {
		return trainingmode;
	}
	public void setTrainingmode(String trainingmode) {
		this.trainingmode = trainingmode;
	}
	public String getTraininghours() {
		return traininghours;
	}
	public void setTraininghours(String traininghours) {
		this.traininghours = traininghours;
	}
	public String getTrainingmaterials() {
		return trainingmaterials;
	}
	public void setTrainingmaterials(String trainingmaterials) {
		this.trainingmaterials = trainingmaterials;
	}
	public String getDepartments() {
		return departments;
	}
	public void setDepartments(String departments) {
		this.departments = departments;
	}
	public String getParticipants() {
		return participants;
	}
	public void setParticipants(String participants) {
		this.participants = participants;
	}
	public String getTrainer() {
		return trainer;
	}
	public void setTrainer(String trainer) {
		this.trainer = trainer;
	}
	
	public int getTrainingimage() {
		return trainingimage;
	}

	public void setTrainingimage(int trainingimage) {
		this.trainingimage = trainingimage;
	}

	public int getExamination() {
		return examination;
	}
	public void setExamination(int examination) {
		this.examination = examination;
	}
	public String getRecordingperiod() {
		return recordingperiod;
	}
	public void setRecordingperiod(String recordingperiod) {
		this.recordingperiod = recordingperiod;
	}
	public String getTtime() {
		return ttime;
	}
	public void setTtime(String ttime) {
		this.ttime = ttime;
	}
	public String getReleasedepartment() {
		return releasedepartment;
	}
	public void setReleasedepartment(String releasedepartment) {
		this.releasedepartment = releasedepartment;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public List<Examinationtask> getList() {
		return list;
	}
	public void setList(List<Examinationtask> list) {
		this.list = list;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
}
