package edu.mum.coffee.controller.rest;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.mum.coffee.domain.Order;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.OrderService;

@RestController
@RequestMapping("/o")
public class OrderRestController {

	@Autowired
	private OrderService orderService;

	/**
	 * 
	 * @return
	 */
	@RequestMapping("/orders")
	public List<Order> getOrders() {
		return orderService.findAll();
	}

	/**
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/orders/{id}")
	public Order getOrder(@PathVariable int id) {
		return orderService.findById(id);
	}

	/**
	 * 
	 * @param minDate
	 * @param maxDate
	 * @return
	 */
	@RequestMapping("/orders/{minPrice}/{maxPrice}")
	public List<Order> getOrder(@PathVariable Date minDate, @PathVariable Date maxDate) {
		return orderService.findByDate(minDate, maxDate);
	}

	/**
	 * 
	 * @param product
	 * @return
	 */
	@RequestMapping("/orders/byproduct")
	public List<Order> getOrder(@RequestBody Product product) {
		return orderService.findByProduct(product);
	}

}
