package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import model.Quanly;
import until.JpaUtils;

public class QuanlyDao {
	public void insert(Quanly quanly) {
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			
			em.persist(quanly);
			
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		}finally {
			em.close();
		}
	}
	//sua
	public void update(Quanly quanly) {
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			
			em.merge(quanly);
			
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		}finally {
			em.close();
		}
	}
	
	//xoa
	public void delete(Integer id) throws Exception {
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			Quanly ql = em.find(Quanly.class, id);
			
			if(ql !=null) {
				em.remove(ql);
			}else {
				throw new Exception("User can not found");
				
			}
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		}finally {
			em.close();
		}
	}
	
	//tim kiem
	public Quanly findById(Integer id) {
		EntityManager em = JpaUtils.getEntityManager();
		
		Quanly ql = em.find(Quanly.class, id);
		
		return ql;
		
	}
	
	public List<Quanly> findAll() {
		EntityManager em = JpaUtils.getEntityManager();
		TypedQuery<Quanly> query = em.createNamedQuery("Quanly.findAll", Quanly.class);
		
		return query.getResultList();
	}
	//tim kiem theo ten
	public List<Quanly> findByFullname(String name) {
		EntityManager em = JpaUtils.getEntityManager();
		String jqpl= "select q from Quanly p where u.name like :name";
		TypedQuery<Quanly> query = em.createQuery(jqpl, Quanly.class);
		query.setParameter("name", ""+ name +"%");
		return query.getResultList();
	}
	
	//phan trang
	public List<Quanly> findAll(int page, int pageSize) {
		EntityManager em = JpaUtils.getEntityManager();
		TypedQuery<Quanly> query = em.createNamedQuery("Quanly.findAll", Quanly.class);
		
		query.setFirstResult(page*pageSize);
		query.setMaxResults(pageSize);
		
		return query.getResultList();
	}
	
	public Quanly checkLogin(String id, String pass) {
		EntityManager em = JpaUtils.getEntityManager();
		String jqpl ="select q from Quanly q where q.id = :id and q.pass =:pass";
		TypedQuery<Quanly> query = em.createQuery(jqpl, Quanly.class);
		
		query.setParameter("id", id);
		query.setParameter("pass", pass);
	
		
		return query.getSingleResult();
	}
	
	public int count() {
		EntityManager em = JpaUtils.getEntityManager();
		
		String jqpl ="select count(q) from Quanly q";
		
		javax.persistence.Query query = em.createQuery(jqpl);
		
		return ((Long)query.getSingleResult()).intValue();
		
	}
}
