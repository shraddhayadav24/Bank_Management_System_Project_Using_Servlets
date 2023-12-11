package com.jsp.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.jsp.dto.BankManager;
import com.jsp.dto.Customer;

public class CustomerDao {
	
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Shardul");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();
	
	public Customer saveCustomer(Customer customer) {
		entityTransaction.begin();
		entityManager.persist(customer);
		entityTransaction.commit();
		return customer;
	}

//	delete

	public boolean deleteCustomerById(int c_id) {
		Customer customer = entityManager.find(Customer.class, c_id);
		if (customer != null) {
			entityTransaction.begin();
			entityManager.remove(customer);
			entityTransaction.commit();
			return true;
		}
		return false;
	}

//	update

	public boolean updateCustomerByIdEmail(int c_id, String c_email) {
		Customer customer = entityManager.find(Customer.class, c_email);
		entityTransaction.begin();
		entityManager.merge(customer);
		entityTransaction.commit();
		return true;
	}
	
	public Customer depositMoneyById(Customer customer) {
		entityTransaction.begin();
		entityManager.merge(customer);
		entityTransaction.commit();
		return customer;
	}
	public Customer withdrawMoneyById(Customer customer) {
		entityTransaction.begin();
		entityManager.merge(customer);
		entityTransaction.commit();
		return customer;
	}
	
	public boolean transferMoneyById(Customer customer1,Customer customer2) {
		entityTransaction.begin();
		entityManager.merge(customer1);
		entityManager.merge(customer2);
		entityTransaction.commit();
		return true;
	}
	
	
	//get all
	public List<Customer> getAllCustomer(){
		String sql ="SELECT e from Customer e";
		Query query=entityManager.createQuery(sql);
		List<Customer> customers=query.getResultList();
		return customers;
	}

	public Customer getCustomerById(int c_id) {
		Customer customer= entityManager.find(Customer.class, c_id);
		entityTransaction.begin();
		entityManager.persist(customer);
		entityTransaction.commit();
		return customer;
		
	}	
	
	public boolean updateCustomerNameMono(String c_name, long c_mono) {
		Customer customer = entityManager.find(Customer.class, c_name);
		entityTransaction.begin();
		entityManager.merge(c_name);
		entityManager.merge(c_mono);
		entityTransaction.commit();
		return true;
		
	}
//approve customer
	public boolean approveCustomerById(int b_id, int c_id) {
		Customer customer=entityManager.find(Customer.class, c_id);
		entityTransaction.begin();
		entityManager.merge(customer);
		entityTransaction.commit();
		return true;
	}
	public boolean approveCustomer(int c_id, int m_id) {
		Customer customer = entityManager.find(Customer.class, c_id);
		entityTransaction.begin();
		entityManager.merge(customer);
		entityTransaction.commit();
		return true;
	}

}