package com.teacher.springpractice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.teacher.springpractice.entity.Teacher;
import com.teacher.springpractice.service.TeacherService;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;
	
	@GetMapping("/forView")
	public String addteacher() {
		
			
		
		return "add-and-list";
	}
	
	@GetMapping("/listTeachers")
	public String ListTeachers(Model theModel) {
		
		List<Teacher> theTeacher=teacherService.getTeachers();
		theModel.addAttribute("listOfTeachers", theTeacher);
		
		return "teacher-lists";
	}
	
	@GetMapping("/saveTeacherAddition")
	public String SaveTeacherAddition(Model theModel) {
		
		Teacher theTeacher=new Teacher();
		
		theModel.addAttribute("teacher",theTeacher);
		return "add-teacher-form";
	}
	@PostMapping("/saveTeacher")
	public String SaveTeacher(@ModelAttribute("teacher") Teacher theTeacher) {
		
		teacherService.addTeacher(theTeacher);
		return "redirect:/teacher/forView";
	}

	@GetMapping("/update")
	public String TeacherListForUpdate(Model theModel) {
		
		List<Teacher> theTeacher=teacherService.getTeachers();
		theModel.addAttribute("listOfTeachers", theTeacher);
		
		return "update-list";
	}
	
	
	@GetMapping("/showUpdateForm")
	public String UpdateTeacher(@RequestParam("teacherId") int theId, Model theModel) {
		
		Teacher theTeacher=teacherService.showPrepopulateForm(theId);
		theModel.addAttribute("teacher",theTeacher);
		
		
		
		
		return "add-teacher-form";
	}
	
	@GetMapping("/delete")
	public String DeleteListForTeacher(Model theModel) {
		
		List<Teacher> theTeacher=teacherService.getTeachers();
		theModel.addAttribute("teacher", theTeacher);
		return "delete-list";
	}
	
	@GetMapping("/showDeleteForm")
	public String ShowDeleteForm(@RequestParam("teacherId") int theId) {
		
		teacherService.deleteTeacher(theId);
		return "redirect:/teacher/delete-list";
	}
	
	}
