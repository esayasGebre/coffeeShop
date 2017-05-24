package edu.mum.coffee.cotroller.web;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PersonController {
	
	@RequestMapping("/newperson")
	public String newPerson(){
		return "newPerson";
	}

}
