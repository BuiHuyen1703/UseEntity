package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import model.Book;
import model.Phuongtien;
import until.JpaUtils;

public class BookDao {
	
	public void delete(Integer id) throws Exception {
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			Book ptien = em.find(Book.class, id);
			
			if(ptien !=null) {
				em.remove(ptien);
			}else {
				throw new Exception("Book can not found");
				
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
	
	public List<Book> findAll() {
		EntityManager em = JpaUtils.getEntityManager();
		TypedQuery<Book> query = em.createNamedQuery("Book.findAll", Book.class);
		
		return query.getResultList();
	}
}
