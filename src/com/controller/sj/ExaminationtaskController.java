package com.controller.sj;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.jiekou.sj.ExaminationtaskDao;
import com.model.sj.Examinationtask;
import com.model.sj.Trainingtask;

@Controller
public class ExaminationtaskController {

	@Autowired
	private ExaminationtaskDao examinationtaskDao;
	@RequestMapping("/insertet")
	public String insertET(@RequestParam("file") CommonsMultipartFile file,HttpServletRequest request,Examinationtask examinationtask ){
		String filename=file.getOriginalFilename();
		System.out.println("源文件名是："+filename);
		/*String newfilename=UUID.randomUUID()+filename;*/
		//上传位置
		String realPath = request.getSession().getServletContext().getRealPath("/upload/kaoshi");
		File f = new File(realPath);
		if(!f.exists())
			f.mkdirs();
			if(!file.isEmpty()){
				try {
					FileOutputStream fos = new FileOutputStream(realPath+filename);
					InputStream in = file.getInputStream();
					int b=0;
					while((b=in.read())!=-1){
						fos.write(b);
					}
					fos.close();
					in.close();
				} catch (Exception e) {
					e.printStackTrace();
				} 
			}
		
		System.out.println("上传文件到："+realPath+filename);
		examinationtask.setEnotice(filename);
		examinationtaskDao.insertET(examinationtask);
		return "fbpx";
	}
	@RequestMapping("/selecteandt")
	public String selecteandt(Model model){
		Examinationtask examinationtask = examinationtaskDao.selecteandt();
		System.out.println("examinationtask.getTrainingtask().getTrainingname():"+examinationtask.getTrainingtask().getTrainingname());
		model.addAttribute("et", examinationtask);
		return "pages/train/push_exam";
	}
	
	@RequestMapping("/selecttname")
	public String selecttname(Model model,Trainingtask trainingtask){
		List<Trainingtask> selecttname = examinationtaskDao.selecttname(trainingtask);
		
		model.addAttribute("listte", selecttname);
		return "pages/train/push_exam";
	}
	
	
	
}
