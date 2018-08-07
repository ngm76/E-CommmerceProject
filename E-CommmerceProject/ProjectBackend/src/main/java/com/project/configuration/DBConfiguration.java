package com.project.configuration;

import java.util.Properties;
import com.project.models.Product;
import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import javax.sql.DataSource;


@Configuration
@EnableTransactionManagement
public class DBConfiguration {

	//to create beans
	
	@Bean
	public DataSource getDataSource() {
		System.out.println("In DataSource bean creation method");
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/project");
		dataSource.setUsername("neha");
		dataSource.setPassword("neha");
		System.out.println("DataSource Bean "+dataSource);
				
		return dataSource;
		//
	}
	
	@Bean
	public SessionFactory sessionFactory() {
		System.out.println("In SessionFactory creation method");
		LocalSessionFactoryBuilder lsf = new LocalSessionFactoryBuilder(getDataSource());
		Properties hibernateProperties = new Properties();
		hibernateProperties.setProperty("hibernate.dialect","org.hibernate.dialect.H2Dialect");
		hibernateProperties.setProperty("hibernate.show_sql","true");
		lsf.addProperties(hibernateProperties);
		
		//An array of class objects of all the entities 
		//Map all the entities to relational table
		
		Class classes[] = new Class[] {Product.class};
		System.out.println("SessionFactory Bean "+lsf);
		
		return lsf.addAnnotatedClasses(classes).buildSessionFactory();
	}
	
	@Bean
	public HibernateTransactionManager hibTransManagement() {
		return new HibernateTransactionManager(sessionFactory());
	}
}
