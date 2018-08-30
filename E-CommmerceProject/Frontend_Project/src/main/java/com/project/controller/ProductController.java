package com.project.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.project.models.Product;
import com.project.dao.CategoryDao;
import com.project.dao.ProductDao;

@Controller
public class ProductController {
	@Autowired
	private ProductDao productDao;
	@Autowired
	private CategoryDao categoryDao;

	public ProductController() {
		System.out.println("Product Controller initialized");
	}

	@RequestMapping(value = "/deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id) {
		Product p = productDao.getProduct(id);
		productDao.deleteProduct(p);
		return "redirect:/getallproducts";
	}

	@RequestMapping(value = "/getproduct/{id}")
	public String getProduct(@PathVariable int id, Model model) {
		Product p = productDao.getProduct(id);
		model.addAttribute("productobj", p);
		return "viewproduct";
	}

	@RequestMapping(value = "/getallproducts")
	public String getAllProducts(Model model) {
		List<Product> products = productDao.getAllProducts();
		for (Product p : products) {
			System.out.println(p);
		}
		model.addAttribute("productslist", products);
		return "listofproducts";// logical view name
		// in listofproducts.jsp,access the model attribute "productsList"

	}

	@RequestMapping(value = "/getproductform")
	public String getProductForm(Model model) {
		System.out.println("inside getProductForm");
		Product p = new Product();
		model.addAttribute("product", p);
		model.addAttribute("categories", categoryDao.getAllCategories());
		return "productform";
	}

	@RequestMapping(value = "/addproduct")
	public String addProduct(@Valid@ModelAttribute("product") Product product, BindingResult result,
			Model model, HttpServletRequest request) {
		System.out.println("inside addProduct");

		if (result.hasErrors()) {
			model.addAttribute("categories", categoryDao.getAllCategories());
			return "productform";
		}
		productDao.saveProduct(product);

		MultipartFile img = product.getImage();
		System.out.println(request.getServletContext().getRealPath("/"));
		// Defining a path
		Path path = Paths
				.get(request.getServletContext().getRealPath("/") + "/resources/img/" + product.getId() + ".png");
		// transfer the image to the file

		if (!img.isEmpty() && img != null) {
			try {
				img.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (NullPointerException e) {

			}
		}

		// productDao.saveProduct(product);

		return "redirect:/getallproducts";
	}

	@RequestMapping(value = "/editproduct/{id}")
	public String editProduct(@PathVariable int id, Model model) {
		Product product = productDao.getProduct(id);
		model.addAttribute("product", product);
		model.addAttribute("categories", categoryDao.getAllCategories());
		productDao.updateProduct(product);
		return "editproduct";
	}

	@RequestMapping(value = "/updateproduct")
	public String updateProduct(@Valid @ModelAttribute(name = "product") Product product, BindingResult result,
			Model model) {
		if (result.hasErrors()) {
			model.addAttribute("categories", categoryDao.getAllCategories());
			return "updateproductform";
		}
		productDao.updateProduct(product);
		return "redirect:/getallproducts";
	}
}
