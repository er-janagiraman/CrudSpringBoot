package com.fa.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.fa.dto.CrudDto;

public interface CrudService {
	

	public String create(String base64, String email, String passWord, String name, String phone, String dob, String state, String zipCode, String gender, String team, String city);

	public List<CrudDto> getData();

	public String edit(HttpServletRequest req);

	public String delete(HttpServletRequest req);

	public String deleteByName(String name);

	public String loginUser(String userName, String passWord);

	public void fileConversion();

}
