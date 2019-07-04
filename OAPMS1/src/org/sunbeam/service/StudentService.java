package org.sunbeam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.sunbeam.dao.IStudentDao;
import org.sunbeam.pojo.AcademicDetails;
import org.sunbeam.pojo.AddressPojo;
import org.sunbeam.pojo.GraduationPojo;
import org.sunbeam.pojo.HSCDetails;
import org.sunbeam.pojo.PersonalDetailPojo;
import org.sunbeam.pojo.ProjectPojo;
import org.sunbeam.pojo.StudentPojo;

@Service
@Transactional
public class StudentService implements IStudentService
{
    @Autowired
	private IStudentDao dao;
	@Override
	public StudentPojo validateStudent(Integer username, String password) 
	{
		
		return this.dao.validateStudent(username, password);
	}
	@Override
	public String personalDetails(PersonalDetailPojo detail) {
		
		 this.dao.personalDetails(detail);
		 return "success";
	}
	@Override
	public String addressDetails(AddressPojo address) {
		this.dao.addressDetails(address);
		return "success";
	}
	@Override
	public String insertAcademicDetails(AcademicDetails academic) {
		this.dao.insertAcademicDetails(academic);
		return "success";
	}
	@Override
	public String insertProjectDetails(ProjectPojo project) {
		this.dao.insertProjectDetails(project);
		return "success";
	}
	@Override
	public PersonalDetailPojo showPersonalDetails(Integer username) {
		
		return this.dao.showPersonalDetails(username);
	}
	@Override
	public AddressPojo showAddressDetails(Integer username) {
		
		return this.dao.showAddressDetails(username);
	}
	@Override
	public String insertHSCDetails(HSCDetails hsc) {
		this.dao.insertHSCDetails(hsc);
		
		return "success";
	}
	@Override
	public GraduationPojo showGraduationDetails(Integer username) {
		
		return this.dao.showGraduationDetails(username);
	}
	@Override
	public HSCDetails showHSCDetails(Integer username) {
		
		return this.dao.showHSCDetails(username);
	}
	@Override
	public AcademicDetails showAcademicDetails(Integer username) {
		
		return this.dao.showAcademicDetails(username);
	}
	@Override
	public ProjectPojo showProjectDetails(Integer username) {
		
		return this.dao.showProjectDetails(username);
	}
	@Override
	public String insertGraduationDetails(GraduationPojo graduation) {
		this.dao.insertGraduationDetails(graduation);
		return "success";
	}
	@Override
	public String changePassword(StudentPojo student) {
		this.dao.changePassword(student);
		return "success";
	}

}
