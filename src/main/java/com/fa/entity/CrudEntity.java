package com.fa.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "user")
public class CrudEntity {
	
	@Id
	@GeneratedValue (strategy = GenerationType . AUTO)
	private Long id;
	
	@Column (name = "name")
	private String name ;
	
	@Column (name = "phone")
	private  String phone;
	
	@Column (name = "dob")
	private String dob;
	
	@Column (name = "team")
	private String team;
	
	@Column (name = "gen")
	private String gen;
	
	@Column (name = "email")
	private String email;
	
	@Column (name = "password")
	private String password;
	
	@Column (name = "city")
	private String city ;
	
	@Column (name = "state")
	private String state ;
	
	@Column (name = "zipcode")
	private String zipcode ;
	
	@Column (name = "base64value")
	private String Base64Value ;
	
	public String getBase64Value() {
		return Base64Value;
	}

	public void setBase64Value(String base64Value) {
		Base64Value = base64Value;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGen() {
		return gen;
	}

	public void setGen(String gen) {
		this.gen = gen;
	}

	@Column (name = "cname")
	private String cname;
	
	@Column (name = "exp")
	private String exp;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getExp() {
		return exp;
	}

	public void setExp(String exp) {
		this.exp = exp;
	}
	
	

}
