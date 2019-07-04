package org.sunbeam.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CompanyTable")
public class CompanyDetails 
{
    private Integer company_Id;
    private String company_name;
    private double ssc;
    private double hsc;
    private double graduation;
    private String dateOfRec;
    private Integer NoOfRec;
    private String technology;
    private String course;
    private String website;
    
    public CompanyDetails() {  }
    
    
	public CompanyDetails(Integer company_Id, String company_name, double ssc, double hsc, double graduation, String dateOfRec, Integer noOfRec,
			String technology,String course, String website) {
		
		this.company_Id = company_Id;
		this.company_name = company_name;
		this.setSsc(ssc);
		this.setHsc(hsc);
		this.setGraduation(graduation);
		this.dateOfRec = dateOfRec;
		this.NoOfRec = noOfRec;
		this.technology = technology;
		this.setCourse(course);
		this.website = website;
	}

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="Company_Id")
	public Integer getCompany_Id() {
		return company_Id;
	}

	public void setCompany_Id(Integer company_Id) {
		this.company_Id = company_Id;
	}
    
	@Column(name="Comapny_Name")
	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
    
	@Column(name="SSCPer")
	public double getSsc() {
		return ssc;
	}


	public void setSsc(double ssc) {
		this.ssc = ssc;
	}

	@Column(name="HSCPer")
	public double getHsc() {
		return hsc;
	}


	public void setHsc(double hsc) {
		this.hsc = hsc;
	}

	@Column(name="GraduationPer")
	public double getGraduation() {
		return graduation;
	}


	public void setGraduation(double graduation) {
		this.graduation = graduation;
	}


	@Column(name="DateOfRec")
	public String getDateOfRec() {
		return dateOfRec;
	}
	
	public void setDateOfRec(String dateOfRec) {
		this.dateOfRec = dateOfRec;
	}
	
	@Column(name="NoOfRec")
	public Integer getNoOfRec() {
		return NoOfRec;
	}

	public void setNoOfRec(Integer noOfRec) {
		NoOfRec = noOfRec;
	}

	@Column(name="Technology")
	public String getTechnology() {
		return technology;
	}

	public void setTechnology(String technology) {
		this.technology = technology;
	}

	@Column(name="Course")
	public String getCourse() {
		return course;
	}


	public void setCourse(String course) {
		this.course = course;
	}


	@Column(name="Website")
	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}
    
    
    
}
