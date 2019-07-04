package org.sunbeam.dao;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.sunbeam.pojo.AcademicDetails;
import org.sunbeam.pojo.AddressPojo;
import org.sunbeam.pojo.GraduationPojo;
import org.sunbeam.pojo.HSCDetails;
import org.sunbeam.pojo.PersonalDetailPojo;
import org.sunbeam.pojo.ProjectPojo;
import org.sunbeam.pojo.StudentPojo;
import org.sunbeam.service.IStudentService;

@Repository
@Transactional
public class StudentDao implements IStudentDao
{

	@Autowired
	private SessionFactory sessionfactory;
	
	
	//login
	@Override
	public StudentPojo validateStudent(Integer username, String password) 
	{
		try
		{
		Query<StudentPojo> query = this.sessionfactory.getCurrentSession().createQuery("select s from StudentPojo s where s.username=:Username and s.password=:Password", StudentPojo.class);
		query.setParameter("Username", username);
		query.setParameter("Password", password);
		return query.getSingleResult();
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
		}
		return null;
	}

	//insert personal details
	@Override
	public Integer personalDetails(PersonalDetailPojo detail) 
	{
	    	System.out.println("details : "+detail.toString());
		return (Integer) this.sessionfactory.getCurrentSession().save(detail);
	}
	
	
	//show personal details
			@Override
			public PersonalDetailPojo showPersonalDetails(Integer username) {
				
				try
				{
				Query<PersonalDetailPojo> query = this.sessionfactory.getCurrentSession().createQuery("select p from PersonalDetailPojo p where p.username=:Username" , PersonalDetailPojo.class);
				query.setParameter("Username", username);
				
				return query.getSingleResult();
				}
				catch(HibernateException e)
				{
					e.printStackTrace();
				}
				return null;
			}

	//insert address
	@Override
	public Integer addressDetails(AddressPojo address) {
		
		return (Integer) this.sessionfactory.getCurrentSession().save(address);
	}
	
	

	//show address
	@Override
	public AddressPojo showAddressDetails(Integer username) {
		try
		{
		Query<AddressPojo> query = this.sessionfactory.getCurrentSession().createQuery("select a from AddressPojo a where a.username=:Username ", AddressPojo.class);
		query.setParameter("Username", username);
		
		return query.getSingleResult();
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
		}
		return null;
	}

	//insert 10th
	@Override
	public Integer insertAcademicDetails(AcademicDetails academic) {
		
		return (Integer) this.sessionfactory.getCurrentSession().save(academic);
	}
	
	//show 10th
			public AcademicDetails showAcademicDetails(Integer username)
			{
				try
				{
				Query<AcademicDetails> query = this.sessionfactory.getCurrentSession().createQuery("select a from AcademicDetails a where a.username=:Username  ", AcademicDetails.class);
				query.setParameter("Username", username);
				
				return query.getSingleResult();
				}
				catch(HibernateException e)
				{
					e.printStackTrace();
				}
				return null;
			}

	//insert project
		@Override
	public Integer insertProjectDetails(ProjectPojo project) {
		
		return (Integer) this.sessionfactory.getCurrentSession().save(project);
	}

		//show project
		public ProjectPojo showProjectDetails(Integer username) {
			try
			{
			Query<ProjectPojo> query = this.sessionfactory.getCurrentSession().createQuery("select p from ProjectPojo p where p.username=:Username  ", ProjectPojo.class);
			query.setParameter("Username", username);
			
			return query.getSingleResult();
			}
			catch(HibernateException e)
			{
				e.printStackTrace();
			}
			return null;
		}
		

		//insert 12th
		@Override
		public Integer insertHSCDetails(HSCDetails hsc) {
			
			return (Integer) this.sessionfactory.getCurrentSession().save(hsc);
		}

		
		//show hsc
		public HSCDetails showHSCDetails(Integer username)
		{
			try
			{
			Query<HSCDetails> query = this.sessionfactory.getCurrentSession().createQuery("select h from HSCDetails h where h.username=:Username  ", HSCDetails.class);
			query.setParameter("Username", username);
			
			return query.getSingleResult();
			}
			catch(HibernateException e)
			{
				e.printStackTrace();
			}
			return null;
		}
		
		//insert graduation
		public Integer insertGraduationDetails(GraduationPojo graduation) {
			
			return (Integer) this.sessionfactory.getCurrentSession().save(graduation);
		}
		
		
		//show graduation
		public GraduationPojo showGraduationDetails(Integer username)
		{
			try
			{
			Query<GraduationPojo> query = this.sessionfactory.getCurrentSession().createQuery("select g from GraduationPojo g where g.username=:Username  ", GraduationPojo.class);
			query.setParameter("Username", username);
			
			return query.getSingleResult();
			}
			catch(HibernateException e)
			{
				e.printStackTrace();
			}
			return null;
		}

		@Override
		public Integer changePassword(StudentPojo student) {
			NativeQuery<StudentPojo> query = sessionfactory.getCurrentSession().getNamedNativeQuery("qry_updatePassword");
			query.setParameter("password", student.getPassword());
			query.setParameter("regId", student.getUsername());
			return query.executeUpdate();
		}
		
		

}
