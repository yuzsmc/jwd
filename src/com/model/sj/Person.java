package com.model.sj;

public class Person {
	private int id;//
	private String name;//名字
	private String gender;//性别
	private String nation;//民族
	private String idnumber;//身份证号
	private String birthday;//出生日期
	private String origin;//籍贯
	private String heath;//出生地
	private String workinghours;//参加工作时间
	private String entrytime;//入路工作时间
	private String politicaloutlook;//政治面貌
	private String partytime;//加入党派时间
	private String education;//学历
	private String degreename;//学位名
	private String health;//将康情况
	private String marriage;//婚姻状况
	private String dryway;//转干方式
	private String drytime;//转干时间
	private String serverway;//任职方式
	private String servertype;//任职调配类型
	private String adminduties;//现任行政职务
	private String admintime;//;//现任行政时间
	private String postname;//;//现任职务全称
	private String post;//岗位
	private String postlevel;//;//岗位级别
	private String joblevel;//职务级别
	private String leveldata;//任现在级别时间
	private String leadposition;//领导班子职务分类
	private String labor;//班子分工
	private String pposition;//聘任专业职务
	private String ppositiontime;//聘任专业职务时间
	private String firstpptime;//专业职务首聘时间
	private String employway;//专业职务评聘方式
	private String technicalpost;//高聘技术职务
	private String tposttime;//高聘技术职务时间
	private String personclass;//人员分类
	private String glccbs;//管理层次标识
	private String gzdwjjlx;//工作单位经济类型
	private String poststate;//人员岗位状态
	private String jsglbs;//技术管理标识
	private String zcglrybs;//中层人员管理标识
	private String ldbzcybs;//领导班子成员标识
	private String qyfzrbs;//企业负责人标识
	private String goabroad;//是否列入因私出国备案范围
	private String gcjsrycsgw;//工程技术人员从事岗位
	private String zgrycsgw;//政工人员从事岗位
	private String sfjzgbbs;//是否军转干部标识
	private String sfzzrsgzrybs;//是否组织人事工作人员标识
	private String rdzxdxrzqk;//人大政协当先任职情况
	private String zjbs;//职级标识
	public Person(){}
	public Person(int id, String name, String gender, String nation,
			String idnumber, String birthday, String origin, String heath,
			String workinghours, String entrytime, String politicaloutlook,
			String partytime, String education, String degreename,
			String health, String marriage, String dryway, String drytime,
			String serverway, String servertype, String adminduties,
			String admintime, String postname, String post, String postlevel,
			String joblevel, String leveldata, String leadposition,
			String labor, String pposition, String ppositiontime,
			String firstpptime, String employway, String technicalpost,
			String tposttime, String personclass, String glccbs,
			String gzdwjjlx, String poststate, String jsglbs, String zcglrybs,
			String ldbzcybs, String qyfzrbs, String goabroad,
			String gcjsrycsgw, String zgrycsgw, String sfjzgbbs,
			String sfzzrsgzrybs, String rdzxdxrzqk, String zjbs) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.nation = nation;
		this.idnumber = idnumber;
		this.birthday = birthday;
		this.origin = origin;
		this.heath = heath;
		this.workinghours = workinghours;
		this.entrytime = entrytime;
		this.politicaloutlook = politicaloutlook;
		this.partytime = partytime;
		this.education = education;
		this.degreename = degreename;
		this.health = health;
		this.marriage = marriage;
		this.dryway = dryway;
		this.drytime = drytime;
		this.serverway = serverway;
		this.servertype = servertype;
		this.adminduties = adminduties;
		this.admintime = admintime;
		this.postname = postname;
		this.post = post;
		this.postlevel = postlevel;
		this.joblevel = joblevel;
		this.leveldata = leveldata;
		this.leadposition = leadposition;
		this.labor = labor;
		this.pposition = pposition;
		this.ppositiontime = ppositiontime;
		this.firstpptime = firstpptime;
		this.employway = employway;
		this.technicalpost = technicalpost;
		this.tposttime = tposttime;
		this.personclass = personclass;
		this.glccbs = glccbs;
		this.gzdwjjlx = gzdwjjlx;
		this.poststate = poststate;
		this.jsglbs = jsglbs;
		this.zcglrybs = zcglrybs;
		this.ldbzcybs = ldbzcybs;
		this.qyfzrbs = qyfzrbs;
		this.goabroad = goabroad;
		this.gcjsrycsgw = gcjsrycsgw;
		this.zgrycsgw = zgrycsgw;
		this.sfjzgbbs = sfjzgbbs;
		this.sfzzrsgzrybs = sfzzrsgzrybs;
		this.rdzxdxrzqk = rdzxdxrzqk;
		this.zjbs = zjbs;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getIdnumber() {
		return idnumber;
	}
	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getHeath() {
		return heath;
	}
	public void setHeath(String heath) {
		this.heath = heath;
	}
	public String getWorkinghours() {
		return workinghours;
	}
	public void setWorkinghours(String workinghours) {
		this.workinghours = workinghours;
	}
	public String getEntrytime() {
		return entrytime;
	}
	public void setEntrytime(String entrytime) {
		this.entrytime = entrytime;
	}
	public String getPoliticaloutlook() {
		return politicaloutlook;
	}
	public void setPoliticaloutlook(String politicaloutlook) {
		this.politicaloutlook = politicaloutlook;
	}
	public String getPartytime() {
		return partytime;
	}
	public void setPartytime(String partytime) {
		this.partytime = partytime;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getDegreename() {
		return degreename;
	}
	public void setDegreename(String degreename) {
		this.degreename = degreename;
	}
	public String getHealth() {
		return health;
	}
	public void setHealth(String health) {
		this.health = health;
	}
	public String getMarriage() {
		return marriage;
	}
	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}
	public String getDryway() {
		return dryway;
	}
	public void setDryway(String dryway) {
		this.dryway = dryway;
	}
	public String getDrytime() {
		return drytime;
	}
	public void setDrytime(String drytime) {
		this.drytime = drytime;
	}
	public String getServerway() {
		return serverway;
	}
	public void setServerway(String serverway) {
		this.serverway = serverway;
	}
	public String getServertype() {
		return servertype;
	}
	public void setServertype(String servertype) {
		this.servertype = servertype;
	}
	public String getAdminduties() {
		return adminduties;
	}
	public void setAdminduties(String adminduties) {
		this.adminduties = adminduties;
	}
	public String getAdmintime() {
		return admintime;
	}
	public void setAdmintime(String admintime) {
		this.admintime = admintime;
	}
	public String getPostname() {
		return postname;
	}
	public void setPostname(String postname) {
		this.postname = postname;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getPostlevel() {
		return postlevel;
	}
	public void setPostlevel(String postlevel) {
		this.postlevel = postlevel;
	}
	public String getJoblevel() {
		return joblevel;
	}
	public void setJoblevel(String joblevel) {
		this.joblevel = joblevel;
	}
	public String getLeveldata() {
		return leveldata;
	}
	public void setLeveldata(String leveldata) {
		this.leveldata = leveldata;
	}
	public String getLeadposition() {
		return leadposition;
	}
	public void setLeadposition(String leadposition) {
		this.leadposition = leadposition;
	}
	public String getLabor() {
		return labor;
	}
	public void setLabor(String labor) {
		this.labor = labor;
	}
	public String getPposition() {
		return pposition;
	}
	public void setPposition(String pposition) {
		this.pposition = pposition;
	}
	public String getPpositiontime() {
		return ppositiontime;
	}
	public void setPpositiontime(String ppositiontime) {
		this.ppositiontime = ppositiontime;
	}
	public String getFirstpptime() {
		return firstpptime;
	}
	public void setFirstpptime(String firstpptime) {
		this.firstpptime = firstpptime;
	}
	public String getEmployway() {
		return employway;
	}
	public void setEmployway(String employway) {
		this.employway = employway;
	}
	public String getTechnicalpost() {
		return technicalpost;
	}
	public void setTechnicalpost(String technicalpost) {
		this.technicalpost = technicalpost;
	}
	public String getTposttime() {
		return tposttime;
	}
	public void setTposttime(String tposttime) {
		this.tposttime = tposttime;
	}
	public String getPersonclass() {
		return personclass;
	}
	public void setPersonclass(String personclass) {
		this.personclass = personclass;
	}
	public String getGlccbs() {
		return glccbs;
	}
	public void setGlccbs(String glccbs) {
		this.glccbs = glccbs;
	}
	public String getGzdwjjlx() {
		return gzdwjjlx;
	}
	public void setGzdwjjlx(String gzdwjjlx) {
		this.gzdwjjlx = gzdwjjlx;
	}
	public String getPoststate() {
		return poststate;
	}
	public void setPoststate(String poststate) {
		this.poststate = poststate;
	}
	public String getJsglbs() {
		return jsglbs;
	}
	public void setJsglbs(String jsglbs) {
		this.jsglbs = jsglbs;
	}
	public String getZcglrybs() {
		return zcglrybs;
	}
	public void setZcglrybs(String zcglrybs) {
		this.zcglrybs = zcglrybs;
	}
	public String getLdbzcybs() {
		return ldbzcybs;
	}
	public void setLdbzcybs(String ldbzcybs) {
		this.ldbzcybs = ldbzcybs;
	}
	public String getQyfzrbs() {
		return qyfzrbs;
	}
	public void setQyfzrbs(String qyfzrbs) {
		this.qyfzrbs = qyfzrbs;
	}
	public String getGoabroad() {
		return goabroad;
	}
	public void setGoabroad(String goabroad) {
		this.goabroad = goabroad;
	}
	public String getGcjsrycsgw() {
		return gcjsrycsgw;
	}
	public void setGcjsrycsgw(String gcjsrycsgw) {
		this.gcjsrycsgw = gcjsrycsgw;
	}
	public String getZgrycsgw() {
		return zgrycsgw;
	}
	public void setZgrycsgw(String zgrycsgw) {
		this.zgrycsgw = zgrycsgw;
	}
	public String getSfjzgbbs() {
		return sfjzgbbs;
	}
	public void setSfjzgbbs(String sfjzgbbs) {
		this.sfjzgbbs = sfjzgbbs;
	}
	public String getSfzzrsgzrybs() {
		return sfzzrsgzrybs;
	}
	public void setSfzzrsgzrybs(String sfzzrsgzrybs) {
		this.sfzzrsgzrybs = sfzzrsgzrybs;
	}
	public String getRdzxdxrzqk() {
		return rdzxdxrzqk;
	}
	public void setRdzxdxrzqk(String rdzxdxrzqk) {
		this.rdzxdxrzqk = rdzxdxrzqk;
	}
	public String getZjbs() {
		return zjbs;
	}
	public void setZjbs(String zjbs) {
		this.zjbs = zjbs;
	}
	
	
	
}
