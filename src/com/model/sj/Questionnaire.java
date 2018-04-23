package com.model.sj;

public class Questionnaire {
	private int qid;
	private String contentdesign;//内容设计
	private String method;//教学方法
	private String expressiveability;//表达能力
	private String course;//课程安排
	private String organizationw;//培训的组织工作
	private String lecture;//讲课方式和效果
	private String facilities;//教学环境及设施
	private String ability;//培训是否对您能力有所提高
	private String evaluate;//对培训的总体评价
	private String surveyratio;//调查比例
	public Questionnaire(){}
	public Questionnaire(int qid, String contentdesign, String method,
			String expressiveability, String course, String organizationw,
			String lecture, String facilities, String ability, String evaluate,
			String surveyratio) {
		super();
		this.qid = qid;
		this.contentdesign = contentdesign;
		this.method = method;
		this.expressiveability = expressiveability;
		this.course = course;
		this.organizationw = organizationw;
		this.lecture = lecture;
		this.facilities = facilities;
		this.ability = ability;
		this.evaluate = evaluate;
		this.surveyratio = surveyratio;
	}
	public int getQid() {
		return qid;
	}
	public void setQid(int qid) {
		this.qid = qid;
	}
	public String getContentdesign() {
		return contentdesign;
	}
	public void setContentdesign(String contentdesign) {
		this.contentdesign = contentdesign;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public String getExpressiveability() {
		return expressiveability;
	}
	public void setExpressiveability(String expressiveability) {
		this.expressiveability = expressiveability;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getOrganizationw() {
		return organizationw;
	}
	public void setOrganizationw(String organizationw) {
		this.organizationw = organizationw;
	}
	public String getLecture() {
		return lecture;
	}
	public void setLecture(String lecture) {
		this.lecture = lecture;
	}
	public String getFacilities() {
		return facilities;
	}
	public void setFacilities(String facilities) {
		this.facilities = facilities;
	}
	public String getAbility() {
		return ability;
	}
	public void setAbility(String ability) {
		this.ability = ability;
	}
	public String getEvaluate() {
		return evaluate;
	}
	public void setEvaluate(String evaluate) {
		this.evaluate = evaluate;
	}
	public String getSurveyratio() {
		return surveyratio;
	}
	public void setSurveyratio(String surveyratio) {
		this.surveyratio = surveyratio;
	}
}
