package com.niit.shoopingcart.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoopingcart.dao.ProductDAO;
import com.niit.shoopingcart.model.Product;

public class ProductDAOImpl implements ProductDAO {
	@Autowired
	SessionFactory sessionFactory;
	public static final Logger log=LoggerFactory.getLogger(ProductDAOImpl.class);
	
    public ProductDAOImpl(SessionFactory  sessionFactory) {
    this.sessionFactory=sessionFactory;
}

	@Transactional
	public boolean save(Product product) {
		try {
			log.info("product save operation start:");
			sessionFactory.getCurrentSession().saveOrUpdate(product);
			log.info("product datail saved:");
			return true;
			
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}

	
	@Transactional
	public boolean delete(int id) {
		Product ProductToDelete = new Product();
		ProductToDelete.setId(id);
		 sessionFactory.getCurrentSession().delete(ProductToDelete);
		 return true;
	}
	
		@Transactional
		public Product get(int id) {
			String hql = "from Product where id=" + id;
		
			@SuppressWarnings("rawtypes")
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			
			@SuppressWarnings({ "unchecked", "deprecation" })
			List<Product> listProduct = (List<Product>) query.list();
			
			if (listProduct != null && !listProduct.isEmpty()) {
				return listProduct.get(0);
			}
			
			return null;
		}

	
	@Transactional
	public List<Product> list() {
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<Product> listProduct = (List<Product>) sessionFactory.getCurrentSession()
				.createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listProduct;

}
}
