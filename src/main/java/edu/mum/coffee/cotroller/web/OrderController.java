package edu.mum.coffee.cotroller.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.mum.coffee.domain.Order;
import edu.mum.coffee.domain.Orderline;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.OrderService;
import edu.mum.coffee.service.PersonService;
import edu.mum.coffee.service.ProductService;

@Controller
@SessionAttributes(value = { "orderedProducts", "orderDetail", "currentPerson", "currentId" })
public class OrderController {

	@Autowired
	private OrderService orderService;
	@Autowired
	private ProductService productService;
	@Autowired
	private PersonService personService;

	/**
	 * get: orderview
	 * @return
	 */
	@RequestMapping(value = "/orderview", method = RequestMethod.GET)
	public String get() {
		return "orderDetail";
	}

	/**
	 * add: product to the cart
	 * 
	 * @param id
	 * @param quantity
	 * @param m
	 * @return
	 */
	@RequestMapping(value = "/products/productcart", method = RequestMethod.POST)
	public String add(@RequestParam("id") int id, @RequestParam("quantity") int quantity, ModelMap m) {

		Product product = productService.getProduct(id);
		Person person = (Person) m.get("currentPerson");

		Order order = new Order();
		Orderline orderline = new Orderline();
		orderline.setQuantity(quantity);
		orderline.setProduct(product);
		orderline.setOrder(order);

		order.setOrderDate(new Date());
		order.setPerson(person);
		order.addOrderLine(orderline);

		m.addAttribute("orderDetail", order);

		if (!m.containsAttribute("orderedProducts")) {
			System.out.println("No orderedProducts Yet");
			m.addAttribute("orderedProducts", new ArrayList<Product>());
			m.addAttribute("currentId", 0);
		} else {
			System.out.println("Products Exists, currentId:" + m.get("currentId"));
		}
		
		@SuppressWarnings("unchecked")
		List<Orderline> oLists = (List<Orderline>) m.get("orderedProducts");
		oLists.add(orderline);
		Integer currentId = (Integer) m.get("currentId");
		m.put("currentId", currentId + 1);

		for (Orderline oline : oLists) {
			System.out.println(oline.getProduct().getId());
			System.out.println(oline.getProduct().getProductName());
			System.out.println(oline.getProduct().getPrice());
			System.out.println(oline.getPrice());
			System.out.println(oline.getQuantity());
			System.out.println(oline.getSubtotal());
		}

		return "redirect:/products";
	}

	/**
	 * get: order
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "order", method = RequestMethod.GET)
	public String get(Model model) {
		// model.addAttribute("product", products.getProduct(id));
		return "order";
	}

	/**
	 * success
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/success")
	public String success(ModelMap model) {
		Order order = (Order) model.get("orderDetail");
		System.out.println("Goodbye...........!");
		Person person = (Person) model.get("currentPerson");
		personService.savePerson(person);
		orderService.save(order);
		return "successOrder";
	}

	/**
	 * getAllOrders
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/listoforders")
	public String getAllOrders(Model model) {
		model.addAttribute("orders", orderService.findAll());
		return "orders";
	}
	
	/*	@RequestMapping(value="/adminlog", method=RequestMethod.POST)
	public String log(@RequestParam("username") String uname, 
	@RequestParam("password") String pw, Model model){
		if(uname.equals("admin") && pw.equals("123") ){
			return "secure";
		}
		//message
		return "adminLogin";
	}*/
	
/*	@RequestMapping(value="/adminlog")
	public String log(){
		return "adminLogin";
	}*/

}
