package org.sunbeam.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.sunbeam.pojo.AcademicDetails;
import org.sunbeam.pojo.AddressPojo;
import org.sunbeam.pojo.AdminPojo;
import org.sunbeam.pojo.GraduationPojo;
import org.sunbeam.pojo.HSCDetails;
import org.sunbeam.pojo.PersonalDetailPojo;
import org.sunbeam.pojo.ProjectPojo;
import org.sunbeam.pojo.StudentList;
import org.sunbeam.pojo.StudentPojo;
import org.sunbeam.service.IAdminService;
import org.sunbeam.service.IStudentService;

@Controller
@RequestMapping("student/*")
public class StudentController 
{
	@Autowired
     private IStudentService service;
	
	@Autowired
	private IAdminService aservice;
	
	@Autowired
	private ServletContext context;
	
	private StudentList list = new StudentList();
	
	@GetMapping("/slogin")
	public String ShowLoginStudent(StudentPojo student)
	{
		return "SLogin";
	}
	
	@PostMapping("/slogin")
	public String ValidateStudent(StudentPojo student, HttpSession session, Model map)
	{
		System.out.println("validate");
		StudentPojo details = new StudentPojo();
		try
		{

			 details = this.service.validateStudent(student.getUsername(),student.getPassword());
			System.out.println(details.toString());
			
		}
		catch(Exception e)
		{
			details = null;
		}
		
		if(details == null)
		{
			
			map.addAttribute("message", "Something went wrong. Please try again !!!");
			return "Login";
			
		}
		
		 else
			{
			session.setAttribute("studentDetails",details );
			return "StudentDashboard";
			}

		
	}
	
	@GetMapping("/personaldetails")
	public String ShowPersonalDetails(PersonalDetailPojo detail)
	{
		
		System.out.println("personaldetails");
		return "PersonalDetails";
	}
	
	@PostMapping("/personaldetails")
	public String PersonalDetails(PersonalDetailPojo detail, HttpSession session)
	{
		System.out.println("insertpersonaldetails");
		
		StudentPojo pojo =  (StudentPojo) session.getAttribute("studentDetails");
		detail.setUsername(pojo.getUsername());
		
		String regStatus = this.service.personalDetails(detail);
		if(regStatus.equals("success"))
		{
			
			PersonalDetailPojo personalDetails = this.service.showPersonalDetails(pojo.getUsername());
			
			list.setUsername(pojo.getUsername());
			list.setName(pojo.getFirstName()+pojo.getLastName());
			list.setCourse(personalDetails.getCourse());
			list.setEmailId(pojo.getEmailId());
			//String sststatus = this.aservice.studentList(list);
			System.out.println("Personal details : "+personalDetails.toString());
			if(personalDetails!= null)
			{
				context.setAttribute("personal", personalDetails);
			}
			//if(sststatus.equals("success"))
			return "PersonalDetails";
			
		}
		return "PersonalDetails";
	}
	
	@GetMapping("/address")
	public String ShowAddress(AddressPojo address)
	{
		System.out.println("address");
		return "Address";
	}
	
	@PostMapping("/address")
	public String InsertAddress(AddressPojo address, HttpSession session)
	{
		StudentPojo pojo =  (StudentPojo) session.getAttribute("studentDetails");
		address.setUsername(pojo.getUsername());

		String inStatus = this.service.addressDetails(address);
		System.out.println(address);
		if(inStatus.equals("success"))
		{
			//AddressPojo address1 = this.service.showAddressDetails(pojo.getUsername());
			
				context.setAttribute("addressDetails", address);
			
			return "Address";
			
		}
		
		return "Address";
	}
	
	@GetMapping("/academic")
	public String showAcademic(AcademicDetails academic)
	{
		return "AcademicDetails";
	}
	
	@PostMapping("/academic")
	public String insertAcademicDetails(AcademicDetails academic, HttpSession session)
	{
		StudentPojo pojo =  (StudentPojo) session.getAttribute("studentDetails");
		System.out.println("academics"+academic.getTotalMarks());
		
		academic.setPercentage(academic.getObtainedMarks()*100/ academic.getTotalMarks());
		
		academic.setUsername(pojo.getUsername());

		String inStatus = this.service.insertAcademicDetails(academic);
		System.out.println(academic);
		if(inStatus.equals("success"))
		{
			AcademicDetails academic1 = this.service.showAcademicDetails(pojo.getUsername());
			if(academic1!= null)
			{
				context.setAttribute("academicDetails", academic1);
				list.setTenthper(academic1.getPercentage());
				System.out.println("10th :"+list.getTenthper());
				//this.aservice.studentList(list);
			}
			
			return "AcademicDetails";
		}
		
		return "AcademicDetails";
	}
	
	@GetMapping("/graduation")
	public String showGraduation(GraduationPojo graduation)
	{
		return "GraduationDetails";
	}
	
	@PostMapping("/graduation")
	public String insertGraduation(GraduationPojo graduation, HttpSession session)
	{
		StudentPojo pojo =  (StudentPojo) session.getAttribute("studentDetails");
		graduation.setUsername(pojo.getUsername());
        graduation.setAggregate((graduation.getSem1O() + graduation.getSem2O() + graduation.getSem3O() + graduation.getSem4O() + graduation.getSem5O() + graduation.getSem6O() + graduation.getSem7O() + graduation.getSem8O())*100/(graduation.getSem1T() + graduation.getSem2T() + graduation.getSem3T() + graduation.getSem4T() + graduation.getSem5T() + graduation.getSem6T() + graduation.getSem7T() + graduation.getSem8T()));
		String inStatus = this.service.insertGraduationDetails(graduation);
		
		if(inStatus.equals("success"))
		{
			GraduationPojo graduation1 = this.service.showGraduationDetails(pojo.getUsername());
			if(graduation1!= null)
			{
				context.setAttribute("graduationDetails", graduation1);
				list.setAgg(graduation1.getAggregate());
				this.aservice.studentList(list);
				if(list != null)
				{
					context.setAttribute("studentlist",list);
				}
			}
			return "GraduationDetails";
		}
		
		return "GraduationDetails";
	
	}
	
	@GetMapping("/project")
	public String showProject(ProjectPojo project)
	{
		return "ProjectDetails";
	}
	
	@PostMapping("/project")
	public String insertProject(ProjectPojo project, HttpSession session)
	{
		StudentPojo pojo =  (StudentPojo) session.getAttribute("studentDetails");
		project.setUsername(pojo.getUsername());

		String inStatus = this.service.insertProjectDetails(project);
		System.out.println(project);
		if(inStatus.equals("success"))
		{
			ProjectPojo project1 = this.service.showProjectDetails(pojo.getUsername());
			if(project1!= null)
			{
				context.setAttribute("projectDetails", project1);
			}
			return "ProjectDetails";
		}
		
		return "ProjectDetails";
	
	}
	
	@GetMapping("/hsc")
	public String showHSC(HSCDetails hsc)
	{
		return "HSCDetails";
	}
	
	@PostMapping("/hsc")
	public String insertHSCDetails(HSCDetails hsc,HttpSession session)
	{
		StudentPojo pojo =  (StudentPojo) session.getAttribute("studentDetails");
		hsc.setUsername(pojo.getUsername());
		System.out.println("hsc : "+hsc.toString());
		System.out.println("us :"+hsc.getHboard());
		System.out.println("hsc : "+hsc.getHobtainedMarks());
		System.out.println("hsc : "+hsc.getHtotalMarks());
		hsc.setHPercentage(hsc.getHobtainedMarks()*100/hsc.getHtotalMarks());
		System.out.println("per :"+hsc.getHPercentage());
		String inStatus = this.service.insertHSCDetails(hsc);
		System.out.println(hsc);
		if(inStatus.equals("success"))
		{
			HSCDetails hsc1 = this.service.showHSCDetails(pojo.getUsername());
			if(hsc1!= null)
			{
				context.setAttribute("hscDetails", hsc1);
				list.setTwlper(hsc1.getHPercentage());
				//this.aservice.studentList(list);
		}
			return "HSCDetails";
		}
		
		return "HSCDetails";
	}
	
	@GetMapping("/cpassword")
	public String showChangePassword(StudentPojo student)
	{
		return "ChangePassword";
	}
	
	@PostMapping("/cpassword")
	public String changePassword(StudentPojo student)
	{
		String inStatus = this.service.changePassword(student);
		if(inStatus.equals("success"))
		{
			return "Login";
		}
		return "ChangePassword";
	}
	
	@GetMapping("/logout")
	public String invalidateSession(HttpSession session)
	{
		session.invalidate();
		return "redirect:../Index.jsp";
	}
}
