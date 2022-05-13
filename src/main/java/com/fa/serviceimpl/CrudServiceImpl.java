package com.fa.serviceimpl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;

import com.fa.dto.CrudDto;
import com.fa.entity.CrudEntity;
import com.fa.entity.CrudEntityValidation;
import com.fa.reporistory.CrudRepoValidation;
import com.fa.reporistory.CrudReporistory;
import com.fa.service.CrudService;

@Service
public class CrudServiceImpl implements CrudService {

	@Resource
	CrudReporistory crudReporistory;
	@Resource
	CrudRepoValidation crudRepoValidation;
//	@Override
//	public String create(HttpServletRequest request) {
//		CrudEntity entity = new CrudEntity();
//		String result = "";
//		try {
//			if (!String.valueOf(request.getParameter("userName")).equalsIgnoreCase("")
//					&& !String.valueOf(request.getParameter("userPhoneNo")).equalsIgnoreCase("")
//					&& !String.valueOf(request.getParameter("userDob")).equalsIgnoreCase("")
//					&& !String.valueOf(request.getParameter("teamName")).equalsIgnoreCase("")
//					&& !String.valueOf(request.getParameter("gender")).equalsIgnoreCase("")
//					&& !String.valueOf(request.getParameter("companyName")).equalsIgnoreCase("")
//					&& !String.valueOf(request.getParameter("previousExperience")).equalsIgnoreCase("")
//					&& !String.valueOf(request.getParameter("email")).equalsIgnoreCase("")
//					&& !String.valueOf(request.getParameter("password")).equalsIgnoreCase("")
//					&& !String.valueOf(request.getParameter("name")).equalsIgnoreCase("")
//					&& !String.valueOf(request.getParameter("phone")).equalsIgnoreCase("")
//					&& !String.valueOf(request.getParameter("city")).equalsIgnoreCase("")
//					&& !String.valueOf(request.getParameter("state")).equalsIgnoreCase("")
//					&& !String.valueOf(request.getParameter("zipcode")).equalsIgnoreCase("")) {
//
//				entity.setName(request.getParameter("userName"));
//				entity.setPhone(request.getParameter("userPhoneNo"));
//				entity.setDob(request.getParameter("userDob"));
//				entity.setTeam(request.getParameter("teamName"));
//				entity.setGen(request.getParameter("gender"));
//				entity.setCname(request.getParameter("companyName"));
//				entity.setExp(request.getParameter("previousExperience"));
//				entity.setName(request.getParameter("name"));
//				entity.setPassword(request.getParameter("password"));
//				entity.setEmail(request.getParameter("email"));
//				entity.setPhone(request.getParameter("phone"));
//				entity.setCity(request.getParameter("city"));
//				entity.setState(request.getParameter("state"));
//				entity.setZipcode(request.getParameter("zipcode"));
//				entity.setDob(request.getParameter("dob"));
//				entity.setTeam(request.getParameter("team"));
//
//				crudReporistory.save(entity);
//				result = "Sucessfuly Data added";
//			} else {
//				result = "Record Empty";
//			}
//
//		} catch (Exception e) {
//			result = "Data did't added";
//		}
//		return result;
//
//	}

	@Override
	public List<CrudDto> getData() {
		List<CrudEntity> list = crudReporistory.findAll();
		List<CrudDto> dtoList = new ArrayList<>();
		for (CrudEntity itr : list) {
			CrudDto dto = new CrudDto();
			dto.setName(itr.getName());
			dto.setPhone(itr.getPhone());
			dto.setCity(itr.getCity());
			dto.setEmail(itr.getEmail());
			dto.setPassword(itr.getPassword());
			dto.setZipcode(itr.getZipcode());
			dto.setState(itr.getState());
			dto.setGender(itr.getGen());
			dto.setTeam(itr.getTeam());
			dto.setDob(itr.getDob());

			dtoList.add(dto);
		}
		return dtoList;
	}

	@Override
	public String edit(HttpServletRequest req) {
		String result="";
		try {
			
			System.err.println(req.getParameter("name"));
			CrudEntity entity=crudReporistory.getDataByName(req.getParameter("name"));
			
			entity.setName(req.getParameter("name"));
			entity.setPassword(req.getParameter("password"));
			entity.setEmail(req.getParameter("email"));
			entity.setPhone(req.getParameter("phone"));
			entity.setCity(req.getParameter("city"));
			entity.setState(req.getParameter("state"));
			entity.setZipcode(req.getParameter("zipcode"));
			entity.setGen(req.getParameter("gender"));
			entity.setDob(req.getParameter("dob"));
			entity.setTeam(req.getParameter("team"));
			
			crudReporistory.save(entity);
			result="saved";
		} catch (Exception e) {
			result="exception";
		}
		return result;
	}

	@Override
	public String delete(HttpServletRequest req) {
		String result ="";
		try {
			 CrudEntity entity =crudReporistory.getDataByName(req.getParameter("name"));
			 crudReporistory.deleteById(entity.getId());
			 result="sucess";
			
		} catch (Exception e) {
			result="failed";
		}
		return result;
	}

	@Override
	public String deleteByName(String name) {
		String result="";
		long id=crudReporistory.getIdByName(name);
		crudReporistory.deleteById(id);
		result=name+" "+"Record has been Deleted";
		return result;
	}

	@Override
	public String loginUser(String userName, String passWord) {
//		System.err.print(userName+" "+passWord);
		String result="";
//		System.err.println(crudRepoValidation.getUserName(userName)+" "+crudRepoValidation.getPassword(userName));
		if(userName.equalsIgnoreCase(crudRepoValidation.getUserName(userName))&&passWord.equalsIgnoreCase(crudRepoValidation.getPassword(userName))) {
			result="login successful";
		}else {
			result="Invalid Username and Password";
		}
		return result;
	}

	@Override
	public String create(String base64, String email, String passWord, String name, String phone, String dob, String state, String zipCode, String gender, String team, String city) {
		String result="";  
		if(!base64.equalsIgnoreCase("")) {
			CrudEntity entity = new CrudEntity();
			entity.setBase64Value(base64);
			entity.setEmail(email);
			entity.setPassword(passWord);
			entity.setName(name);
			entity.setPhone(phone);
			entity.setDob(dob);
			entity.setCity(city);
			entity.setState(state);
			entity.setZipcode(zipCode);
			entity.setGen(gender);
			entity.setTeam(team);
			crudReporistory.save(entity);
			result="Base64 Value saved sucessfully";
		}else {
			result="Base64 Value not saved";
		}
		
		return result;
	}

	@Override
	public void fileConversion() {
		 try {
			   
			   String fileLocation="/home/fasoftwares/Documents/login.xlsx";
			   XSSFWorkbook wbook=new XSSFWorkbook(fileLocation);
			   XSSFSheet sheet=wbook.getSheetAt(0);
			   String value;
			   
			   for (int i = 2; i<7; i++) {
				   CrudEntity entity=new CrudEntity();
				   org.apache.poi.xssf.usermodel.XSSFRow row = sheet.getRow(i);
			    
			    for (int j = 0; j < 2; j++) {
			     XSSFCell cell = row.getCell(j);
			     value = cell.getStringCellValue();
			    System.err.println(value);
			     
			     if(j==0) {entity.setName(value);}
			     if(j==1) {entity.setPassword(value);;}
			     crudReporistory.save(entity);
			     
			    } 
			   }
			   wbook.close();
			    
			  }
			  catch (Exception e) {
			   
			  }
		
	}


	

	
}
