package com.example.controllers;

import org.hibernate.Transaction;

import com.example.entity.Student;
import com.example.HibernateUtil;
import org.hibernate.Session;

import java.util.List;

abstract interface StudentOperations{
	void addStudent(Student stu);
	void updateStudent(Student stu);
	void deleteStudent(int id);
	Student getStudentById(int id);
	List<Student> getAllStudents();
}


public class StudentManager implements StudentOperations{

	@Override
	public void addStudent(Student stu) {
		System.out.println("Saving student: " + stu);
		Transaction tx = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try {
			tx = session.beginTransaction();
			session.persist(stu);
			tx.commit();
			System.out.println("Student saved successfully with ID: " + stu.getId());
		}
		catch(Exception e) {
			if(tx != null) {
				tx.rollback();
				System.err.println("Transaction rolled back!");
			}
			e.printStackTrace();
		}
		finally {
			session.close();
		}
	}
	
	
	@Override
	public Student getStudentById(int id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Student stu = null;
		try {
			stu = session.find(Student.class, id);
			if(stu != null) {
				System.out.println("Student retrieved: " + stu);
			} else {
				System.out.println("No student found with ID: " + id);
			}
		}
		catch(Exception e) {
			System.err.println("Error retrieving student: " + e.getMessage());
			e.printStackTrace();
		}
		finally {
			session.close();
		}
	
		return stu;
	}
	
	@Override
	public void updateStudent(Student stu) {
		Transaction tx = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try {
			tx= session.beginTransaction();
			session.merge(stu);
			tx.commit();
		}
		catch(Exception e) {
			if(tx != null) {
				tx.rollback();
				System.err.println("Transaction rolled back!");
			}
			e.printStackTrace();
		}
		finally {
			session.close();
		}
	}
	
	@Override
	public void deleteStudent(int id) {
		Transaction tx = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try {
			tx = session.beginTransaction();
			Student stu = session.get(Student.class, id);
			if(stu != null) {
				session.remove(stu);
				System.out.println("Student deleted: " + stu);
			} else {
				System.out.println("No student found with ID: " + id);
			}
			tx.commit();
		}
		catch(Exception e) {
			if(tx != null) {
				tx.rollback();
				System.err.println("Transaction rolled back!");
			}
			e.printStackTrace();
		}
		finally {
			session.close();
		}
	}
	
	@Override
	public List<Student> getAllStudents(){
		Session session =HibernateUtil.getSessionFactory().openSession();
		List<Student> students = null;
		try {
			students = session.createQuery("from Student", Student.class).getResultList();
			System.out.println("All students retrieved: " + students);
		}
		catch(Exception e) {
			System.err.println("Error retrieving students: " + e.getMessage());
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return students;
	}
	
	
	public static void main(String[] args) {
		System.out.println("Student Manager");
		
		StudentManager manager = new StudentManager();
		manager.getAllStudents();
	}
}

