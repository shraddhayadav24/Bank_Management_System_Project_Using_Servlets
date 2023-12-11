package com.jsp.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.jsp.dto.BankManager;

public class BankManagerDao {

	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Shardul");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();
//save
	public BankManager saveBankManager(BankManager bankManager) {
		entityTransaction.begin();
		entityManager.persist(bankManager);
		entityTransaction.commit();
		return bankManager;
	}

//	delete

	public boolean deleteBankManagerById(int b_id) {
		BankManager bankManager = entityManager.find(BankManager.class, b_id);
		if (bankManager != null) {
			entityTransaction.begin();
			entityManager.remove(bankManager);
			entityTransaction.commit();
			return true;
		}
		return false;
	}

//	update 

	public BankManager updateBankManagerByIdEmail(BankManager bankManager) {
		entityTransaction.begin();
		entityManager.merge(bankManager);
		entityTransaction.commit();
		return bankManager;
	}
	public BankManager updateBankManagerByIdUsernamePassword(BankManager bankManager){
		entityTransaction.begin();
		entityManager.merge(bankManager);
		entityTransaction.commit();
		return bankManager;
	}

//get all	
	public List<BankManager> getAllBankManager() {
		String sql = "SELECT e from BankManager e";
		Query query = entityManager.createQuery(sql);
		List<BankManager> bankManagers = query.getResultList();
		return bankManagers;
	}

//get by id
	public BankManager getBankManagerById(int b_id) {
		return entityManager.find(BankManager.class, b_id);
	}

	//approve manager
	public boolean approval(int a_id, int m_id) {
		BankManager bankManager = entityManager.find(BankManager.class, m_id);
		entityTransaction.begin();
		entityManager.merge(bankManager);
		entityTransaction.commit();
		return true;
	}

}
