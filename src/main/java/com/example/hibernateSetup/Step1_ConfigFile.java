package com.example.hibernateSetup;

import org.hibernate.cfg.Configuration;

public class Step1_ConfigFile{
	
	public static Configuration cfg;
	
	static {
		// Loading the Configuration File:
		cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		cfg.addAnnotatedClass(com.example.entity.Student.class);
	}
}