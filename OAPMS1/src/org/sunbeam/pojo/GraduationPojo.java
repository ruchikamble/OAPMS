package org.sunbeam.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="GraduationDetails")
public class GraduationPojo 
{
	private Integer graduationId;
	private String degree;
	private String university;
	private String institute;
	private String specialization;
	private String grade;
	private Integer totalBackLogs;
	private Integer noOfAttempts;
	private Integer sem1T;
	private Integer sem1O;
	private Integer sem2T;
	private Integer sem2O;
	private Integer sem3T;
	private Integer sem3O;
	private Integer sem4T;
	private Integer sem4O;
	private Integer sem5T;
	private Integer sem5O;
	private Integer sem6T;
	private Integer sem6O;
	private Integer sem7T;
	private Integer sem7O;
	private Integer sem8T;
	private Integer sem8O;
	private Integer yearOfAd;
	private Integer yearOfPass;
	private float unDegPer;
	private double aggregate;
	private Integer username;
	
	public GraduationPojo() {  }

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="GraduationId")
	public Integer getGraduationId() {
		return graduationId;
	}

	public void setGraduationId(Integer graduationId) {
		this.graduationId = graduationId;
	}

	@Column(name="Degree")
	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	@Column(name="University")
	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	@Column(name="Institute")
	public String getInstitute() {
		return institute;
	}

	public void setInstitute(String institute) {
		this.institute = institute;
	}

	@Column(name="Specialization")
	public String getSpecialization() {
		return specialization;
	}

	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}

	@Column(name="Grade")
	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	@Column(name="TotalBackLogs")
	public Integer getTotalBackLogs() {
		return totalBackLogs;
	}

	public void setTotalBackLogs(Integer totalBackLogs) {
		this.totalBackLogs = totalBackLogs;
	}

	@Column(name="NoOfAttempts")
	public Integer getNoOfAttempts() {
		return noOfAttempts;
	}

	public void setNoOfAttempts(Integer noOfAttempts) {
		this.noOfAttempts = noOfAttempts;
	}

	@Column(name="Sem1T")
	public Integer getSem1T() {
		return sem1T;
	}

	public void setSem1T(Integer sem1t) {
		sem1T = sem1t;
	}

	@Column(name="Sem1O")
	public Integer getSem1O() {
		return sem1O;
	}

	public void setSem1O(Integer sem1o) {
		sem1O = sem1o;
	}

	@Column(name="Sem2T")
	public Integer getSem2T() {
		return sem2T;
	}

	public void setSem2T(Integer sem2t) {
		sem2T = sem2t;
	}

	@Column(name="Sem2O")
	public Integer getSem2O() {
		return sem2O;
	}

	public void setSem2O(Integer sem2o) {
		sem2O = sem2o;
	}

	@Column(name="Sem3T")
	public Integer getSem3T() {
		return sem3T;
	}

	public void setSem3T(Integer sem3t) {
		sem3T = sem3t;
	}

	@Column(name="Sem3O")
	public Integer getSem3O() {
		return sem3O;
	}

	public void setSem3O(Integer sem3o) {
		sem3O = sem3o;
	}

	@Column(name="Sem4T")
	public Integer getSem4T() {
		return sem4T;
	}

	public void setSem4T(Integer sem4t) {
		sem4T = sem4t;
	}

	@Column(name="Sem4O")
	public Integer getSem4O() {
		return sem4O;
	}

	public void setSem4O(Integer sem4o) {
		sem4O = sem4o;
	}

	@Column(name="Sem5T")
	public Integer getSem5T() {
		return sem5T;
	}

	public void setSem5T(Integer sem5t) {
		sem5T = sem5t;
	}

	@Column(name="Sem5O")
	public Integer getSem5O() {
		return sem5O;
	}

	public void setSem5O(Integer sem5o) {
		sem5O = sem5o;
	}

	@Column(name="Sem6T")
	public Integer getSem6T() {
		return sem6T;
	}

	public void setSem6T(Integer sem6t) {
		sem6T = sem6t;
	}

	@Column(name="Sem6O")
	public Integer getSem6O() {
		return sem6O;
	}

	public void setSem6O(Integer sem6o) {
		sem6O = sem6o;
	}

	@Column(name="Sem7T")
	public Integer getSem7T() {
		return sem7T;
	}

	public void setSem7T(Integer sem7t) {
		sem7T = sem7t;
	}

	@Column(name="Sem7O")
	public Integer getSem7O() {
		return sem7O;
	}

	public void setSem7O(Integer sem7o) {
		sem7O = sem7o;
	}

	@Column(name="Sem8T")
	public Integer getSem8T() {
		return sem8T;
	}

	public void setSem8T(Integer sem8t) {
		sem8T = sem8t;
	}

	@Column(name="Sem8O")
	public Integer getSem8O() {
		return sem8O;
	}

	public void setSem8O(Integer sem8o) {
		sem8O = sem8o;
	}

	@Column(name="YearOfAd")
	public Integer getYearOfAd() {
		return yearOfAd;
	}

	public void setYearOfAd(Integer yearOfAd) {
		this.yearOfAd = yearOfAd;
	}

	@Column(name="YearOfPass")
	public Integer getYearOfPass() {
		return yearOfPass;
	}

	public void setYearOfPass(Integer yearOfPass) {
		this.yearOfPass = yearOfPass;
	}

	@Column(name="unDegPer")
	public float getUnDegPer() {
		return unDegPer;
	}

	public void setUnDegPer(float unDegPer) {
		this.unDegPer = unDegPer;
	}

	@Column(name="Aggregate")
	public double getAggregate() {
		return aggregate;
	}

	public void setAggregate(double aggregate) {
		this.aggregate = aggregate;
	}

	@Column(name="Username")
	public Integer getUsername() {
		return username;
	}

	public void setUsername(Integer username) {
		this.username = username;
	}
	
	
}
