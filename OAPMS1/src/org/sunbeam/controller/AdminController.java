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
import org.sunbeam.pojo.AdminPojo;
import org.sunbeam.pojo.CompanyDetails;
import org.sunbeam.pojo.GraduationPojo;
import org.sunbeam.pojo.HSCDetails;
import org.sunbeam.pojo.PersonalDetailPojo;
import org.sunbeam.pojo.StudentList;
import org.sunbeam.pojo.StudentPojo;
import org.sunbeam.service.AdminService;
import org.sunbeam.service.IAdminService;
import org.sunbeam.email.*;

@Controller
@RequestMapping("admin")
public class AdminController 
{
	@Autowired
    private IAdminService service ;
	
	@Autowired
	private ServletContext context;
	
	@GetMapping("/login")
     public String showLogin(AdminPojo admin)
     {
		System.out.println("login");
    	 return "Login";
     }
	
	@PostMapping("/login")
	public String ValidateAdmin(AdminPojo admin, HttpSession session, Model map)
	{
		AdminPojo details = new AdminPojo();
			try
			{

				 details = this.service.ValidateAdmin(admin.getUsername(), admin.getPassword());
				System.out.println(details.toString());
				
			}
			catch(Exception e)
			{
				details = null;
			}
			
			if(details == null)
			{
				
				map.addAttribute("message", "Something went wrong. . Please try again !!!");
				return "Login";
				
			}
			
			
				//if(details!=null)
				  else
				{
				session.setAttribute("AdminDetails",details );
				return "Dashboard";
				}
			
		
		
		 
	}
	
	@GetMapping("/register")
	public String ShowRegistration(StudentPojo student)
	{
		return "Registration";
	}
	
	@PostMapping("/register")
	public String StudentRegistration(StudentPojo student)
	{
		System.out.println("student");
		
		
		String instatus = this.service.StudentRegistration(student);
		if(instatus.equals("success"))
		{
			Mailer.send("opms.placements@gmail.com", "RuchitaKamble@1994", student.getEmailId(), "Username and password", "Username : "+student.getUsername()+ "Password: "+student.getPassword());
			return "Dashboard";
		}
		
		return "Registration";
	}
	
	@GetMapping("/company")
	public String ShowCompanyRegistration(CompanyDetails company)
	{
		return "CompanyDetails";
	}
	
	@PostMapping("/company")
	public String CompanyRegistration(CompanyDetails company)
	{
		System.out.println("company");
		
		
		String instatus = this.service.CompanyRegistration(company);
		if(instatus.equals("success"))
		{
			
			return "Dashboard";
		}
		
		return "CompanyDetails";
	}
	
	
	@GetMapping("/clist")
	public String showCompanyList()
	{
		List<CompanyDetails> list = this.service.showCompanyList();
		if(list != null)
		{
			context.setAttribute("companyList", list);
			System.out.println("list : "+list);
			return "CompanyList";
		}
		return "Dashboard";
	}
	
	@GetMapping("/slist")
	public String showStudentList()
	{
		List<StudentList> slist = this.service.showStudentList();
		if(slist != null)
		{
			context.setAttribute("studentlist", slist);
			System.out.println("list : "+slist);
			return "StudentList";
		}
		return "Dashboard";
	}
	
	@PostMapping("/shortList")
	public String shortlistStudent(CompanyDetails company)
	{
		
		System.out.println("sslist : "+company.getSsc());
		List<StudentList> sslist = this.service.shortlistedStudents(company);
		if(sslist != null)
		{
			context.setAttribute("sstudentlist", sslist);
			System.out.println("slist : "+sslist);
			for (StudentList studentList : sslist)
			{
				Mailer.send("opms.placements@gmail.com", "RuchitaKamble@1994", studentList.getEmailId(), "Campus Placement Notice", "Dear Candidate,\n You are shortlisted for "+company.getCompany_name()+ "placement drive\n Company name : "+company.getCompany_name() + "\nDate of Recruitment : "+company.getDateOfRec()+"\nTechnology : "+company.getTechnology()+"\nCourse : "+company.getCourse()+"\nReporting Time : 9 a.m.\nBest Luck!!!" );
				return "ShortlistStudentList";
			}
			
			
			
		}
		return "Dashboard";
	}
	
	@GetMapping("/logout")
	public String invalidateSession(HttpSession session)
	{
		session.invalidate();
		return "redirect:../Index.jsp";
	}
	
}
