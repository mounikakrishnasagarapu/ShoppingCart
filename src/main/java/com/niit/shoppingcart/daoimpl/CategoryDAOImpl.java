package com.niit.shoppingcart.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;
@Repository
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	SessionFactory sessionFactory;
	public static final Logger log = LoggerFactory.getLogger(CategoryDAOImpl.class);
    public CategoryDAOImpl(SessionFactory  sessionFactory) {
    this.sessionFactory=sessionFactory;
}

	@Transactional
	public boolean save(Category category) {
		try {
			log.info("category start:");
			sessionFactory.getCurrentSession().saveOrUpdate(category);
			log.info("category saved:");
			return true;
			
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}

	
	@Transactional
	public boolean delete(int id) {
		Category CategoryToDelete = new Category();
		CategoryToDelete.setId(id);
		 sessionFactory.getCurrentSession().delete(CategoryToDelete);
		 return true;
	}
	
		
		@Transactional
		public Category get(int id) {
			String hql = "from"+" Category"+" where id=" + id;
		
			@SuppressWarnings("rawtypes")
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			
			@SuppressWarnings({ "unchecked", "deprecation" })
			List<Category> listCategory = (List<Category>) query.list();
			
			if (listCategory != null && !listCategory.isEmpty()) {
				return listCategory.get(0);
			}
			
			return null;
		}

	
	@Transactional
	public List<Category> list() {
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<Category> listCategory = (List<Category>) sessionFactory.getCurrentSession()
				.createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listCategory;
	}




}