package edu.mum.coffee.controller.rest;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.service.PersonService;

@RestController 
@RequestMapping("/p")
public class PersonRestController {

	@Autowired
	private PersonService personService;

	@RequestMapping("/persons/{email}")
	public List<Person> getOrders(String email) {
		return personService.findByEmail(email);
	}

	@RequestMapping("/persons/{id}")
	public Person getOrder(@PathVariable Long id) {
		return personService.findById(id);
	}
	
}
