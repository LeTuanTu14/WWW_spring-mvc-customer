package iuh.se.springmvc;

import java.util.List;

public class ListCustomer {
	
	private List<Customer> listCustomers;

	public List<Customer> getListCustomers() {
		return listCustomers;
	}

	public void setListCustomers(List<Customer> listCustomers) {
		this.listCustomers = listCustomers;
	}
	
	public void addCustomer(Customer theCustomer) {
		listCustomers.add(theCustomer);
	}

}
