package com.jsp.service;

import java.util.List;
import com.jsp.Dao.CustomerDao;
import com.jsp.dto.Customer;

public class CustomerService {
	Customer customer = new Customer();
	CustomerDao customerDao = new CustomerDao();

	public boolean validateCustomer(int c_id, String c_username, String c_password) {
		Customer customer = customerDao.getCustomerById(c_id);
		if (customer.getC_username().equals(c_username) && customer.getC_password().equals(c_password)) {
			return true;
		} else {
			return false;
		}
	}

//save
	public Customer saveCustomer(Customer customer) {
//		if (customer.getC_name() != null && customer.getC_email() != null && customer.getC_address() != null
//				&& customer.getC_mobno() > 0 && customer.getC_password() != null && customer.getC_username() != null) {
//			return customerDao.saveCustomer(customer);
//		}
//		return null;
		customer.setAccount_balance(0);
		customer.setC_status("UnApproved");
		return customerDao.saveCustomer(customer);
	}

//update 
	public boolean deleteCustomerById(int c_id) {
		return customerDao.deleteCustomerById(c_id);
	}

	public boolean updateCustomerByIdEmail(int c_id, String c_email) {
		Customer customer = customerDao.getCustomerById(c_id);
		customer.setC_email(c_email);
		return customerDao.updateCustomerByIdEmail(c_id, c_email);
	}

	public Customer depositMoneyById(int c_id, int account_balance) {
		Customer customer = customerDao.getCustomerById(c_id);
		int new_account_balance = customer.getAccount_balance() + account_balance;
		customer.setAccount_balance(new_account_balance);
		return customerDao.depositMoneyById(customer);

	}

	public Customer withdrawMoneyById(int c_id, String username, String password, int account_balance) {
		Customer customer = customerDao.getCustomerById(c_id);
		if (customer.getC_username().equals(username) && customer.getC_password().equals(password)) {
			int new_account_balance = customer.getAccount_balance() - account_balance;
			customer.setAccount_balance(new_account_balance);
			return customerDao.withdrawMoneyById(customer);
		}
		return null;
	}

	public boolean transferMoneyById(int login_c_id, int recipientId, String username, String password, int amount_transfer) {
		Customer customer1 = customerDao.getCustomerById(login_c_id);
		Customer customer2 = customerDao.getCustomerById(recipientId);
		if (customer1.getC_username().equals(username) && customer1.getC_password().equals(password)) {
			int cust1_account_balance = customer1.getAccount_balance() - amount_transfer;
			int cust2_account_balance = customer2.getAccount_balance() + amount_transfer;
			customer1.setAccount_balance(cust1_account_balance);
			customer2.setAccount_balance(cust2_account_balance);
			return customerDao.transferMoneyById(customer1, customer2);
		}
		return false;

	}

	// get all
	public List<Customer> getAll() {
		return customerDao.getAllCustomer();
	}

	public Customer getCustomerById(int c_id) {
		return customerDao.getCustomerById(c_id);
	}

	public boolean updateCustomerNameMono(String c_name, long c_mono) {
		customer.setC_name(c_name);
		customer.setC_mobno(c_mono);
		return customerDao.updateCustomerNameMono(c_name, c_mono);
	}

}
