package edu.mum.coffee.cotroller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import edu.mum.coffee.domain.Address;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.service.PersonService;

@Controller
@SessionAttributes(value = { "currentPerson" })
public class PersonController {

	@Autowired
	private PersonService personService;

	/**
	 * newPerson
	 * 
	 * @return
	 */
	@RequestMapping("/newperson")
	public String newPerson() {
		return "newPerson";
	}

	/**
	 * newCustomer
	 * 
	 * @return
	 */
	@RequestMapping("/customer")
	public String newCustomer() {
		return "redirect:/newperson";
	}

	/**
	 * add: person
	 * 
	 * @param person
	 * @param address
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "addperson", method = RequestMethod.POST)
	public String add(Person person, Address address, ModelMap model) {
		person.setAddress(address);
		if (!model.containsAttribute("currentPerson")) {
			System.out.println("A person is not exist before.....");
			model.addAttribute("currentPerson", person);
		} else {
			Person prs = (Person) model.get("currentPerson");
			System.out.println("A persone is already our coustomer, name:" + prs.getFirstName());
		}
		return "redirect:/products";
	}

	/**
	 * getPersons
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/listpersons")
	public String getPersons(Model model) {
		model.addAttribute("persons", personService.getAllpersons());
		return "persons";
	}

}
