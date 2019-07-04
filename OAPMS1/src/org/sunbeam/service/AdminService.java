package org.sunbeam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.sunbeam.dao.AdminDao;
import org.sunbeam.dao.IAdminDao;
import org.sunbeam.pojo.AdminPojo;
import org.sunbeam.pojo.CompanyDetails;
import org.sunbeam.pojo.StudentList;
import org.sunbeam.pojo.StudentPojo;


@Service
@Transactional
public class AdminService implements IAdminService 
{

	@Autowired
	IAdminDao dao;
	@Override
	public AdminPojo ValidateAdmin(Integer username, String password) {
		
		return this.dao.ValidateAdmin(username, password);
	}
	@Override
	public String StudentRegistration(StudentPojo student) {
		this.dao.StudentRegistration(student);
		System.out.println(student);
		return "success";
	}
	@Override
	public String CompanyRegistration(CompanyDetails company) {
		this.dao.CompanyRegistration(company);
		return "success";
	}
	@Override
	public String studentList(StudentList list) {
		this.dao.studentList(list);
		return "success";
	}
	@Override
	public List<CompanyDetails> showCompanyList() {
		
		return this.dao.showcompanyList();
	}
	@Override
	public List<StudentList> showStudentList() {
		
		return this.dao.showStudentList();
	}
	@Override
	public List<StudentList> shortlistedStudents(CompanyDetails company) {
		
		return this.dao.shortlistedStudents(company);
	}
     
}
