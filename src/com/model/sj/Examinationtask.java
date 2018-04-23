package com.model.sj;

public class Examinationtask {
	private int eid;
	private String enotice;//考试通知
	private String releasedepartment;//发布部门
	private String signingdepartment;//签收部门
	private String ename;//考试名称
	private String post;//选择岗位
	private String teacher;//监考教师
	private String ebegintime;//考试开始时间
	private String eendtime;//考试结束时间
	private int imagedata;//是否留存影像资料
	private int questionnaire;//是否填写调查问卷
	private String surveyratio;//填写调查比例
	private int tid;//与哪个培训相关的考试
	private Trainingtask trainingtask;
	public Examinationtask(){}
	
	public Examinationtask(int eid, String enotice, String releasedepartment,
			String signingdepartment, String ename, String post,
			String teacher, String ebegintime, String eendtime, int imagedata,
			int questionnaire, String surveyratio, int tid,
			Trainingtask trainingtask) {
		super();
		this.eid = eid;
		this.enotice = enotice;
		this.releasedepartment = releasedepartment;
		this.signingdepartment = signingdepartment;
		this.ename = ename;
		this.post = post;
		this.teacher = teacher;
		this.ebegintime = ebegintime;
		this.eendtime = eendtime;
		this.imagedata = imagedata;
		this.questionnaire = questionnaire;
		this.surveyratio = surveyratio;
		this.tid = tid;
		this.trainingtask = trainingtask;
	}

	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEnotice() {
		return enotice;
	}
	public void setEnotice(String enotice) {
		this.enotice = enotice;
	}
	public String getSigningdepartment() {
		return signingdepartment;
	}
	public void setSigningdepartment(String signingdepartment) {
		this.signingdepartment = signingdepartment;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getEbegintime() {
		return ebegintime;
	}
	public void setEbegintime(String ebegintime) {
		this.ebegintime = ebegintime;
	}
	public String getEendtime() {
		return eendtime;
	}
	public void setEendtime(String eendtime) {
		this.eendtime = eendtime;
	}

	public int getImagedata() {
		return imagedata;
	}

	public void setImagedata(int imagedata) {
		this.imagedata = imagedata;
	}

	public int getQuestionnaire() {
		return questionnaire;
	}

	public void setQuestionnaire(int questionnaire) {
		this.questionnaire = questionnaire;
	}

	public String getSurveyratio() {
		return surveyratio;
	}
	public void setSurveyratio(String surveyratio) {
		this.surveyratio = surveyratio;
	}
	public String getReleasedepartment() {
		return releasedepartment;
	}
	public void setReleasedepartment(String releasedepartment) {
		this.releasedepartment = releasedepartment;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public Trainingtask getTrainingtask() {
		return trainingtask;
	}

	public void setTrainingtask(Trainingtask trainingtask) {
		this.trainingtask = trainingtask;
	}

	
	
}
