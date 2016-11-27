package com.niit.shoppingcart.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;



@Repository
public class SupplierDAOImpl implements SupplierDAO{
	
	@Autowired
	SessionFactory sessionFactory;
	
    public SupplierDAOImpl(SessionFactory  sessionFactory) {
    this.sessionFactory=sessionFactory;
    }
@Transactional
	public boolean save(Supplier supplier) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(supplier);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
@Transactional
	public boolean delete(int id) {
		Supplier SupplierToDelete = new Supplier();
		SupplierToDelete.setId(id);
		 sessionFactory.getCurrentSession().delete(SupplierToDelete);
		 return true;
	}
@Transactional
	public Supplier get(int id) {
		String hql = "from"+" Supplier"+" where id=" + id;
		
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<Supplier> listSupplier = (List<Supplier>) query.list();
		
		if (listSupplier != null && !listSupplier.isEmpty()) {
			return  listSupplier.get(0);
		}
		
		return null;
	}

@Transactional

	public List<Supplier> list() {
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<Supplier> listSupplier = (List<Supplier>) sessionFactory.getCurrentSession()
				.createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listSupplier;
	}
}


