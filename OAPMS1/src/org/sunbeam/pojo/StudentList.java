package org.sunbeam.pojo;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="StudentList")
public class StudentList 
{
	private Integer serialNo;
	private Integer username;
	private String name;
	private String course;
	private String emailId;
	private double tenthper;
	private double twlper;
	private double agg;
	//private Boolean status;
	
	public StudentList() {  }

	public StudentList(Integer serialNo, Integer username, String name, String course, String emailId, double tenthper, double twlper,
			double agg, Boolean status) {
		this.serialNo = serialNo;
		this.username = username;
		this.name = name;
		this.course = course;
		this.emailId = emailId;
		this.tenthper = tenthper;
		this.twlper = twlper;
		this.agg = agg;
		//this.setStatus(status);
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="SerialNo")
	public Integer getSerialNo() {
		return serialNo;
	}

	public void setSerialNo(Integer serialNo) {
		this.serialNo = serialNo;
	}

	@Column(name="Username")
	public Integer getUsername() {
		return username;
	}

	public void setUsername(Integer username) {
		this.username = username;
	}

	@Column(name="Name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name="Course")
	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	@Column(name="EmailId")
	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	@Column(name="SSCPer")
	public double getTenthper() {
		return tenthper;
	}

	public void setTenthper(double tenthper) {
		this.tenthper = tenthper;
	}

	@Column(name="HSCPer")
	public double getTwlper() {
		return twlper;
	}

	public void setTwlper(double twlper) {
		this.twlper = twlper;
	}

	@Column(name="Aggregate")
	public double getAgg() {
		return agg;
	}

	public void setAgg(double agg) {
		this.agg = agg;
	}

	/*@Column(name="Placementstatus" , columnDefinition = "BOOLEAN DEFAULT false")
	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}*/



	

	
	
	
	
}
