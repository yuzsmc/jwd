package com.controller.sj;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jiekou.sj.GroupDao;
import com.jiekou.sj.UserDao;
import com.model.sj.Group;
import com.model.sj.Traininfo;
import com.model.sj.Users;

@Controller
public class GroupController {
	@Autowired
	private GroupDao groupDao;
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping("/group/selectpost")
	public String selectpost(HttpServletRequest request){
		List<Group> list = groupDao.selectone();
		request.setAttribute("list", list);
		return "pages/annoumcement/push_announce";
	}
	@RequestMapping("/group/selectget")
	public String selectget(HttpServletRequest request){
		List<Group> list = groupDao.selectone();
		request.setAttribute("list", list);
		return "pages/annoumcement/query_announce";
	}
	@RequestMapping("/group/trainpost")
	public String selecttrainpost(HttpServletRequest request){
		List<Group> list1 = groupDao.selectone();
		request.setAttribute("listpart", list1);
		List<Users> list2 = userDao.selectteach(13);
		request.setAttribute("listteach", list2);
		List<Traininfo> list3 = groupDao.selectinfo();
		String type=list3.get(0).getTrain_type();
		String mothod=list3.get(0).getTrain_mothod();
		String time=list3.get(0).getTrain_time();
		String week=list3.get(0).getTrain_week();
		request.setAttribute("listtype", type.split(","));
		request.setAttribute("listmothod", mothod.split(","));
		request.setAttribute("listtime", time.split(","));
		request.setAttribute("listweek", week.split(","));
		return "pages/train/push_train";
	}
	@RequestMapping("/group/trainget")
	public String selecttrainget(HttpServletRequest request){
		List<Group> list1 = groupDao.selectone();
		request.setAttribute("listpart", list1);
		List<Traininfo> list3 = groupDao.selectinfo();
		return "pages/train/query_train";
	}

}
