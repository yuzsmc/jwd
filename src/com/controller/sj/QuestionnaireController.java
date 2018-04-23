package com.controller.sj;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jiekou.sj.QuestionnaireDao;
import com.model.sj.Questionnaire;

@Controller
public class QuestionnaireController {
	@Autowired
	private QuestionnaireDao questionnaireDao;
	@RequestMapping("/insertQ")
	public String insertQ(Questionnaire questionnaire){
		questionnaireDao.insertQ(questionnaire);
		return "success";
	}
	
	
}
