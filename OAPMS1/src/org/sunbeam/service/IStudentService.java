package org.sunbeam.service;

import org.sunbeam.pojo.AcademicDetails;
import org.sunbeam.pojo.AddressPojo;
import org.sunbeam.pojo.GraduationPojo;
import org.sunbeam.pojo.HSCDetails;
import org.sunbeam.pojo.PersonalDetailPojo;
import org.sunbeam.pojo.ProjectPojo;
import org.sunbeam.pojo.StudentPojo;

public interface IStudentService 
{
    StudentPojo validateStudent(Integer username, String password);
    
    String personalDetails(PersonalDetailPojo detail);
    
    PersonalDetailPojo showPersonalDetails(Integer username);
    
    String addressDetails(AddressPojo address);
    
    AddressPojo showAddressDetails(Integer username);
    
    String insertAcademicDetails(AcademicDetails academic);
    
    AcademicDetails showAcademicDetails(Integer username);
    
    String insertProjectDetails(ProjectPojo project);
    
    ProjectPojo showProjectDetails(Integer username);
    
    String insertHSCDetails(HSCDetails hsc);
    
    HSCDetails showHSCDetails(Integer username);
    
    String insertGraduationDetails(GraduationPojo graduation);
    
    GraduationPojo showGraduationDetails(Integer username);
    
    String changePassword(StudentPojo student);
}
