package org.sunbeam.pojo;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.OneToOne;
import javax.persistence.QueryHint;
import javax.persistence.Table;

@Entity
@Table(name="Student")
@NamedNativeQueries({
	@NamedNativeQuery(name="qry_updatePassword",
	query="{CALL updateQuery(:password, :regId9) }",
	hints={@QueryHint(name="org:hibernate.callable",value="true")},
	resultClass=StudentPojo.class
	)
})
public class StudentPojo 
{
   private Integer username;
   private String firstName;
   private String lastName;
   private String emailId;
   private String password;
 
   
   public StudentPojo() {  }

public StudentPojo(Integer username, String firstName, String lastName, String emailId, String password) {

	this.username = username;
	this.firstName = firstName;
	this.lastName = lastName;
	this.emailId = emailId;
	this.password = password;
}

@Id
@Column(name="RegistrationNo")
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

@Column(name="EmailId")
public String getEmailId() {
	return emailId;
}

public void setEmailId(String emailId) {
	this.emailId = emailId;
}

@Column(name="Password")
public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

@Override
public String toString() {
	return "StudentPojo [Username=" + username + ", FirstName=" + firstName + ", LastName=" + lastName + ", EmailId="
			+ emailId + ", Password=" + password + "]";
}





   
   
}
