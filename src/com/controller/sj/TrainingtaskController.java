package com.controller.sj;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.alibaba.fastjson.JSON;
import com.jiekou.sj.DepartmentDao;
import com.jiekou.sj.TrainingtaskDao;
import com.model.sj.Department;
import com.model.sj.Trainingtask;

@Controller
public class TrainingtaskController {
	/*private static Logger log = Logger.getLogger(TrainingtaskController.class);*/
	@Autowired
	private TrainingtaskDao trainingtaskDao;
	@Autowired
	private DepartmentDao departmentDao;
	@RequestMapping("/insertT")//添加 实现单文件和多文件上传//MultipartFile file
	public String insertT(MultipartHttpServletRequest request,Trainingtask trainingtask){
	
		String originalFilename1=new String();
		List<MultipartFile> fileList1 = request.getFiles("fileTest");
		if (fileList1.size()>0) {
			//遍历文件列表
			Iterator<MultipartFile> fileTte = fileList1.iterator();
			while (fileTte.hasNext()) {
				//获得每一个文件
				MultipartFile multipartFile = fileTte.next();
				//获得原文件名
				originalFilename1= multipartFile.getOriginalFilename();
				String realPath=request.getSession().getServletContext().getRealPath("/upload/tongzhi");
				File dir = new File(realPath);
			if(!dir.exists()){
				dir.mkdirs();
			}
			String filePath=realPath+"/"+originalFilename1;
			System.out.println("filePath:"+filePath);
			//保存文件
			File dest = new File(filePath);
			if(!(dest.exists())){
				try {
					multipartFile.transferTo(dest);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			System.out.println("_------------------------------------------------");
			}
		}
		
		StringBuffer originalFilename =new StringBuffer();
			List<MultipartFile> fileList = request.getFiles("fileList");
			if (fileList.size()>0) {
				//遍历文件列表
				Iterator<MultipartFile> fileTte = fileList.iterator();
				while (fileTte.hasNext()) {
					//获得每一个文件
					MultipartFile multipartFile = fileTte.next();
					//获得原文件名
					String originalFilename2= multipartFile.getOriginalFilename();
					originalFilename.append(originalFilename2);
					originalFilename.append(",");
					System.out.println("originalFilename:"+originalFilename);
					String realPath=request.getSession().getServletContext().getRealPath("/upload/renwu");
					File dir = new File(realPath);
				if(!dir.exists()){
					dir.mkdirs();
				}
				String filePath=realPath+"/"+originalFilename2;
				System.out.println("filePath:"+filePath);
				//保存文件
				File dest = new File(filePath);
				if(!(dest.exists())){
					try {
						multipartFile.transferTo(dest);
					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				System.out.println("_------------------------------------------------");
				}
			}
		trainingtask.setTrainingnotice(originalFilename1);
		originalFilename.deleteCharAt(originalFilename.length() - 1);
		trainingtask.setTrainingmaterials(originalFilename.toString());
		trainingtaskDao.insert(trainingtask);
		return "fbpx";
	}

	@RequestMapping("/listFile")  
	public String listFile(HttpServletRequest request,  
	        HttpServletResponse response ,Model model) { 
        String[] selectadress = trainingtaskDao.selectadress();
        request.setAttribute("selectadress", selectadress);
		return "listFile";
	}
	
	

	@RequestMapping("/downT")
	public void Down(HttpServletRequest request,HttpServletResponse response){
		String fileName=request.getParameter("filename") ;
		if(fileName!=null){
			String realPath=request.getSession().getServletContext().getRealPath("/upload/tongzhi");
			File file = new File(realPath,fileName);
			 if(file.exists()){
				 response.setContentType("multipart/form-data;application/octet-stream;charset=utf-8");// 设置强制下载不打开
				 fileName = fileName.replaceAll("\\+","%20");
				 response.addHeader("Content-Type", "text/html; charset=utf-8");
				 try {
					response.addHeader("Content-Disposition", "attachment;fileName=" + new String(fileName.getBytes("UTF-8"),"ISO-8859-1"));
				} catch (UnsupportedEncodingException e1) {
					e1.printStackTrace();
				}	
				 byte[] buffer=new byte[1024];
				 FileInputStream fis=null;
				 BufferedInputStream bis=null;
				 try {
					fis=new FileInputStream(file);
					bis=new BufferedInputStream(fis);
					 OutputStream os=response.getOutputStream();
					 int i=bis.read(buffer);
					 while (i!=-1) {
						os.write(buffer, 0, i);
						i=bis.read(buffer);
					}
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}finally{
					if(bis!=null){
						try {
							bis.close();
						} catch (IOException e) {
							e.printStackTrace();
						}
					}
					if(fis != null){
						try {
							fis.close();
						} catch (IOException e) {
							e.printStackTrace();
				}
			   }
			  }
			 }
			}
		   }
	@RequestMapping("/selectT")
	public String selectT(HttpServletRequest request){
		List<Trainingtask> list=trainingtaskDao.selectT();
		request.setAttribute("list", list);
		return "fbpx";
	}
	

	//查询便利所有
	@ResponseBody
	@RequestMapping("train/selectall")
	public String all(Model model){
		List<Trainingtask> list=trainingtaskDao.selectT();
		model.addAttribute("lists", list);
		String str=null;
		Integer n = list.size();
		str=JSON.toJSON(list).toString();
		str="{\"code\": 0, \"msg\": \"\", \"count\": "+n+", \"data\" : "+str+"}";
		return str;
	}
	//模糊查询
	@RequestMapping("/selectLike")
	public String selectLike(Model model,Trainingtask trainingtask,Integer pageIndex,HttpServletRequest request){
		List<Department> selectname = departmentDao.selectname();
		model.addAttribute("listname", selectname);
		List<Trainingtask> c = trainingtaskDao.selectLike(trainingtask);
		model.addAttribute("lists", c);
		return "pages/train/query_train";
	}
}
