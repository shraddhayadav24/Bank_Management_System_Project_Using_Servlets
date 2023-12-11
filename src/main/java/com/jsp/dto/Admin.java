package com.jsp.dto;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Admin {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private int a_id;
	private String admin_name;
	private String a_password;

	@OneToMany(mappedBy = "admin")
	private List<BankManager> bankManagers;

	public int getA_id() {
		return a_id;
	}

	public void setA_id(int a_id) {
		this.a_id = a_id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getA_password() {
		return a_password;
	}

	public void setA_password(String a_password) {
		this.a_password = a_password;
	}

	public List<BankManager> getBankManagers() {
		return bankManagers;
	}

	public void setBankManagers(List<BankManager> bankManagers) {
		this.bankManagers = bankManagers;
	}

}
