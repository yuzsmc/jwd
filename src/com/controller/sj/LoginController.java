package com.controller.sj;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.jiekou.sj.UserDao;
import com.model.sj.Users;
import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;
@Controller
public class LoginController {
	@Autowired
	private UserDao usersDao;
	@RequestMapping("/user/login")
	public String login(Users users,HttpServletRequest request){
		List<Users> list = usersDao.select(users);
		if(!list.isEmpty()){
			Integer class_id=0;
			for(Users u:list){
				class_id=u.getClass_id();
			}
			int[] s=new int[]{1,2,3,4,5,6,10,11};
			if(Arrays.binarySearch(s, class_id)>=0){
				request.setAttribute("list",list);
				return "welcome";
			}else{
				return "error";
			}
		}else{
			return "error";
		}
	}
	  @ResponseBody
	    @RequestMapping(value = "/user/selectperson",produces="text/html;charset=UTF-8;", method = RequestMethod.POST)
	    public String selectperson(HttpServletRequest request) throws Exception{
		  String getClass_id = request.getParameter("getClass_id");
		  Integer class_id = Integer.parseInt(getClass_id);
	        List<Users> list =usersDao.selectperson(class_id); 
	        int l=list.size();
	        String str=null;
	        String a=null;String b=null;String c=null;String d=null;
	        String[][] arr = new String[l][2];
	        for (int i = 0; i < list.size(); i++) {
	        	a=list.get(i).getUsername();
  				b=list.get(i).getOrdername();
  				c=""+list.get(i).getUser_id();
  				d=a+"("+b+")";
  				System.out.println(c+"~~~~~~~~~~"+a+"("+b+")");
  				arr[i][0]=c;
  				arr[i][1]=d;
			}
	        JSONArray jsonObject = JSONArray.fromObject(arr);
	        str = jsonObject.toString();
	        System.out.println(str);
	        return str;
	    }


}
