package org.sunbeam.pojo;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="AddressTable")
public class AddressPojo 
{
   private Integer addressId;
   private String address1;
   private String address2;
   private String city;
   private String state;
   private String country;
   private Integer pincode;
   private Integer username;
   
   
   public AddressPojo() { }

public AddressPojo(Integer addressId,String address1, String address2, String city, String state,String country, Integer pincode, Integer username) {
	
	this.addressId = addressId;
	this.address1 = address1;
	this.address2 = address2;
	this.city = city;
	this.state = state;
	this.country = country;
	this.pincode = pincode;
	this.username = username;
}

@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="AddressId")
public Integer getAddressId() {
	return addressId;
}

public void setAddressId(Integer addressId) {
	this.addressId = addressId;
} 
@Column(name="Address1")
public String getAddress1() {
	return address1;
}

public void setAddress1(String address1) {
	this.address1 = address1;
}

@Column(name="Address2")
public String getAddress2() {
	return address2;
}

public void setAddress2(String address2) {
	this.address2 = address2;
}

@Column(name="City")
public String getCity() {
	return city;
}

public void setCity(String city) {
	this.city = city;
}

@Column(name="State")
public String getState() {
	return state;
}

public void setState(String state) {
	this.state = state;
}

@Column(name="Country")
public String getCountry() {
	return country;
}

public void setCountry(String country) {
	this.country = country;
}

@Column(name="Pincode")
public Integer getPincode() {
	return pincode;
}

public void setPincode(Integer pincode) {
	this.pincode = pincode;
}

@Column(name="Username")
public Integer getUsername() {
	return username;
}

public void setUsername(Integer username) {
	this.username = username;
}





}
