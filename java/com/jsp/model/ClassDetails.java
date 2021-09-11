package com.jsp.model;

public class ClassDetails {
	
	private String ClassName;
	private String studentFirst;
	private String studentLast;
	private String studentPhone;
	private String studentAddress;
	private String teacherName;
	private String teacherSubject;
	private String teacherAddress;
	
	public ClassDetails(String className, String studentFirst, String studentLast, String studentPhone,
			String studentAddress, String teacherName, String teacherSubject, String teacherAddress) {
		super();
		ClassName = className;
		this.studentFirst = studentFirst;
		this.studentLast = studentLast;
		this.studentPhone = studentPhone;
		this.studentAddress = studentAddress;
		this.teacherName = teacherName;
		this.teacherSubject = teacherSubject;
		this.teacherAddress = teacherAddress;
	}

	public String getClassName() {
		return ClassName;
	}

	public void setClassName(String className) {
		ClassName = className;
	}

	public String getStudentFirst() {
		return studentFirst;
	}

	public void setStudentFirst(String studentFirst) {
		this.studentFirst = studentFirst;
	}

	public String getStudentLast() {
		return studentLast;
	}

	public void setStudentLast(String studentLast) {
		this.studentLast = studentLast;
	}

	public String getStudentPhone() {
		return studentPhone;
	}

	public void setStudentPhone(String studentPhone) {
		this.studentPhone = studentPhone;
	}

	public String getStudentAddress() {
		return studentAddress;
	}

	public void setStudentAddress(String studentAddress) {
		this.studentAddress = studentAddress;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getTeacherSubject() {
		return teacherSubject;
	}

	public void setTeacherSubject(String teacherSubject) {
		this.teacherSubject = teacherSubject;
	}

	public String getTeacherAddress() {
		return teacherAddress;
	}

	public void setTeacherAddress(String teacherAddress) {
		this.teacherAddress = teacherAddress;
	}
	
	
	
	

}
