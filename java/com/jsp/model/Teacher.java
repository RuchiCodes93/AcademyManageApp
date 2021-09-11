package com.jsp.model;

public class Teacher {
	
	private int teacher_id;
	private String teacher_name;
	private int  teacher_subject;
	private String teacher_sub;
	
	private double teacher_salary;
	private int teacher_age;
	private String teacher_address;
	private int teacher_class;
	


	public Teacher(int teacher_id, String teacher_name, String teacher_sub, double teacher_salary, int teacher_age,
			String teacher_address) {
		super();
		this.teacher_id = teacher_id;
		this.teacher_name = teacher_name;
		this.teacher_sub = teacher_sub;
		this.teacher_salary = teacher_salary;
		this.teacher_age = teacher_age;
		this.teacher_address = teacher_address;
	}
	
	

	
	public Teacher(int teacher_id, String teacher_name, int teacher_subject, double teacher_salary, int teacher_age,
			String teacher_address,int teacher_class) {
		
		this.teacher_id = teacher_id;
		this.teacher_name = teacher_name;
		this.teacher_subject = teacher_subject;
		this.teacher_salary = teacher_salary;
		this.teacher_age = teacher_age;
		this.teacher_address = teacher_address;
		this.teacher_class= teacher_class;
	}
	
	
	
	
	public Teacher(String teacher_name, int teacher_subject, double teacher_salary, int teacher_age,
			String teacher_address,int teacher_class) {
		super();
		this.teacher_name = teacher_name;
		this.teacher_subject = teacher_subject;
		this.teacher_salary = teacher_salary;
		this.teacher_age = teacher_age;
		this.teacher_address = teacher_address;
		this.teacher_class= teacher_class;
	}


	public Teacher(int teacher_id, String teacher_name, int teacher_subject, String teacher_sub, double teacher_salary,
			int teacher_age, String teacher_address, int teacher_class) {
		super();
		this.teacher_id = teacher_id;
		this.teacher_name = teacher_name;
		this.teacher_subject = teacher_subject;
		this.teacher_sub = teacher_sub;
		this.teacher_salary = teacher_salary;
		this.teacher_age = teacher_age;
		this.teacher_address = teacher_address;
		this.teacher_class = teacher_class;
	}




	public int getTeacher_class() {
		return teacher_class;
	}




	public void setTeacher_class(int teacher_class) {
		this.teacher_class = teacher_class;
	}




	public int getTeacher_id() {
		return teacher_id;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public int getTeacher_subject() {
		return teacher_subject;
	}
	public double getTeacher_salary() {
		return teacher_salary;
	}
	public int getTeacher_age() {
		return teacher_age;
	}
	public String getTeacher_address() {
		return teacher_address;
	}
	
	public String getTeacher_sub() {
		return teacher_sub;
	}


	public void setTeacher_sub(String teacher_sub) {
		this.teacher_sub = teacher_sub;
	}




	@Override
	public String toString() {
		return "Teacher [teacher_id=" + teacher_id + ", teacher_name=" + teacher_name + ", teacher_subject="
				+ teacher_subject + ", teacher_sub=" + teacher_sub + ", teacher_salary=" + teacher_salary
				+ ", teacher_age=" + teacher_age + ", teacher_address=" + teacher_address + ", teacher_class="
				+ teacher_class + "]";
	}

	
	
	

}
