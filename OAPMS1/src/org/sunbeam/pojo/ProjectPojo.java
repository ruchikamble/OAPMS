package org.sunbeam.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ProjectDetails")
public class ProjectPojo 
{
	private Integer projectId;
	private String qualification;
	private String projectTitle;
	private String platform;
	private Integer duration;
	private String description;
	private Integer username;
	
	public ProjectPojo() {
		}

	public ProjectPojo(Integer projectId, String qualification, String projectTitle, String platform, Integer duration,
			String description, Integer username) {
		super();
		this.projectId = projectId;
		this.qualification = qualification;
		this.projectTitle = projectTitle;
		this.platform = platform;
		this.duration = duration;
		this.description = description;
		this.username = username;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ProjectId")
	public Integer getProjectId() {
		return projectId;
	}

	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}

	@Column(name="Qualification")
	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	@Column(name="ProjectTitle")
	public String getProjectTitle() {
		return projectTitle;
	}

	public void setProjectTitle(String projectTitle) {
		this.projectTitle = projectTitle;
	}

	@Column(name="Platform")
	public String getPlatform() {
		return platform;
	}

	public void setPlatform(String platform) {
		this.platform = platform;
	}

	@Column(name="Duration")
	public Integer getDuration() {
		return duration;
	}

	public void setDuration(Integer duration) {
		this.duration = duration;
	}

	@Column(name="ProjectDescription")
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name="Username")
	public Integer getUsername() {
		return username;
	}

	public void setUsername(Integer username) {
		this.username = username;
	}
	
	
}
