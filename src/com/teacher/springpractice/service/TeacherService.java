package com.teacher.springpractice.service;

import java.util.List;

import com.teacher.springpractice.entity.Teacher;

public interface TeacherService {

	public List<Teacher> getTeachers();

	public void addTeacher(Teacher theTeacher);

	public Teacher showPrepopulateForm(int theId);

	public void deleteTeacher(int theId);
	
	

}
