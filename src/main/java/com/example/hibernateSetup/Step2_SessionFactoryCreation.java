package com.example.hibernateSetup;

import org.hibernate.SessionFactory;

public class Step2_SessionFactoryCreation{
	
	public static final SessionFactory sessionFactory;
	
	static {
		try {
			sessionFactory = Step1_ConfigFile.cfg.buildSessionFactory();
		}
		catch (Throwable ex) {
			System.err.println("Initial SessionFactory creation failed: " + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}
}
