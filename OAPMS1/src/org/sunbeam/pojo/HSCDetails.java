package org.sunbeam.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="HSCDetails")
public class HSCDetails 
{
	private Integer hacademicId;
	private String hdegree;
	private String hinstitute;
	private String hboard;
	private String hgrade;
	private Integer hyearOfPass;
	private Integer hobtainedMarks;
	private Integer htotalMarks;
	private double hpercentage;
	private Integer username;
	
	public HSCDetails() {
		
	}

	public HSCDetails(Integer hacademicId, String hdegree, String hinstitute, String hboard, String hgrade,
			Integer hyearOfPass, Integer hobtainedMarks, Integer htotalMarks, double hpercentage, Integer username) {
		super();
		this.hacademicId = hacademicId;
		this.hdegree = hdegree;
		this.hinstitute = hinstitute;
		this.hboard = hboard;
		this.hgrade = hgrade;
		this.hyearOfPass = hyearOfPass;
		this.hobtainedMarks = hobtainedMarks;
		this.htotalMarks = htotalMarks;
		this.hpercentage = hpercentage;
		this.username = username;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="HacademicId")
	public Integer getHacademicId() {
		return hacademicId;
	}

	public void setHacademicId(Integer hacademicId) {
		this.hacademicId = hacademicId;
	}

	@Column(name="Hdegree")
	public String getHdegree() {
		return hdegree;
	}

	public void setHdegree(String hdegree) {
		this.hdegree = hdegree;
	}

	@Column(name="Hinstitute")
	public String getHinstitute() {
		return hinstitute;
	}

	public void setHinstitute(String hinstitute) {
		this.hinstitute = hinstitute;
	}

	@Column(name="Hboard")
	public String getHboard() {
		return hboard;
	}

	public void setHboard(String hboard) {
		this.hboard = hboard;
	}

	@Column(name="Hgrade")
	public String getHgrade() {
		return hgrade;
	}

	public void setHgrade(String hgrade) {
		this.hgrade = hgrade;
	}

	@Column(name="HyearOfPass")
	public Integer getHyearOfPass() {
		return hyearOfPass;
	}

	public void setHyearOfPass(Integer hyearOfPass) {
		this.hyearOfPass = hyearOfPass;
	}

	@Column(name="HobtainedMarks")
	public Integer getHobtainedMarks() {
		return hobtainedMarks;
	}

	public void setHobtainedMarks(Integer hobtainedMarks) {
		this.hobtainedMarks = hobtainedMarks;
	}

	@Column(name="HtotalMarks")
	public Integer getHtotalMarks() {
		return htotalMarks;
	}

	public void setHtotalMarks(Integer htotalMarks) {
		this.htotalMarks = htotalMarks;
	}

	@Column(name="Percentage")
	public double getHPercentage() {
		return hpercentage;
	}

	public void setHPercentage(double hpercentage) {
		this.hpercentage = hpercentage;
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
		return "HSCDetails [hacademicId=" + hacademicId + ", hdegree=" + hdegree + ", hinstitute=" + hinstitute
				+ ", hboard=" + hboard + ", hgrade=" + hgrade + ", hyearOfPass=" + hyearOfPass + ", hobtainedMarks="
				+ hobtainedMarks + ", htotalMarks=" + htotalMarks + ", percentage=" + hpercentage + ", username="
				+ username + "]";
	}
	
	
}
