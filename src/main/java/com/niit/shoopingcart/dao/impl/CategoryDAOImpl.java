package com.niit.shoopingcart.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoopingcart.dao.CategoryDAO;
import com.niit.shoopingcart.model.Category;

public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	SessionFactory sessionFactory;
	
    public CategoryDAOImpl(SessionFactory  sessionFactory) {
    this.sessionFactory=sessionFactory;
}

	@Transactional
	public boolean save(Category category) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(category);
			return true;
			
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
@Transactional
	public boolean delete(int cid) {
		Category categoryToDelete = new Category();
		categoryToDelete.setCid(cid);
		 sessionFactory.getCurrentSession().delete(categoryToDelete);
		 return true;
	}
	
		@Transactional
		public Category get(int cid) {
			String hql = "from Category where cid=" + cid;
		
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
