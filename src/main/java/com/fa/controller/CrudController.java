package com.fa.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.fa.dto.CrudDto;
import com.fa.reporistory.CrudRepoValidation;
import com.fa.service.CrudService;

@Controller
public class CrudController {

	@Resource
	CrudService crudService;

	@Resource
	CrudRepoValidation validation;

	@RequestMapping(value = "/sign", method = RequestMethod.GET)
	public ModelAndView signup(HttpServletRequest request, HttpServletResponse Response) {
		ModelAndView mvc = new ModelAndView("index");
		return mvc;
	}

	@RequestMapping(value = "/save", method = RequestMethod.GET)
	public ModelAndView save(HttpServletRequest request, HttpServletResponse Response) {
		ModelAndView mvc = new ModelAndView("login");
		String str = "";
		mvc.addObject("result", str);
		return mvc;
//	public ResponseEntity<String> save(HttpServletRequest request,HttpServletResponse Response) {
//	    return new ResponseEntity<>(str, HttpStatus.OK);
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView home(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mvc = new ModelAndView("login");
		return mvc;
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mvc = new ModelAndView("home");
		return mvc;
	}

	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public ModelAndView form(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mvc = new ModelAndView("home");
		return mvc;
	}

//	@RequestMapping(value = "/creation", method = RequestMethod.GET)
//	public ModelAndView creation(HttpServletRequest req, HttpServletResponse res) {
//		ModelAndView mvc = new ModelAndView("creation");
//		String str = "";
//		str = crudService.create(req);
//		mvc.addObject("result", str);
//		return mvc;
//	}

	@RequestMapping(value = "/creation", method = RequestMethod.GET)
	public ModelAndView creation() {
		ModelAndView mvc = new ModelAndView("creation");

		return mvc;
	}

	@RequestMapping(value = "/base64", method = RequestMethod.POST)
	public ResponseEntity<String> base64(@RequestParam("base64") String base64, @RequestParam("email") String email,
			@RequestParam("passWord") String passWord, @RequestParam("name") String name,
			@RequestParam("phone") String phone, @RequestParam("dob") String dob, @RequestParam("state") String state,
			@RequestParam("zipCode") String zipCode, @RequestParam("gender") String gender,
			@RequestParam("team") String team, @RequestParam("city") String city) {

		String str = crudService.create(base64, email, passWord, name, phone, dob, state, zipCode, gender, team, city);
		/* System.err.println(str); */
		return new ResponseEntity<String>(str, HttpStatus.OK);
	}

	@RequestMapping(value = "/getdata", method = RequestMethod.GET)
	public ModelAndView getData() {
		ModelAndView mvc = new ModelAndView("index");
		List<CrudDto> dto = crudService.getData();
		mvc.addObject("data", dto);
		return mvc;
	}

	@RequestMapping(value = "/table", method = RequestMethod.GET)
	public ModelAndView table() {
		ModelAndView mvc = new ModelAndView("table");
		List<CrudDto> dto = crudService.getData();
		mvc.addObject("data", dto);
		return mvc;
	}

	@RequestMapping(value = "/ajaxtable", method = RequestMethod.GET)
	public ModelAndView ajaxtable() {
		ModelAndView mvc = new ModelAndView("ajaxTable");

		return mvc;
	}

	@RequestMapping(value = "/ajaxdata", method = RequestMethod.GET)
	public ResponseEntity<List<CrudDto>> ajaxData() {

		List<CrudDto> dto = crudService.getData();
		return new ResponseEntity<List<CrudDto>>(dto, HttpStatus.OK);
	}

	@RequestMapping(value = "/modal", method = RequestMethod.GET)
	public ModelAndView modal() {
		ModelAndView mvc = new ModelAndView("modal");

		return mvc;
	}

	@RequestMapping(value = "/edit1", method = RequestMethod.GET)
	public ModelAndView edit(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mvc = null;
		String str = "";
		str = crudService.edit(req);
		System.err.println(str);
		if (str.equalsIgnoreCase("saved")) {
			ModelAndView mv = new ModelAndView("modal");
			return mv;
		}
		return mvc;
	}

	@RequestMapping(value = "/loginUser", method = RequestMethod.POST)
	public ResponseEntity<String> loginUser(@RequestParam("userName") String userName,
			@RequestParam("passWord") String passWord) {
//		System.err.print(userName+" "+passWord);
		String str = crudService.loginUser(userName, passWord);
		System.err.println(str);
		return new ResponseEntity<String>(str, HttpStatus.OK);
	}

	@RequestMapping(value = "/datatable", method = RequestMethod.GET)
	public ModelAndView dataTable() {
		ModelAndView mvc = new ModelAndView("datatable");
		List<CrudDto> dto = crudService.getData();
		mvc.addObject("data", dto);
		return mvc;
	}

	@RequestMapping(value = "/deleteByName", method = RequestMethod.GET)
	public ResponseEntity<String> deleteByName(@RequestParam("username") String name) {
		String str = crudService.deleteByName(name);
		return new ResponseEntity<String>(str, HttpStatus.OK);
	}

	@RequestMapping(value = "/fileconversion", method = RequestMethod.GET)
	public ModelAndView xlsxFileConversion() {
		crudService.fileConversion();
		ModelAndView ref = new ModelAndView("creation");
		return ref;
	}

}
