package com.teacher.springpractice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teacher.springpractice.Dao.TeacherDao;
import com.teacher.springpractice.entity.Teacher;

@Service
public class TeacherServiceImpl implements TeacherService {
	
	@Autowired
	private TeacherDao teacherDao;
	
	@Transactional
	public List<Teacher> getTeachers() {
		
		return teacherDao.getTeachers();
	}
	
	@Transactional
	public void addTeacher(Teacher theTeacher) {
		teacherDao.addTeacher(theTeacher);
		
	}

	@Override
	@Transactional
	public Teacher showPrepopulateForm(int theId) {
		
		return teacherDao.showPrepopulateForm(theId);
	}

	@Override
	@Transactional
	public void deleteTeacher(int theId) {
		teacherDao.deleteTeacher(theId);
		
	}

}
