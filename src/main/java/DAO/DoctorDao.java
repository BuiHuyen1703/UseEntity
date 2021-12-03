package DAO;

import java.util.List;


import model.Doctor;

import until.JpaUtils;

import javax.persistence.EntityManager;
//import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
//import Entity.JPA;
public class DoctorDao {
	
//	public List<Doctor> findAll() {
//		EntityManager em= JPA.getEntityManager();;
//		
//		String sql ="SELECT u FROM doctor u ";
//		
//		TypedQuery<Doctor> query = em.createQuery(sql, Doctor.class);
//		
//		
//		return query.getResultList();
//	}
	public List<Doctor> findAll() {
		EntityManager em = JpaUtils.getEntityManager();
		TypedQuery<Doctor> query = em.createNamedQuery("Doctor.findAll", Doctor.class);
		
		return query.getResultList();
	}
	
	public List<Doctor> find(int a , int b) {
		EntityManager em= JpaUtils.getEntityManager();
		
		String sql ="SELECT u FROM Doctor u where u.age>= :a and u.age <= :b";
		
		TypedQuery<Doctor> query = em.createQuery(sql, Doctor.class);
		
		query.setParameter("a", a);
		query.setParameter("b", b);
		
		return query.getResultList();
	}

	
}
