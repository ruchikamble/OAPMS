package org.sunbeam.dao;

import org.sunbeam.pojo.AddressPojo;
import org.sunbeam.pojo.GraduationPojo;
import org.sunbeam.pojo.HSCDetails;
import org.sunbeam.pojo.PersonalDetailPojo;
import org.sunbeam.pojo.ProjectPojo;
import org.sunbeam.pojo.StudentPojo;
import org.sunbeam.pojo.AcademicDetails;

public interface IStudentDao
{
     StudentPojo validateStudent(Integer username, String password);
     
     Integer personalDetails(PersonalDetailPojo detail);
     
     PersonalDetailPojo showPersonalDetails(Integer username);
     
     Integer addressDetails(AddressPojo address);
     
     AddressPojo showAddressDetails(Integer username);
     
     Integer insertAcademicDetails(AcademicDetails academic);
     
     AcademicDetails showAcademicDetails(Integer username);
     
     Integer insertHSCDetails(HSCDetails hsc);
     
     Integer insertProjectDetails(ProjectPojo project);
     
     public ProjectPojo showProjectDetails(Integer username);
     
     Integer insertGraduationDetails(GraduationPojo graduation);
     
      GraduationPojo showGraduationDetails(Integer username);
      
      HSCDetails showHSCDetails(Integer username);
      
      Integer changePassword(StudentPojo student);
}
