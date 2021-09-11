package com.jsp.model;

public class User {
	
	
	private String username;
	private String password;
	private String password1;
	private int role;
	
	
	
	public User(String username, String password, String password1, int role) {
		super();
		this.username = username;
		this.password = password;
		this.password1 = password1;
		this.role = role;
	}



	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}



	public String getPassword1() {
		return password1;
	}



	public void setPassword1(String password1) {
		this.password1 = password1;
	}



	public int getRole() {
		return role;
	}



	public void setRole(int role) {
		this.role = role;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
