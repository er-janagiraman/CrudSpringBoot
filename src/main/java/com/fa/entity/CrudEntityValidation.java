package com.fa.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="validation")
public class CrudEntityValidation {
	@Id
	@GeneratedValue (strategy = GenerationType . AUTO)
	private int id;
	private String username;
	private String password;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setUserPassword(String password) {
		this.password = password;
	}
}
