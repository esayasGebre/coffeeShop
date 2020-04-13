package edu.mum.coffee.controller.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.ProductService;

@RestController
@RequestMapping("/pro")
public class ProductRestController {

	@Autowired
	ProductService productService;

	/**
	 * getOrders
	 * 
	 * @param minPrice
	 * @param maxPrice
	 * @return
	 */
	@RequestMapping("/products/{minPrice}/{maxPrice}")
	public List<Product> getOrders(@PathVariable int minPrice, @PathVariable int maxPrice) {

		return productService.findByPrice(minPrice, maxPrice);
	}

	/**
	 * testSave
	 * 
	 * @param product
	 */
	@RequestMapping(value = "/test/add", method = RequestMethod.POST)
	public void testSave(@RequestBody Product product) {
		productService.save(product);
	}

	/**
	 * getAllProducts
	 * 
	 * @return
	 */
	@RequestMapping("/products")
	public List<Product> getAllProducts() {
		return productService.findAll();
	}
}
