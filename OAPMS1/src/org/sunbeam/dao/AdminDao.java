package org.sunbeam.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.sunbeam.pojo.AdminPojo;
import org.sunbeam.pojo.CompanyDetails;
import org.sunbeam.pojo.StudentList;
import org.sunbeam.pojo.StudentPojo;

@Repository
@Transactional
public class AdminDao implements IAdminDao
{
	@Autowired
     private SessionFactory sessionfactory;
	
	@Override
	public AdminPojo ValidateAdmin(Integer username, String password) 
	{
		try
		{
		Query<AdminPojo> query = sessionfactory.getCurrentSession().createQuery("select a from AdminPojo a where a.username=:Username and a.password=:Password", AdminPojo.class);
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

	@Override
	public Integer StudentRegistration(StudentPojo student) {
		
		return (Integer) this.sessionfactory.getCurrentSession().save(student);
	}
	
public Integer CompanyRegistration(CompanyDetails company) {
		
		return (Integer) this.sessionfactory.getCurrentSession().save(company);
	}

@Override
public Integer studentList(StudentList list) {
	
	return (Integer) this.sessionfactory.getCurrentSession().save(list);
}

@Override
public List<CompanyDetails> showcompanyList() {
	Query<CompanyDetails> query = sessionfactory.getCurrentSession().createQuery("select c from CompanyDetails c", CompanyDetails.class);
	return query.getResultList();
	
}

@Override
public List<StudentList> showStudentList() {
	Query<StudentList> query = sessionfactory.getCurrentSession().createQuery("select s from StudentList s", StudentList.class);
	return query.getResultList();
}

@Override
public List<StudentList> shortlistedStudents(CompanyDetails company) {
	Query<StudentList> query = sessionfactory.getCurrentSession().createQuery("select s from StudentList s where s.tenthper >= :ssc and s.twlper >= :hsc and s.agg >= :graduation ", StudentList.class);
	query.setParameter("ssc", company.getSsc());
	query.setParameter("hsc", company.getHsc());
	query.setParameter("graduation", company.getGraduation());
	return query.getResultList();
}



}
