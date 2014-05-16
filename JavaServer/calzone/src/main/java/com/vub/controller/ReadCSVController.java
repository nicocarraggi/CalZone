package com.vub.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vub.exception.CourseNotFoundException;
import com.vub.model.Course;
import com.vub.model.CourseComponent;
import com.vub.service.CourseService;

@Controller 
public class ReadCSVController {
	
	@Autowired
	CourseService courseService;
	
	@RequestMapping(value = "/readCSV")
	public String readCSV(Model model) {
		model.addAttribute("greeting", "Hello World");
		
		try {
			Course c = courseService.findCourseById(31);
			for(CourseComponent cc :c.getCourseComponents()){
				System.out.println(cc.getTeachers());
			}
			System.out.println(courseService.getAllEntries(c));	
		} catch (CourseNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "hello";
	}
}



