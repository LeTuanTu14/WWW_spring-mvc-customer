package iuh.se.springmvc;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("customer")
public class CustomerController {
	
	private static List<Customer> listCustomers= new ArrayList<Customer>();
//	private static ListCustomer listCustomers;
	
	@RequestMapping("/")
	public String getListCustomer(Model model) {
		model.addAttribute("listCustomer",listCustomers);
		return "listCustomers";
	}
	
	@RequestMapping("showFormCustomer")
	public String formCustomer(Model model) {
		Customer theCustomer= new Customer();
		
		model.addAttribute("customer", theCustomer);
		
		return "form-customer";
	}
	
	@RequestMapping("addCustomer")
	public String formCustomer(@ModelAttribute("customer") Customer theCustomer) {
		listCustomers.add(theCustomer);
		
		return "redirect:/";
	}

}
