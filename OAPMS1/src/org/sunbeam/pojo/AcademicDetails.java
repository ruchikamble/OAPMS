package org.sunbeam.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SSCDetails")
public class AcademicDetails 
{
  private Integer academicId;
  private String degree;
  private String institute;
  private String board;
  private String grade;
  private Integer yearOfPass;
  private Integer obtainedMarks;
  private Integer totalMarks;
  private double percentage;
  private Integer username;
  
  public AcademicDetails() { }

public AcademicDetails(Integer academicId, String degree, String institute, String board, String grade,
		Integer yearOfPass, Integer obtainedMarks, Integer totalMarks,double percentage, Integer username) {
	
	this.academicId = academicId;
	this.degree = degree;
	this.institute = institute;
	this.board = board;
	this.grade = grade;
	this.yearOfPass = yearOfPass;
	this.obtainedMarks = obtainedMarks;
	this.totalMarks = totalMarks;
	this.percentage = percentage;
	this.username = username;
}

@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="AcademicId")
public Integer getAcademicId() {
	return academicId;
}

public void setAcademicId(Integer academicId) {
	this.academicId = academicId;
}

@Column(name="Degree")
public String getDegree() {
	return degree;
}

public void setDegree(String degree) {
	this.degree = degree;
}

@Column(name="Institute")
public String getInstitute() {
	return institute;
}

public void setInstitute(String institute) {
	this.institute = institute;
}

@Column(name="Board")
public String getBoard() {
	return board;
}

public void setBoard(String board) {
	this.board = board;
}

@Column(name="Grade")
public String getGrade() {
	return grade;
}

public void setGrade(String grade) {
	this.grade = grade;
}

@Column(name="YearOfPassing")
public Integer getYearOfPass() {
	return yearOfPass;
}

public void setYearOfPass(Integer yearOfPass) {
	this.yearOfPass = yearOfPass;
}

@Column(name="ObtainedMarks")
public Integer getObtainedMarks() {
	return obtainedMarks;
}

public void setObtainedMarks(Integer obtainedMarks) {
	this.obtainedMarks = obtainedMarks;
}

@Column(name="TotalMarks")
public Integer getTotalMarks() {
	return totalMarks;
}

public void setTotalMarks(Integer totalMarks) {
	this.totalMarks = totalMarks;
}

@Column(name="Percentage")
public double getPercentage() {
	return percentage;
}

public void setPercentage(double percentage) {
	this.percentage = percentage;
}
  
  
@Column(name="Username")
public Integer getUsername() {
	return username;
}

public void setUsername(Integer username) {
	this.username = username;
}

@Override
public String toString() {
	return "AcademicDetails [academicId=" + academicId + ", degree=" + degree + ", institute=" + institute + ", board="
			+ board + ", grade=" + grade + ", yearOfPass=" + yearOfPass + ", obtainedMarks=" + obtainedMarks
			+ ", totalMarks=" + totalMarks + ", percentage=" + percentage + ", username=" + username + "]";
}


}
