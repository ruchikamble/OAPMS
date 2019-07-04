package org.sunbeam.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Admin")
public class AdminPojo 
{
   private Integer username;
   private String  firstName;
   private String lastName;
   private String password;
   private String emailId;
   
   public AdminPojo() {  }

public AdminPojo(Integer username, String firstName, String lastName, String password, String emailId) {
	super();
	this.username = username;
	this.firstName = firstName;
	this.lastName = lastName;
	this.password = password;
	this.emailId = emailId;
}

@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="AdminId")
public Integer getUsername() {
	return username;
}

public void setUsername(Integer username) {
	this.username = username;
}

@Column(name="FirstName")
public String getFirstName() {
	return firstName;
}


public void setFirstName(String firstName) {
	this.firstName = firstName;
}

@Column(name="LastName")
public String getLastName() {
	return lastName;
}

public void setLastName(String lastName) {
	this.lastName = lastName;
}

@Column(name="Password")
public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}
   
@Column(name="EmailId")
  public String getEmailId() {
	return emailId;
}
  
  public void setEmailId(String emailId) {
	this.emailId = emailId;
}

@Override
public String toString() {
	return "AdminPojo [username=" + username + ", firstName=" + firstName + ", lastName=" + lastName + ", password="
			+ password + ", emailId=" + emailId + "]";
}
   
}
