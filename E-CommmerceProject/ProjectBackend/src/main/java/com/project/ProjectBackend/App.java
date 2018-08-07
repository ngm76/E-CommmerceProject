package com.project.ProjectBackend;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.project.configuration.DBConfiguration;
import com.project.dao.ProductDao;
import com.project.dao.ProductDaoImpl;
import com.project.models.Product;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        ApplicationContext context = new AnnotationConfigApplicationContext(DBConfiguration.class,ProductDaoImpl.class);
        ProductDao productDao = (ProductDao)context.getBean("productDaoImpl");
        
        /*
        Product product=new Product(); //New Product
        product.setProductname("Introduction to Spring framework"); //inserted in the column productname
        product.setProductdesc("2nd Edition"); //column productdesc
        product.setPrice(1000); //column price
        product.setQuantity(10); //column quantity
        
        productDao.saveProduct(product);
        */
        
        List<Product> products = productDao.getAllProducts();
        for(Product p : products) {
        	System.out.println(p);
        }
    }
}
