package org.sunbeam.dao;



import java.util.List;

import org.sunbeam.pojo.AdminPojo;
import org.sunbeam.pojo.CompanyDetails;
import org.sunbeam.pojo.StudentList;
import org.sunbeam.pojo.StudentPojo;

public interface IAdminDao 
{
   AdminPojo ValidateAdmin(Integer username, String password);
   
   Integer StudentRegistration(StudentPojo student);
   
   Integer CompanyRegistration(CompanyDetails company);
   
   Integer studentList(StudentList list);
   
   List<CompanyDetails> showcompanyList();
   
   List<StudentList> showStudentList();
   
   List<StudentList> shortlistedStudents(CompanyDetails company);
   
   
}
