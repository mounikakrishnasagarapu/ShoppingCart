package com.niit.shoppingcart.config;
import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.daoimpl.CartDAOImpl;
import com.niit.shoppingcart.daoimpl.CategoryDAOImpl;
import com.niit.shoppingcart.daoimpl.CheckoutDAOImpl;
import com.niit.shoppingcart.daoimpl.ProductDAOImpl;
import com.niit.shoppingcart.daoimpl.SupplierDAOImpl;
import com.niit.shoppingcart.daoimpl.UserDAOImpl;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Checkout;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.model.User;



@Configuration
@ComponentScan("com.niit.Shoppingcart")
@EnableTransactionManagement
public class Applicationcontextconfig {

		
		
		@Bean(name = "dataSource")
		public DataSource getDataSource() {
			DriverManagerDataSource dataSource = new DriverManagerDataSource();
			dataSource.setDriverClassName("org.h2.Driver");
			dataSource.setUrl("jdbc:h2:tcp://localhost/~/Mouni");
			dataSource.setUsername("sa");
		
			System.out.println("Datasource");
			return dataSource;

		}

		private Properties getHibernateProperties() {
			Properties properties = new Properties();
			properties.put("hibernate.show_sql", "true");
			properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
			properties.put("hibernate.hbm2ddl.auto", "update");
			System.out.println("Hibernate Properties");
			return properties;

		}

		@Autowired
		@Bean(name = "sessionFactory")
		public SessionFactory getSessionFactory(DataSource dataSource) {
			LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
			sessionBuilder.addProperties(getHibernateProperties());
			sessionBuilder.addAnnotatedClasses(Supplier.class);
			sessionBuilder.addAnnotatedClasses(Category.class);
			sessionBuilder.addAnnotatedClasses(Product.class);
			sessionBuilder.addAnnotatedClasses(User.class);
			sessionBuilder.addAnnotatedClasses(Cart.class);
			sessionBuilder.addAnnotatedClasses(Checkout.class);
	
		
			System.out.println("Session");
			
			return sessionBuilder.buildSessionFactory();
			
		}

		@Autowired
		@Bean(name = "transactionManager")
		public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
			HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
			System.out.println("Transaction");
			return transactionManager;
		}
	
				
		
		
		@Autowired
		@Bean(name = "supplierDAO")
		public SupplierDAO getSupplierDao(SessionFactory sessionFactory) {
				return new SupplierDAOImpl(sessionFactory);
		}
	
		@Autowired
		@Bean(name = "categoryDAO")
		public CategoryDAO getCategoryDao(SessionFactory sessionFactory){
			return  new CategoryDAOImpl(sessionFactory);
		}
		@Autowired
		@Bean(name = "productDAO")
		public ProductDAO getProductDao(SessionFactory sessionFactory){
			return  new ProductDAOImpl(sessionFactory);	
				}
		@Autowired
		@Bean(name = "UserDAO")
		public UserDAO getUserDao(SessionFactory sessionFactory){
			return  new UserDAOImpl(sessionFactory);	
}
		@Autowired
		@Bean(name = "cartDAO")
		public CartDAO getCartDAO(SessionFactory sessionFactory) {
				return new CartDAOImpl(sessionFactory);
		}

@Autowired
@Bean(name = "checkoutDAO")
public CheckoutDAOImpl getCheckoutDAO(SessionFactory sessionFactory) {
		return new CheckoutDAOImpl(sessionFactory);
}
}