package edu.mum.coffee.cotroller.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
/*	@RequestMapping("*")
	public String adda() {
		return "redirect:/products";
	}*/
	
	@RequestMapping(value={"/products","/all"}, method=RequestMethod.GET)
	public String getAll(Model model) {
		model.addAttribute("products" , productService.getAllProduct());
		return "products";
	}
	
	@RequestMapping("/mgtproduct")
	public ModelAndView product(){
		
		ModelAndView model = new ModelAndView("productManagement");
		model.addObject("products" , productService.getAllProduct());
		return model;	
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(@ModelAttribute("product") Product product,
							Model model, BindingResult result) {
		if(result.hasErrors()){
			System.out.println("something is happend.............");
			return "productManagement";
		}
		System.out.println("save.............");
		productService.save(product);
		model.addAttribute("products",productService);
		return "redirect:/mgtproduct";
	}
	
	@RequestMapping(value="products/delete")
	public String deleteAproduct(@RequestParam("id") int id,
							Model model) {
		
		Product product = productService.getProduct(id);
		productService.delete(product);

		return "redirect:/mgtproduct";
	}
	
	@RequestMapping(value="/products/product", method=RequestMethod.GET)
	public String get(@RequestParam("id") int id, Model model) {
		model.addAttribute("product", productService.getProduct(id));
		return "product";
	}

/*	@RequestMapping(value="/products/{id}", method=RequestMethod.POST)
	public String update(Product product, @PathVariable int id) {
		products.save(product); // product.id already set by binding
		return "redirect:/products";
	}*/
	
}
