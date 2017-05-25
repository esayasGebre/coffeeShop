package edu.mum.coffee.cotroller.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.mum.coffee.domain.Address;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.PersonService;

@Controller
@SessionAttributes(value = { "currentPerson" })
public class PersonController {

	@Autowired
	private PersonService personService;
	
	@RequestMapping("/newperson")
	public String newPerson() {
		return "newPerson";
	}

	@RequestMapping(value = "addperson", method = RequestMethod.POST)
	public String add(Person person, Address address, ModelMap model) {
		
		//System.out.println("current person detail" + person.getId());

		person.setAddress(address);
		if (!model.containsAttribute("currentPerson")) {
			System.out.println("A person is not exist before.....");
			model.addAttribute("currentPerson", person);
		} else {
			Person prs = (Person) model.get("currentPerson");
			System.out.println("A persone is already our coustomer, name:" + prs.getFirstName());
		}

		//return "orderDetail";
		return "redirect:/products";
	}
	
/*	@RequestMapping("/save")
	public void save(ModelMap model) {
		Person prs = (Person) model.get("currentPerson");
		personService.savePerson(prs);

	}*/
	
	@RequestMapping("/listpersons")
	public String getPersons(Model model) {
		model.addAttribute("persons", personService.getAllpersons());
		
		return "persons";
	}
	

	

}
