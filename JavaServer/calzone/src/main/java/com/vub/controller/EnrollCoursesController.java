package com.vub.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//@RequestMapping("/EnrollCourses")
@Controller
public class EnrollCoursesController {

	// Serving Enroll Courses Page
	@RequestMapping(value = "/EnrollCourses", method = RequestMethod.GET)
	public String enrollCoursesPage(ModelMap model) {
		// TODO - Update met toegevoegde services
		/*ArrayList<Course> courseArrayList = new ArrayList<Course>();
		CourseDao courseDao = new CourseDao();
		courseArrayList = courseDao.getCourses();
		courseDao.closeDao();
		Collections.sort(courseArrayList);
		model.addAttribute("courseArrayList", courseArrayList);*/
		return "EnrollCourses";
	}

	@RequestMapping(value = "/EnrollCourses/add/{courseId}", method = RequestMethod.GET) 
	public String addCourse(Model model, @PathVariable String courseId, Principal principal) {
		// TODO - Update met toegevoegde services
		/*User user = new UserDao().findByUserName(principal.getName());
		// TODO rekening houden met academic year
		user.addEnrolledCourse(new Enrollment(new CourseDao().findByCourseID(Integer.parseInt(courseId)), 20132014));*/
		return "redirect:/EnrolledCourses";
	}
}
