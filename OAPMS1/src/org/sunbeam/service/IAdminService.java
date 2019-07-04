package org.sunbeam.service;

import java.util.List;

import org.sunbeam.pojo.AdminPojo;
import org.sunbeam.pojo.CompanyDetails;
import org.sunbeam.pojo.StudentList;
import org.sunbeam.pojo.StudentPojo;

public interface IAdminService 
{
    AdminPojo ValidateAdmin(Integer username, String password);
    String StudentRegistration(StudentPojo student);
    String CompanyRegistration(CompanyDetails company);
    String studentList(StudentList list);
    List<CompanyDetails> showCompanyList();
    List<StudentList> showStudentList();
    List<StudentList> shortlistedStudents(CompanyDetails company);
}
