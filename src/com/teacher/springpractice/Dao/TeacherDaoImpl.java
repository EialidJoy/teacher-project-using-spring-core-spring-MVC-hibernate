package com.teacher.springpractice.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teacher.springpractice.entity.Teacher;

@Repository
public class TeacherDaoImpl implements TeacherDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Teacher> getTeachers() {
		
		Session session=sessionFactory.getCurrentSession();
		
		Query<Teacher> theQuery=session.createQuery("from Teacher", Teacher.class);
		List<Teacher> theTeacher=theQuery.getResultList();
		
		return theTeacher;
	}

	@Override
	public void addTeacher(Teacher theTeacher) {
		Session session=sessionFactory.getCurrentSession();
		
		session.saveOrUpdate(theTeacher);
		
	}

	@Override
	public Teacher showPrepopulateForm(int theId) {
		
		Session session=sessionFactory.getCurrentSession();
		Teacher theTeacher=session.get(Teacher.class, theId);
		return theTeacher;
	}

	@Override
	public void deleteTeacher(int theId) {
		
		Session session=sessionFactory.getCurrentSession();
		Query theQuery=session.createQuery("delete from Teacher where id=:teacherId");
		theQuery.setParameter("teacherId", theId);
		theQuery.executeUpdate();
		
	}
	
}
