package com.example;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.boot.MetadataSources;

public class HibernateUtil {

	private static final SessionFactory sessionFactory;
    
    static {
    	try {
    		// Creating registry
    		StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
					.configure("hibernate.cfg.xml")
					.build();
    	
    	
    		// Creating SessionFactory
    		sessionFactory = new MetadataSources(registry)
    				.buildMetadata()
    				.buildSessionFactory();
    		
    		System.out.println("SessionFactory created successfully.");
    	}
    	catch (Exception e) {
			System.err.println("SessionFactory creation failed." + e);
			throw new ExceptionInInitializerError(e);
    	}
	}
	
    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static void shutdown() {
        if (sessionFactory != null) {
            sessionFactory.close();
        }
    }
    
    public static void main(String[] args) {
		// Test the SessionFactory creation
		SessionFactory factory = HibernateUtil.getSessionFactory();
		if(factory != null) {
			System.out.println("HibernateUtil is working fine.");
		} else {
			System.out.println("HibernateUtil failed to create SessionFactory.");
		}
	}
    
}
