package com.jsp.model;

public class Student {

	private int studentId;
	private String firstName;
	private String lastName;
	private int age;
	private String address;
	private String phone;
	private int className;
	private String classDetails;
	
	
	
	public Student(String firstName, String lastName, int age, String address, String phone, int className) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.address = address;
		this.phone = phone;
		this.className = className;
	}

	public Student(int studentId, String firstName, String lastName, int age, String address, String phone,
			int className) {
		
		this.studentId = studentId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.address = address;
		this.phone = phone;
		this.className = className;
	}

	public Student(int studentId, String firstName, String lastName, int age, String address, String phone,
			String classDetails) {
		super();
		this.studentId = studentId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.address = address;
		this.phone = phone;
		this.classDetails = classDetails;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getClassName() {
		return className;
	}

	public void setClassName(int className) {
		this.className = className;
	}

	public String getClassDetails() {
		return classDetails;
	}

	public void setClassDetails(String classDetails) {
		this.classDetails = classDetails;
	}

	@Override
	public String toString() {
		return "Student [studentId=" + studentId + ", firstName=" + firstName + ", lastName=" + lastName + ", age="
				+ age + ", address=" + address + ", phone=" + phone + ", className=" + className + ", classDetails="
				+ classDetails + "]";
	}
	
	
	
	
	
	
	
	
	

}
