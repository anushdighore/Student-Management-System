

package com.example.hibernateSetup;

import org.hibernate.Session;

public class Step3_TestSession{
	public static void main(String[] args) {
		
		Session session = Step2_SessionFactoryCreation.sessionFactory.openSession();
		System.out.println("Session created successfully: " + session);
	}
}