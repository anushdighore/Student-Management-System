package com.example.test;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.example.HibernateUtil;
import com.example.entity.Student;

public class TestStudentMapping {

    public static void main(String[] args) {
        Transaction transaction = null;
        
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // Start transaction
            transaction = session.beginTransaction();
            
            // Create a new Student manually
            Student student = new Student();
            student.setFirstName("John");
            student.setLastName("Doe");
            student.setNumber(1234567890L);
            
            // Save the student
            session.persist(student);
            
            // Commit transaction
            transaction.commit();
            
            System.out.println("Student saved successfully!");
            System.out.println("Generated ID: " + student.getId());
            
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            System.err.println("Error: " + e.getMessage());
            e.printStackTrace();
        } finally {
            HibernateUtil.shutdown();
        }
    }
}
