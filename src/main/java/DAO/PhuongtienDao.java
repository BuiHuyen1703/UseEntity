package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import model.Phuongtien;
import until.JpaUtils;

public class PhuongtienDao {
	public void insert(Phuongtien ptien) {
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			
			em.persist(ptien);
			
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
	public void update(Phuongtien ptien) {
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			
			em.merge(ptien);
			
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
			Phuongtien ptien = em.find(Phuongtien.class, id);
			
			if(ptien !=null) {
				em.remove(ptien);
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
	public Phuongtien findById(Integer id) {
		EntityManager em = JpaUtils.getEntityManager();
		
		Phuongtien ql = em.find(Phuongtien.class, id);
	
		return ql;
		
	}
	
	public List<Phuongtien> findAll() {
		EntityManager em = JpaUtils.getEntityManager();
		TypedQuery<Phuongtien> query = em.createNamedQuery("Phuongtien.findAll", Phuongtien.class);
		
		return query.getResultList();
	}
	//tim kiem theo ten
	public List<Phuongtien> findByFullname(String name) {
		EntityManager em = JpaUtils.getEntityManager();
		String jqpl= "select p from Phuongtien p where p.ten like :name";
		TypedQuery<Phuongtien> query = em.createQuery(jqpl, Phuongtien.class);
		query.setParameter("name", ""+ name +"%");
		return query.getResultList();
	}
	
	//phan trang
	public List<Phuongtien> findAll(int page, int pageSize) {
		EntityManager em = JpaUtils.getEntityManager();
		TypedQuery<Phuongtien> query = em.createNamedQuery("Quanly.findAll", Phuongtien.class);
		
		query.setFirstResult(page*pageSize);
		query.setMaxResults(pageSize);
		
		return query.getResultList();
	}
	
//	public Phuongtien checkLogin(String id, String pass) {
//		EntityManager em = JpaUtils.getEntityManager();
//		String jqpl ="select p from Phuongtien p where q.id = :id and q.pass =:pass";
//		TypedQuery<Phuongtien> query = em.createQuery(jqpl, Phuongtien.class);
//		
//		query.setParameter("id", id);
//		query.setParameter("pass", pass);
//	
//		
//		return query.getSingleResult();
//	}
	
	public int count() {
		EntityManager em = JpaUtils.getEntityManager();
		
		String jqpl ="select count(q) from Quanly q";
		
		javax.persistence.Query query = em.createQuery(jqpl);
		
		return ((Long)query.getSingleResult()).intValue();
		
	}
}
