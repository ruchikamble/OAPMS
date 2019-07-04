package org.sunbeam.pojo;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="PersonalDetails")
public class PersonalDetailPojo
{
	private Integer personalId;
   
   private String course;
   private String gender;
   private String dob;
   private Integer mobNo;
   private String nationality;
   private String idNo;
   private Integer username;
   
   public PersonalDetailPojo() {  }

public PersonalDetailPojo(Integer peronalId, String course, String gender, String dob, Integer mobNo, String nationality,
		String idNo) {
	super();
	this.personalId = peronalId;
	this.course = course;
	this.gender = gender;
	this.dob = dob;
	this.mobNo = mobNo;
	this.nationality = nationality;
	this.idNo = idNo;
}

@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="PersonalId")
public Integer getPersonalId() {
	return personalId;
}

public void setPersonalId(Integer personalId) {
	this.personalId = personalId;}

@Column(name="Course")
public String getCourse() {
	return course;
}

public void setCourse(String course) {
	this.course = course;
}

@Column(name="Gender")
public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

@Column(name="Dob")

public String getDob() {
	return dob;
}

public void setDob(String dob) {
	this.dob = dob;
}

@Column(name="MobileNo")
public Integer getMobNo() {
	return mobNo;
}

public void setMobNo(Integer mobNo) {
	this.mobNo = mobNo;
}

@Column(name="Nationality")
public String getNationality() {
	return nationality;
}

public void setNationality(String nationality) {
	this.nationality = nationality;
}

@Column(name="IDNo")
public String getIdNo() {
	return idNo;
}

public void setIdNo(String idNo) {
	this.idNo = idNo;
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
	return "PersonalDetailPojo [personalId=" + personalId + ", course=" + course + ", gender=" + gender + ", dob=" + dob
			+ ", mobNo=" + mobNo + ", nationality=" + nationality + ", idNo=" + idNo + ", username=" + username + "]";
}






   
   
}
