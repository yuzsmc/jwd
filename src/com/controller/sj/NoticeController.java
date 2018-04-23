package com.controller.sj;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.jiekou.sj.NoticeDao;
import com.model.sj.Notice;

@Controller
public class NoticeController {
	@Autowired
	private NoticeDao noticeDao;
	  @ResponseBody
	    @RequestMapping(value = "/notice/add", method = RequestMethod.POST)
	    public void selectperson(HttpServletRequest request) throws Exception{
		  String id = request.getParameter("str");
		  String[] arr = id.split(",");
		  Notice not=new Notice();
		  not.setItem(arr[0]);
		  not.setStartTime(arr[1]);
		  not.setEndTime(arr[2]);
		  not.setNotice_text(arr[3]);
		  not.setPost(arr[4]);
		  not.setGet(arr[5]);
		  not.setPerson(arr[6]);
		  not.setLonger(Integer.parseInt((arr[7])));
		  noticeDao.insert(not);
	    }
	  
	  @ResponseBody
	  @RequestMapping("/notice/selectall")
		public String selectall(HttpServletRequest request){
			List<Notice> list = noticeDao.selectall();
					String str=null;
					Integer n = list.size();
					str=JSON.toJSON(list).toString();
					str="{\"code\": 0, \"msg\": \"\", \"count\": "+n+", \"data\" : "+str+"}";
					return str;
		}
	  
	  @ResponseBody
	  @RequestMapping("/notice/select")
		public String selectone(HttpServletRequest request){
		  String str = request.getParameter("str");
		  Notice notice = new JSONObject().parseObject(str, Notice.class);
			List<Notice> list = noticeDao.select(notice);
					String str1=null;
					Integer n = list.size();
					str1=JSON.toJSON(list).toString();
					str1="{\"code\": 0, \"msg\": \"\", \"count\": "+n+", \"data\" : "+str1+"}";
					return str1;
		}
	  
	  @ResponseBody
	  @RequestMapping("/notice/selectone")
		public String selectone(Integer notice_id,HttpServletRequest request){
			List<Notice> list = noticeDao.selectone(notice_id);
					String str=null;
					str=JSON.toJSON(list).toString();
					return str;
		}
	  
	  @RequestMapping("/notice/del")
		public void del(int notice_id,HttpServletRequest request){
		  System.out.println(notice_id+"~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
			noticeDao.delete(notice_id);
			}
}
