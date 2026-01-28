

package com.example.entity;


import jakarta.persistence.Table;
import jakarta.persistence.Id;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;

@Entity
@Table(name = "students")
public class Student{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "uid")
	private long uid;
	
	@Column(name = "first_name")
	private String firstName;
	
	@Column(name= "last_name")
	private String lastName;
	
	@Column(name= "mo_number")
	private long number;
	
	public int getId() {
		return id;
	}
	
	public long getUid() {
		return uid;
	}
	public void setUid(long uid) {
		this.uid = uid;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public long getNumber() {
		return number;
	}
	public void setNumber(long number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "Student [uid=" + uid + ", firstName=" + firstName + ", lastName=" + lastName + ", number=" + number + "]";
	}
	public Student(long uid, String firstName, String lastName, long number) {
		super();
		this.uid = uid;
		this.firstName = firstName;
		this.lastName = lastName;
		this.number = number;
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}